# Interagir avec les bases de données
[![to complete](https://img.shields.io/badge/TP_1_:_MongoDB_Basics-2ea44f)](#)

Avant de commencer ce TP, assurez-vous d'avoir suivi les instructions du [document de configuration](connect-to-mongo.md).
## Local Database
**Connexion à une base de données locale**

Ouvrez un **terminal**/**invite de commande** et tapez:
```PowerShell
docker exec -it mongo-shell mongosh
```
La sortie attendue est la suivante :
```JS
test> 
```
> A partir d'ici, vous pourrez copier les commandes et les coller dans le terminal.

**Afficher la version du serveur**
```JS
db.version()
```
```JS
Output:
6.0.11
```
### Les basiques de MongoDB
#### Bases de données
**Lister les bases de données**
```JS
show dbs
```
```JS
Output:
admin    80.00 KiB
config  108.00 KiB
local    76.00 KiB
```
**Connexion à une base de données existante**
```JS
use admin
```
```JS
Output:
switched to db admin
admin>
```
> Lorsqu'on se connecte à une base de données, le texte affiché avant le curseur ">" change et porte désormais le nom de la base de données courante.

**Connexion à une base de données inexistante**
```JS
use myFirstDB
```
```JS
Output:
switched to db myFirstDB
myFirstDB>
```
>Cette commande va créer une nouvelle base de données, si celle-ci n'existe pas encore. Si elle existe, elle va commencer à l'utiliser. 

<span style="background : green ; color : white">**TAF: Créer une base de données relatives au management d'une école**

#### Collections
**Créer des collections**
Pour effectuer des opérations dans la base de données courante, on utilise db.
```JS
db.createCollection("students")
```
```JS
Output:
{ ok: 1 }
```
**Lister les collections**
```JS
show collections
```
```JS
Output:
students
```
<span style="background : green ; color : white">**TAF : Créer une collection des enseignants de votre école et vérifier qu'elle a été créée.**

#### Documents
```JS
db.students.insertOne({
 "firstName": "Encorvou",
 "lastName": "Ducobu",
 "email": "encorvou.ducobu@esigelec.com",
 "studentId": 20225454815
 })
```

```JS
Output:
{
  acknowledged: true,
  insertedId: ObjectId("636ec2a25418039f85c97412")
}
```
Nous venons d'ajouter l'élève Ducobu à notre collection students.
Exécutez la commande suivante sans utiliser *db.createCollection*.
```JS
db.rooms.insertOne({"roomId": "B1215", "step": 3, "building": "B"})
```
<span style="background : green ; color : white">**TAF : Commenter le résultat de cette commande.**</span>

<span style="background : green ; color : white">**TAF : Une fois ce résultat commenté, supprimez la collection room en utilisant la méthode drop des collections.**</span>

<span style="background : green ; color : white">**TAF : Avec quels éléments d’une base relationnelle pourrait-on comparer une collection, un document ?**</span>

Nous pouvons en insérer plus et plusieurs d'un coup.
```JS
db.students.insertMany([
 {
 "firstName": "Son",
 "lastName": "Goku",
 "email": "son.goku@esigelec.com",
 "studentId": 20225454816
 },
 {
 "firstName": "Dora",
 "lastName": "exploratrice",
 "email": "dora.exploratrice@esigelec.com",
 "studentId": 20225454817
 }
 ])
```
```JS
Output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("636ec2de5418039f85c97413"),
    '1': ObjectId("636ec2de5418039f85c97414")
  }
}
```
Nous venons d'ajouter les élèves Goku et Dora dans notre collection **students.**

<span style="background : green ; color : white">**TAF: Ajoutez des enseignants, avec les informations:**
- L'ancienneté
- Les enseignements
- Le salaire
- Le département
- Temps-partiel/plein

<span style="background : green ; color : white">**TAF : Ajoutez de nouveaux étudiants, avec des informations supplémentaires : localisation, promo(année) et dominante.**

### Opérations de base sur les documents dans MongoDB
#### Compter des documents
La fonction count de la collection students permet de compter le nombre de documents.
```JS
db.students.countDocuments()
```
```JS
Output:
3
```

#### Lister les documents
Pour trouver des documents, exécutez la commande suivante
```JS
db.students.find()
```
Elle va lister tous les documents contenus dans la collection **students**.

<span style="background : green ; color : white">**TAF: Que remarquez vous dans les documents affichés?**

<span style="background : green ; color : white">**TAF: Affichez les enseignants enregistrés.**
#### Trier les documents
Afficher les élèves par ordre d'enregistrement dans la base. Du plus récent au plus ancien.
```JS
db.students.find().sort({"_id":-1})
```
<span style="background : green ; color : white">**TAF: Afficher la liste des étudiants par ordre alphabétique**

<span style="background : green ; color : white">**TAF: Afficher la liste des étudiants par ordre d'ancienneté**
```JS
db.students.find().sort({"fisrstName":1})
```
#### Limiter les documents
Afficher le premier étudiant inscrit à l'école
```JS
db.students.find().limit(1)
```
<span style="background : green ; color : white">**TAF: Afficher le dernier étudiant inscrit à l'école**
#### Se déconnecter du serveur
Il est possible d'ajouter des données dans des bases MongoDB sans s'y être connecté au préalable. Pour le faire, il faut quitter le serveur.
```JS
exit
```
### Les importations de données
Nous allons le faire grâce à l'outil `mongoimport`.
#### Importer des fichiers .json et .csv
Importer des données depuis un fichier JSON
```shell
docker exec -it mongo-server mongoimport --authenticationDatabase admin -u root -p example  --jsonArray --db dev --collection collection_name --file /mongo-data/movies.json
```
<span style="background : green ; color : white">**TAF : Commentez le résultat de cette commande. À quel élément d'un modèle relationnel vous fais penser ce résultat ?**

<span style="background : green ; color : white">**TAF : Vérifier que les données sont bien importées au bon endroit.**

Importer des données depuis un fichier CSV
```shell
docker exec -it mongo-server mongoimport --type csv -d productDB -c products --headerline --drop /mongo-data/products.csv --uri mongodb+srv://stechos:stechos@serial-techos.hxiqgqy.mongodb.net
```
<span style="background : green ; color : white">**TAF : Vérifier que les données sont bien importées au bon endroit.**


