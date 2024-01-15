

CREATE (m:Entity {name: 'Le Monde', type: 'Gauche'})
CREATE (w:Website {name: 'lemonde.fr', url: 'https://lemonde.fr'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/lemonde', url: 'https://facebook.com/lemonde'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: "Le Monde SA", Diplo_typeLibelle: "Media", Diplo_typeCode: 1, Diplo_rangChallenges: 10, Diplo_milliardaireForbes: "Non", Diplo_mediaType: "Journal", Diplo_mediaPeriodicite: "Quotidien", Diplo_mediaEchelle: "National", Diplo_commentaire: "Commentaire", Diplo_ACPMdiffusion: 100000}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Xavier Niel', Diplo_typeLibelle: "Personne Physique"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Le_Monde', url: 'https://wikipedia.org/Le_Monde', summary: "Le Monde est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'Libération', type: 'Gauche'})
CREATE (w:Website {name: 'liberation.fr', url: 'https://liberation.fr'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/liberation', url: 'https://facebook.com/liberation'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: "Libération", Diplo_typeLibelle: "Media", Diplo_typeCode: 5, Diplo_rangChallenges: 50, Diplo_milliardaireForbes: "Non", Diplo_mediaType: "Journal", Diplo_mediaPeriodicite: "Quotidien", Diplo_mediaEchelle: "National", Diplo_commentaire: "Commentaire", Diplo_ACPMdiffusion: 50000}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Patrick Drahi', Diplo_typeLibelle: "Personne Physique"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Libération', url: 'https://wikipedia.org/Libération', summary: "Libe est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'Le Figaro', type: 'Droite'})
CREATE (w:Website {name: 'lefigaro.fr', url: 'https://lefigaro.fr'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/lefigaro', url: 'https://facebook.com/lefigaro'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: "Le Figaro", Diplo_typeLibelle: "Media", Diplo_typeCode: 6, Diplo_rangChallenges: 60, Diplo_milliardaireForbes: "Non", Diplo_mediaType: "Journal", Diplo_mediaPeriodicite: "Quotidien", Diplo_mediaEchelle: "National", Diplo_commentaire: "Commentaire", Diplo_ACPMdiffusion: 60000}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Dassault Group', Diplo_typeLibelle: "Personne Morale"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Le_Figaro', url: 'https://wikipedia.org/Le_Figaro', summary: "Le Figaro est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'Valeurs Actuelles', type: 'Droite'})
CREATE (w:Website {name: 'valeursactuelles.com', url: 'https://valeursactuelles.com'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/valeursactuelles', url: 'https://facebook.com/valeursactuelles'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: "Valeurs actuelles", Diplo_typeLibelle: "Media", Diplo_typeCode: 4, Diplo_rangChallenges: 40, Diplo_milliardaireForbes: "Non", Diplo_mediaType: "Magazine", Diplo_mediaPeriodicite: "Hebdomadaire", Diplo_mediaEchelle: "National", Diplo_commentaire: "Commentaire", Diplo_ACPMdiffusion: 40000}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Iskandar Safa', Diplo_typeLibelle: "Personne Physique"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Valeurs_Actuelles', url: 'https://wikipedia.org/Valeurs_Actuelles', summary: "VA est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);


CREATE (m:Entity {name: 'Le Monde Diplomatique', type: 'Gauche'})
CREATE (w:Website {name: 'mondediplo.com', url: 'https://mondediplo.com'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/mondediplo', url: 'https://facebook.com/mondediplo'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: 'Le Monde Diplomatique SA'}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Le Monde SA', Diplo_typeLibelle: "Personne Morale"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Le_Monde_Diplomatique', url: 'https://wikipedia.org/Le_Monde_Diplomatique', summary: "Diplo est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'AFP', type: 'Neutre'})
CREATE (w:Website {name: 'afp.com', url: 'https://afp.com'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/afp', url: 'https://facebook.com/afp'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: 'Agence France-Presse'}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'French Government', Diplo_typeLibelle: "Etat"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Agence_France-Presse', url: 'https://wikipedia.org/Agence_France-Presse', summary: "AFP est le media Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'FactCheckFictif', type: 'Fact Checking'})
CREATE (w:Website {name: 'factcheckfictif.com', url: 'https://factcheckfictif.com'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/factcheckfictif', url: 'https://facebook.com/factcheckfictif'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: 'FactCheckFictif Org'}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Independent', Diplo_typeLibelle: "Personne Morale"}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/FactCheckFictif', url: 'https://wikipedia.org/FactCheckFictif', summary: "FactCheckFictif est un FACTCHECKER Français"}) CREATE (m)<-[:OWNED_BY]-(p);

CREATE (m:Entity {name: 'LeGorafi', type: 'Satirique'})
CREATE (w:Website {name: 'legorafi.fr', url: 'https://legorafi.fr'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/legorafi', url: 'https://facebook.com/legorafi'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: 'LeGorafi SARL'}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Groupe Satire Media'}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Le_Gorafi', url: 'https://wikipedia.org/Le_Gorafi', summary: "LeGorafi est un journal parodique"}) CREATE (m)<-[:OWNED_BY]-(p);


CREATE (m:Entity {name: 'LeMessager', type: 'Régional'})
CREATE (w:Website {name: 'lemessager.fr', url: 'https://lemessager.fr'}) CREATE (m)<-[:OWNED_BY]-(w)
CREATE (f:Facebook {name: 'facebook.com/lemessager', url: 'https://facebook.com/lemessager'}) CREATE (m)-[:OWNED_BY]->(f)
CREATE (e:Entity {name: 'LeMessager Media'}) CREATE (m)-[:OWNED_BY]->(e)
CREATE (o:Entity {name: 'Groupe Régional Presse'}) CREATE (e)-[:OWNED_BY]->(o)
CREATE (p:Wikipedia {name: 'wikipedia.org/Le_Messager', url: 'https://wikipedia.org/Le_Messager', summary: "LeMessager est un journal Français"}) CREATE (m)<-[:OWNED_BY]-(p);


MATCH (recommender:Entity {name: 'Le Monde Diplomatique'}), (recommendee:Entity {name: 'LeGorafi'}) CREATE (recommender)-[:RECOMMENDS {weight: 2, meaning: 'Satirique'}]->(recommendee);
MATCH (recommender:Entity {name: 'AFP'}), (recommendee:Entity {name: 'LeMessager'}) CREATE (recommender)-[:RECOMMENDS {weight: 7, meaning: 'Fiable Régionalement'}]->(recommendee);
MATCH (recommender:Entity {name: 'Le Monde Diplomatique'}), (recommendee:Entity {name: 'Le Monde'}) CREATE (recommender)-[:RECOMMENDS {weight: 8, meaning: 'Fiable'}]->(recommendee);
MATCH (recommender:Entity {name: 'Le Monde Diplomatique'}), (recommendee:Entity {name: 'Libération'}) CREATE (recommender)-[:RECOMMENDS {weight: 7, meaning: 'Majoritairement Fiable'}]->(recommendee);
MATCH (recommender:Entity {name: 'AFP'}), (recommendee:Entity {name: 'Le Figaro'}) CREATE (recommender)-[:RECOMMENDS {weight: 5, meaning: 'Neutre'}]->(recommendee);
MATCH (recommender:Entity {name: 'AFP'}), (recommendee:Entity {name: 'Valeurs Actuelles'}) CREATE (recommender)-[:RECOMMENDS {weight: 3, meaning: 'Biaisé'}]->(recommendee);
MATCH (recommender:Entity {name: 'FactCheckFictif'}), (recommendee:Entity {name: 'Le Monde'}) CREATE (recommender)-[:RECOMMENDS {weight: 9, meaning: 'Très Fiable'}]->(recommendee);
MATCH (recommender:Entity {name: 'FactCheckFictif'}), (recommendee:Entity {name: 'Le Figaro'}) CREATE (recommender)-[:RECOMMENDS {weight: 6, meaning: 'Fiable avec Réserves'}]->(recommendee);
