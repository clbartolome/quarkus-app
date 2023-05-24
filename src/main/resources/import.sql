-- Import Script for testing and local dev

CREATE TABLE IF NOT EXISTS  feature ( 
  id serial PRIMARY KEY, 
  name VARCHAR (50), 
  description VARCHAR ( 255 ));

INSERT INTO feature(id, name, description ) VALUES (1, 'Container First', 'Quarkus tailors your application for GraalVM and HotSpot. Amazingly fast boot time, incredibly low RSS memory (not just heap size!) offering near instant scale up and high density memory utilization in container orchestration platforms like Kubernetes');

INSERT INTO feature(id, name, description ) VALUES (2, 'Unifies imperative and reactive', 'Combine both the familiar imperative code and the reactive style when developing applications');
INSERT INTO feature(id, name, description ) VALUES (3, 'Community and Standards', 'Quarkus provides a cohesive, fun to use, full-stack framework by leveraging a growing list of over fifty best-of-breed libraries that you love and use. All wired on a standard backbone');

INSERT INTO feature(id, name, description ) VALUES (4, 'Kube-Native', 'The combination of Quarkus and Kubernetes provides an ideal environment for creating scalable, fast, and lightweight applications. Quarkus significantly increases developer productivity with tooling, pre-built integrations, application services, and more');
INSERT INTO feature(id, name, description ) VALUES (5, 'Container First', 'A cohesive platform for optimized developer joy with unified configuration and no hassle native executable generation. Zero config, live reload in the blink of an eye and streamlined code for the 80% common usages, flexible for the remainder 20%');


ALTER SEQUENCE IF EXISTS hibernate_sequence RESTART WITH 7;