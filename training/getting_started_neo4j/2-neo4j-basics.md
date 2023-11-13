# Fondamentaux de Neo4j
[![to complete](https://img.shields.io/badge/TP_2_:_Neo4j_Basics-2ea44f)](#)

## Objectifs du Workshop
Ce workshop vise à fournir une expérience pratique de Neo4j, en mettant en évidence les avantages des bases de données orientées graphe pour modéliser et interroger des relations complexes.

## Prérequis
- Installation de Neo4j Desktop ou accès à une instance Neo4j Aura.
- Compréhension des concepts des bases de données NoSQL et des opérations CRUD.


## Modélisation des données
Dans ce workshop, nous allons modéliser un réseau social d'entreprise pour illustrer les relations complexes.

**Entités:**
- Utilisateur (`User`)
- Compétence (`Skill`)
- Projet (`Project`)

**Relations:**
- Utilisateurs se connaissant (`KNOWS`)
- Utilisateurs possédant des compétences (`HAS_SKILL`)
- Utilisateurs travaillant sur des projets (`WORKS_ON`)

## Exercices pratiques

### Création des nœuds
Créez des nœuds pour plusieurs utilisateurs, compétences et projets.

```cypher
CREATE (:User {name: "John Doe", email: "john.doe@entreprise.com"})
CREATE (:Skill {name: "Python"})
CREATE (:Project {name: "Migration Cloud", deadline: "2023-12-31"})
```

**TAF : Créez cinq utilisateurs, cinq compétences et trois projets.**

### Création des relations
Reliez les utilisateurs entre eux, les utilisateurs aux compétences et les utilisateurs aux projets.

```cypher
MATCH (u1:User {name: "John Doe"}), (u2:User {name: "Jane Smith"})
CREATE (u1)-[:KNOWS]->(u2)
RETURN u1, u2
```

**TAF : Créez des relations `KNOWS`, `HAS_SKILL` et `WORKS_ON` pour les utilisateurs.**

### Requêtes d'interrogation
#### Trouver tous les utilisateurs connaissant un certain utilisateur.

```cypher
MATCH (u:User)-[:KNOWS]->(friend:User {name: "John Doe"})
RETURN u.name
```

**TAF : Écrivez une requête pour trouver toutes les compétences qu'un utilisateur possède.**

### Utilisation de MERGE
MERGE est utilisé pour créer un nœud ou une relation s'ils n'existent pas, ou simplement pour les retourner s'ils existent déjà.

#### Ajouter une compétence à un utilisateur en utilisant MERGE

```cypher
MATCH (u:User {name: "Jane Smith"})
MERGE (u)-[:HAS_SKILL]->(:Skill {name: "Project Management"})
RETURN u
```

**TAF : Utilisez MERGE pour ajouter un nouveau projet et le relier à un utilisateur s'il n'est pas déjà travaillé par celui-ci.**

### Différences entre MATCH, MERGE, et MATCH/MERGE combiné avec SET
#### Utilisation de MATCH pour trouver un utilisateur

```cypher
MATCH (u:User {name: "John Doe"})
RETURN u
```

#### Utilisation de MERGE pour créer ou retourner un utilisateur

```cypher
MERGE (u:User {name: "Alice Wonderland"})
RETURN u
```

#### Utilisation de MATCH/MERGE et SET pour mettre à jour un utilisateur

```cypher
MATCH (u:User {name: "John Doe"})
MERGE (skill:Skill {name: "Cybersecurity"})
CREATE (u)-[:HAS_SKILL]->(skill)
SET u.department = "IT Security"
RETURN u, skill
```

**TAF : Expliquez les différences entre ces commandes et montrez un cas où l'on utiliserait MATCH avec SET pour mettre à jour des propriétés d'un nœud.**

### Opérations CRUD complémentaires
#### Mise à jour d'une propriété de nœud

```cypher
MATCH (p:Project {name: "Migration Cloud"})
SET p.status = "In Progress"
RETURN p
```

#### Suppression d'une relation

```cypher
MATCH (u:User)-[r:WORKS_ON]->(p:Project {name: "Ancien Projet"})
DELETE r
```

#### Suppression d'un nœud et de ses relations

```cypher
MATCH (s:Skill {name: "Obsolete Skill"})
DETACH DELETE s
```

**TAF : Supprimez un utilisateur qui n'est plus actif dans le réseau.**



