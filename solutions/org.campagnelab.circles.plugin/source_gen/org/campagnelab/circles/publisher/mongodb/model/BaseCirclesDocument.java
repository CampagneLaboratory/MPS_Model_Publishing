package org.campagnelab.circles.publisher.mongodb.model;

/*Generated by MPS */

import org.bson.Document;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.UUID;

public abstract class BaseCirclesDocument {

  protected Document document;
  protected String id;
  protected String name;
  private DateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);

  public BaseCirclesDocument() {
    this.document = new Document();
    // default id 
    this.setId(UUID.randomUUID().toString());
  }
  public BaseCirclesDocument(String name) {
    this();
    this.setName(name);
  }
  public String getName() {
    return name;
  }
  private void setName(String name) {
    this.name = name;
    this.document.append("name", name);
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
    this.document.append("_id", id);
  }
  public Document toDoc() {
    return this.document;
  }

}
