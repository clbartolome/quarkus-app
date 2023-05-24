-- Import Script for testing and local dev

CREATE TABLE IF NOT EXISTS  feature ( 
  id serial PRIMARY KEY, 
  name VARCHAR (50), 
  description VARCHAR ( 255 ));

INSERT INTO feature(id, name, description ) VALUES (1, 'Container First', 'Quarkus tailors your application for GraalVM and HotSpot. Amazingly fast boot time, incredibly low RSS memory (not just heap size!) offering near instant scale up and high density memory utilization in container orchestration platforms like Kubernetes');

INSERT INTO feature(id, name, description ) VALUES (2, 'Unifies imperative and reactive', 'Combine both the familiar imperative code and the reactive style when developing applications');


ALTER SEQUENCE IF EXISTS hibernate_sequence RESTART WITH 3;