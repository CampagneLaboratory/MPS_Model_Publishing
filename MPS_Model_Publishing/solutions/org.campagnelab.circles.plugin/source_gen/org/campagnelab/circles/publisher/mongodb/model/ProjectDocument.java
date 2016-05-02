package org.campagnelab.circles.publisher.mongodb.model;

/*Generated by MPS */

import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

public class ProjectDocument extends BaseCirclesDocument {

  private List<String> modules;

  public ProjectDocument(String name) {
    super(name);
    modules = new ArrayList<String>();
  }

  public List<String> getModules() {
    return Collections.unmodifiableList(modules);
  }

  public void addModule(String moduleId) {
    this.modules.add(moduleId);
    this.document.append("moduleId", String.join(",", this.modules));
  }

}
