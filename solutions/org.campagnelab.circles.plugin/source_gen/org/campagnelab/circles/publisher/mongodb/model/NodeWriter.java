package org.campagnelab.circles.publisher.mongodb.model;

/*Generated by MPS */

import org.campagnelab.mps.editor2pdf.behavior.SVGWriter;
import com.mongodb.MongoWriteException;

public class NodeWriter implements SVGWriter {
  private final RootNodeDocument node;
  private final MongoDbCollection parentCollection;

  public NodeWriter(RootNodeDocument node, MongoDbCollection parentCollection) {
    this.node = node;
    this.parentCollection = parentCollection;
  }

  public void write(String svgFragment) {
    this.node.setSvgFragment(svgFragment);
  }
  public void append(String svgFragment) {
    this.node.setSvgFragment(svgFragment);
  }
  public void close() {
    try {
      parentCollection.addDocument(this.node.toDoc());
    } catch (MongoWriteException mwe) {
      // node already exists 
    }
  }
  @Override
  public String toString() {
    return this.node.getSvgFragment();
  }
}
