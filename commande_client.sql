CREATE TABLE clients(
    id_client INT(11) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
); CREATE TABLE `commandes`(
    id_commande INT(11) NOT NULL,
    date_commande DATE NOT NULL,
    montant DECIMAL(10, 0) NOT NULL,
    id_client INT(11) DEFAULT NULL
); ALTER TABLE
    commandes ADD CONSTRAINT fk_id_client FOREIGN KEY(id_client) REFERENCES clients(id_client);
INSERT INTO commande(
    ,
    date_commande,
    montant,
    id_client
)
VALUES('2026-01-04', 2000, 2),('2026-02-04', 3000, 3);
INSERT INTO clients(id_client, nom, email)
VALUES(1, 'asma', 'ennafia@gmail.com'),(2, 'yasmine', 'aassim@gmail.com'),(3, 'omar', 'omarm@gmail.com');
/*SELECT clients.id_client, clients.nom, COUNT(commandes.id_commande) AS total_commandes
FROM clients
LEFT JOIN commandes
ON clients.id_client = commandes.id_client
GROUP BY clients.id_client, clients.nom;*/
SELECT clients.id_client, clients.nom , COUNT(commandes.montant) AS total_montant
FROM clients
right JOIN commandes
ON clients.id_client = commandes.id_client
GROUP BY clients.id_client, clients.nom,commandes.montant; 


-- 1
SELECT * FROM commandes
INNER JOIN clients ON
commandes.id_commande=clients.id_client

-- 2


SELECT * FROM commandes
 LEFT JOIN clients ON
commandes.id_commande=clients.id_client
WHERE commandes.id_commande is null


-- "3"

SELECT * FROM commandes
 RIGHT JOIN clients ON
commandes.id_commande=clients.id_client

--   4
SELECT * FROM commandes
 INNER  JOIN clients ON
commandes.id_commande=clients.id_client
WHERE commandes.id_commande is null


--  5

SELECT clients.id_client, clients.nom, COUNT(commandes.id_commande) AS total_commandes
FROM clients
LEFT JOIN commandes
ON clients.id_client = commandes.id_client
-- GROUP BY clients.id_client, clients.nom;  


-- 6

SELECT clients.id_client,  clients.nom, commandes.montant AS total_commandes
FROM clients
LEFT JOIN commandes
ON clients.id_client = commandes.id_client
GROUP BY clients.id_client, clients.nom, commandes.montant


-- 7

SELECT clients.nom , commandes.date_commande FROM commandes 
INNER JOIN clients ON
commandes.id_client=clients.id_client
GROUP by 
clients.nom , commandes.date_commande


--  8






