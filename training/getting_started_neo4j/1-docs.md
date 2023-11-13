# Neo4j Docker Workshop Documentation

## Introduction

Welcome to the Neo4j Docker workshop! Today, you'll learn how to run a Neo4j database in a Docker container and connect to it using both the Neo4j Browser and the Cypher Shell.

## Prerequisites

- Docker and Docker Compose installed on your machine
- Familiarity with Docker basics

## Neo4j Setup with Docker

1. **Configure Neo4j Services**:

   For the Neo4j setup, create a `docker-compose.yml` file with the following configuration:

   ```yaml
   version: '3'
   services:
   neo4j:
      image: neo4j:latest
      container_name: neo4j
      ports:
         - "7474:7474" # HTTP
         - "7687:7687" # Bolt
      environment:
         - NEO4J_AUTH=neo4j/password
   jupyter:
      image: jupyter/datascience-notebook:latest
      container_name: jupyter
      ports:
         - 8888:8888
      volumes:
         - .:/home/jovyan/work
      environment:
         JUPYTER_ENABLE_LAB: "yes"
   ```

2. **Start Neo4j Containers**:

   Use Docker Compose to bring up the Neo4j services:

   ```sh
   docker-compose up -d neo4j
   ```

3. **Accessing Neo4j Browser**:

   To access the Neo4j Browser, go to `http://localhost:7474` in your web browser. 
   
   Log in with the username `neo4j` and the password `password`.

4. **Connecting to Neo4j with Cypher Shell**:

   Connect to your local Neo4j instance using the Cypher Shell by running:

   ```sh
   docker exec -it neo4j cypher-shell
   ```
## Neo4j with Python

We will use the Jupyter Notebook to connect to our Neo4j instance and perform some operations in an application context.

### Connect to jupyter using the service jupyter
```sh
docker-compose up jupyter
``` 
Open the link starting by `http://localhost:8888` in a web browser.

   To connect to an external Neo4j AuraDB instance, use:

   ```sh
   docker exec -it neo4j cypher-shell -a neo4j+s://5074307c.databases.neo4j.io -u neo4j -p password
   ```

   Make sure to replace `password` with the actual password for the database.

## Conclusion

You now have the knowledge to start a Neo4j database inside a Docker container and interact with it using the Neo4j Browser and Cypher Shell. Enjoy exploring graph