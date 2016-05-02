package org.campagnelab.circles.publisher.mongodb.model;

/*Generated by MPS */

import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import com.mongodb.client.MongoCollection;
import org.campagnelab.circles.publisher.db.Connection;

public class MongoDbCollection {

  private MongoDatabase db;
  private String name;

  public MongoDbCollection(MongoDatabase db, String name) {
    this.db = db;
    this.name = name;
    if (!(exists())) {
      db.createCollection(name);
    }
  }

  public void create() {
    db.createCollection(name);
  }

  public <D extends Document> MongoCollection<D> getCollection(Class<D> documentClass) {
    return db.getCollection(this.name, documentClass);
  }

  public MongoCollection<Document> getCollection() {
    return db.getCollection(this.name, Document.class);
  }

  public boolean exists() {
    for (final String name : this.db.listCollectionNames()) {
      if (name.equalsIgnoreCase(this.name)) {
        return true;
      }
    }
    return false;
  }

  public void addDocument(Document document) {
    document.append("createdBy", Connection.username);
    this.getCollection().insertOne(document);
  }

}