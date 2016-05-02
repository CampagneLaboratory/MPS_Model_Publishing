package org.campagnelab.circles.publisher.mongodb.model;

/*Generated by MPS */


public class RootNodeDocument extends BaseCirclesDocument {

  private String svgFragment;
  private String modelId;
  public RootNodeDocument() {
    super();
  }
  public RootNodeDocument(String name) {
    super(name);
  }
  public String getSvgFragment() {
    return svgFragment;
  }
  public void setSvgFragment(String svgFragment) {
    this.svgFragment = svgFragment;
    this.document.append("SVG", svgFragment);
  }
  public String getModelId() {
    return modelId;
  }
  public void setModelId(String modelId) {
    this.modelId = modelId;
    this.document.append("modelId", modelId);
  }

}
