
/////////////Afficher la liste de tous les clients:

SELECT * FROM `clients`;

/////////////Afficher la liste des produits:
SELECT * FROM `produits`;

/////////////Afficher les types de produits qui existent dans la BD:
SELECT type FROM `produits`;

/////////////Afficher le nombre de produits disponibles pour chaque type de produit.

SELECT type, COUNT(nom)FROM produits GROUP BY type;

/////////////Afficher les infos sur les clients dont le nom des clients 'S'

SELECT * FROM `clients` WHERE `nom` LIKE '%s%';

////////////////Dans la table produits, ajouter une colonne prix.
ALTER TABLE produits
ADD prix VARCHAR(255)

////////////////Insérer un prix (égal à 200) dans les lignes déjà existante
UPDATE produits SET prix = '200'

////////////Afficher pour tous les produits les infos suivantes :nom, type, prix, nom du fournisseur 
SELECT nom,type,prix,fournisseur FROM `produits`;


////////////////Afficher le nombre de produit pour chaque fournisseur
SELECT fournisseur, COUNT(nom)FROM produits GROUP BY fournisseur;
