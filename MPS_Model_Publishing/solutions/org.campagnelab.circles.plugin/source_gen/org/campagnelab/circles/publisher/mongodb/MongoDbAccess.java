package org.campagnelab.circles.publisher.mongodb;

/*Generated by MPS */

import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;

public class MongoDbAccess {

  public static MongoDatabase open() {
    MongoClient mongoClient = new MongoClient(Configuration.hostname, Configuration.port);
    return mongoClient.getDatabase(Configuration.database);
  }
  public static void drop(MongoDatabase db) {
    db.drop();
  }

}
