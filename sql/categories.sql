CREATE TABLE categories(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type VARCHAR(255) NOT NULL,
  id_produits INT, 
  constraint fk_produitsCategories FOREIGN KEY (id_produits) REFERENCES produits(id)
);

INSERT INTO categories(type) VALUES
("Boucles d'oreilles"),
("Bracelets"),
("Colliers"),
("Accessoires bébé"),
("Débarbouillettes");