package org.campagnelab.circles.publisher.db;

/*Generated by MPS */

import jetbrains.mps.project.MPSProject;
import java.util.List;
import org.jetbrains.mps.openapi.module.SModule;

public abstract class Serializer {

  public abstract void serializeProjectWithModules(MPSProject project, List<SModule> modules);

  public abstract void dropProject(MPSProject project);
}
