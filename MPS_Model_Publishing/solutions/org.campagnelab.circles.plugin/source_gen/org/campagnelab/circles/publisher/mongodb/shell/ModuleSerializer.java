package org.campagnelab.circles.publisher.mongodb.shell;

/*Generated by MPS */

import org.campagnelab.circles.publisher.db.Serializer;
import org.campagnelab.circles.publisher.mongodb.model.MongoDbAccess;
import org.campagnelab.circles.publisher.mongodb.model.MongoDbCollection;
import jetbrains.mps.project.MPSProject;
import java.util.List;
import org.jetbrains.mps.openapi.module.SModule;
import org.campagnelab.circles.publisher.mongodb.model.ProjectDocument;
import org.campagnelab.circles.publisher.mongodb.model.ModuleDocument;
import org.jetbrains.mps.openapi.model.SModel;
import org.campagnelab.circles.publisher.mongodb.model.ModelDocument;
import org.jetbrains.mps.openapi.model.SNode;
import org.campagnelab.circles.publisher.mongodb.model.RootNodeDocument;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.campagnelab.circles.publisher.mongodb.model.NodeWriter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.campagnelab.mps.editor2pdf.behavior.EditorAnnotation__BehaviorDescriptor;
import org.bson.conversions.Bson;
import com.mongodb.client.model.Filters;
import org.campagnelab.circles.publisher.db.Connection;
import com.mongodb.client.FindIterable;
import org.bson.Document;

public class ModuleSerializer extends Serializer {
  private MongoDbAccess db;
  private MongoDbCollection projectsCol;
  private MongoDbCollection modulesCol;
  private MongoDbCollection modelsCol;
  private MongoDbCollection nodesCol;
  private boolean keepAlive = false;

  public ModuleSerializer() {
    db = new MongoDbAccess();
    projectsCol = db.getProjectsCollection();
    modulesCol = db.getModulesCollection();
    modelsCol = db.getModelsCollection();
    nodesCol = db.getNodesCollection();
  }

  public void serializeProjectWithModules(MPSProject project, List<SModule> modules) {
    this.keepAlive = true;
    this.dropProject(project);
    this.keepAlive = false;
    ProjectDocument projectDoc = new ProjectDocument(project.getName());
    for (SModule module : modules) {
      ModuleDocument moduleDoc = new ModuleDocument(module.getModuleName());
      moduleDoc.setId(module.getModuleId().toString());
      moduleDoc.setParentProject(projectDoc.getId());
      for (SModel model : module.getModels()) {
        ModelDocument modelDoc = new ModelDocument(model.getModelName());
        modelDoc.setId(model.getModelId().toString());
        modelDoc.setParentModule(moduleDoc.getId());
        for (SNode snode : model.getRootNodes()) {
          RootNodeDocument nodeDoc;
          if (snode.isInstanceOfConcept(MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept"))) {
            nodeDoc = new RootNodeDocument(SNodeAccessUtil.getProperty(snode, "name"));
          } else {
            nodeDoc = new RootNodeDocument();
          }
          nodeDoc.setId(snode.getNodeId().toString());
          nodeDoc.setModelId(modelDoc.getId());
          NodeWriter writer = new NodeWriter(nodeDoc, nodesCol);
          SNode annotation = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x93bc01ac08ca4f11L, 0x9c7d614d04055dfbL, 0x79754067868533ecL, "org.campagnelab.mps.editor2pdf.structure.EditorAnnotation")));
          EditorAnnotation__BehaviorDescriptor.renderSvg_idTE4nIlnV$W.invoke(annotation, snode, writer);
        }
        modelsCol.addDocument(modelDoc.toDoc());
        moduleDoc.addModel(modelDoc.getId());
      }
      modulesCol.addDocument(moduleDoc.toDoc());
      projectDoc.addModule(moduleDoc.getId());
    }
    projectsCol.addDocument(projectDoc.toDoc());
    // TODO: if we close the connection here, the db does not flush properly the new data 
  }

  private void close() {
    if (!(keepAlive)) {
      db.close();
    }
  }

  public void dropProject(MPSProject project) {
    Bson projectFilter = Filters.and(Filters.and(Filters.eq("name", project.getName()), Filters.eq("createdBy", Connection.username)));
    FindIterable<Document> projects = projectsCol.getCollection().find(projectFilter);
    for (Document p : projects) {
      dropModules(p.get("moduleId").toString().split(","));
    }
    projectsCol.getCollection().deleteMany(projectFilter);
    this.close();
  }

  private void dropModules(String[] modulesIds) {
    Bson moduleFilter = Filters.and(Filters.and(Filters.in("_id", modulesIds), Filters.eq("createdBy", Connection.username)));
    FindIterable<Document> modules = modulesCol.getCollection().find(moduleFilter);
    for (Document module : modules) {
      Bson modelFilter = Filters.and(Filters.and(Filters.in("_id", module.get("modelId").toString().split(",")), Filters.eq("createdBy", Connection.username)));
      FindIterable<Document> models = modelsCol.getCollection().find(modelFilter);
      for (Document model : models) {
        Bson nodeFilter = Filters.and(Filters.and(Filters.in("modelId", model.get("_id").toString()), Filters.eq("createdBy", Connection.username)));
        nodesCol.getCollection().deleteMany(nodeFilter);
      }
      modelsCol.getCollection().deleteMany(modelFilter);
    }
    modulesCol.getCollection().deleteMany(moduleFilter);
  }
}
