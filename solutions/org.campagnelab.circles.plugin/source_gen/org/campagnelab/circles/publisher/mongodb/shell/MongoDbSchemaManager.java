package org.campagnelab.circles.publisher.mongodb.shell;

/*Generated by MPS */

import org.campagnelab.circles.publisher.db.SchemaManager;
import org.campagnelab.circles.publisher.mongodb.model.MongoDbAccess;

public class MongoDbSchemaManager extends SchemaManager {

  public void createSchema() {
    new MongoDbAccess().close();
  }
  public void dropSchema() {
    MongoDbAccess db = new MongoDbAccess();
    db.drop();
    db.close();
  }

}