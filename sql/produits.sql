CREATE TABLE produits(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL,
  quantite INT NOT NULL,
  description LONGTEXT NOT NULL,
  image VARCHAR(255) NOT NULL,
  prix INT NOT NULL,
  id_categories INT, 
  constraint fk_categoriesProduits FOREIGN KEY (id_categories) REFERENCES categories(id)
);

INSERT INTO produits(name, quantite, description, image, prix, id_categories) VALUES
('Boucles Assia', 10, "Boucles en origami, métal sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_6c4d4943dfde443d800d34da9ae2e47f~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_6c4d4943dfde443d800d34da9ae2e47f~mv2.webp", 6,1),
("Boucles Candice", 8, "Boucles blanches, métal sans nickel et sans plomb","https://static.wixstatic.com/media/7e3e45_f7a3c676294041c5a6f75f7f8bbe2a27~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_f7a3c676294041c5a6f75f7f8bbe2a27~mv2.webp",10,1),
("Boucles Gaby", 5, "Boucles en origami, métal sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_44bf4f9699e241a28f78b041ff1bf160~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_44bf4f9699e241a28f78b041ff1bf160~mv2.webp",6,1),
("Boucles June", 8, "Boucles violettes, métal sans nickel et sans plomb","https://static.wixstatic.com/media/7e3e45_f723afacd038487ba49403ecd8d6c06d~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_f723afacd038487ba49403ecd8d6c06d~mv2.webp",10,1),
("Boucles Aria", 11, "Boucles en origami, métal sans nickel et sans plomb","https://static.wixstatic.com/media/7e3e45_391bcf4fe2a541e0b6a361dde109fd45~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_391bcf4fe2a541e0b6a361dde109fd45~mv2.webp",8,1 ),
("Boucles Mya", 2, "Boucles bordeaux, métal sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_f2b0381771d24615b964271760ad0ce3~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_f2b0381771d24615b964271760ad0ce3~mv2.webp", 8,1),
("Bracelet Nolwenn", 1, "Bracelet en tissus, métal sans nickel et sans plomb","https://static.wixstatic.com/media/7e3e45_2bf90a1da8b7494e89032ea0903662a6~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_2bf90a1da8b7494e89032ea0903662a6~mv2.webp",10,2),
("Bracelet Carmen", 6, "Bracelet en or rosé avec hexagone", "https://static.wixstatic.com/media/7e3e45_ceb07818fed849ba95538c3e41012f4d~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_ceb07818fed849ba95538c3e41012f4d~mv2.webp",8,2),
("Bracelet Maeva", 2, "Bracelet en métal argenté, sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_c974083d060d49d0b04b157cf03106a2~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_c974083d060d49d0b04b157cf03106a2~mv2.webp", 15,2),
("Collier bola Carmen", 5, "Chaine or rosé avec hexagone, Bola rose dans une cage", "https://static.wixstatic.com/media/7e3e45_0d281c0c6d6a44acad9a21fc16df78ce~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_0d281c0c6d6a44acad9a21fc16df78ce~mv2.webp",15,3),
("Collier Bella", 1, "Collier en métal sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_0590d3638a334f29bbe6dc18171ca655~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_0590d3638a334f29bbe6dc18171ca655~mv2.webp", 12,3),
("Collier Salomé", 2, "Collier en métal sans nickel et sans plomb", "https://static.wixstatic.com/media/7e3e45_0582260a05e541dbbad0176115f0389c~mv2.jpg/v1/fill/w_768,h_432,al_c,lg_1,q_85/7e3e45_0582260a05e541dbbad0176115f0389c~mv2.webp",12,3),
("Anneau de dentition et bavoir", 2, "Cadeau de naissance avec anneau en bois et éponge","https://static.wixstatic.com/media/7e3e45_5babed7e8afb4b9b8de3b2cb3f8c9f75~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_5babed7e8afb4b9b8de3b2cb3f8c9f75~mv2.webp",12,4),
("Anneau de dentition", 5,"Tissu tout doux, anneaux en bois brut, grelot dans les oreilles","https://static.wixstatic.com/media/7e3e45_c2052c9b318e4f81a3df0928b6a6b180~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_c2052c9b318e4f81a3df0928b6a6b180~mv2.webp",8,4),
("Attache tetine", 2, "Perles en bois brut, cordon en coton, pince attache en bois", "https://static.wixstatic.com/media/7e3e45_59eb893151734d8ea2301ead679fd654~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_59eb893151734d8ea2301ead679fd654~mv2.webp",12,4),
("Débarbouillette Jungle", 3, "Débarbouillette en coton bio, motif jungle", "https://static.wixstatic.com/media/7e3e45_cb941b306ab7413a83b07f26da57d5f2~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_cb941b306ab7413a83b07f26da57d5f2~mv2.webp", 5,5),
("Débarbouillette Géométrique", 7,"Débarbouillette en coton bio, motif géométrique","https://static.wixstatic.com/media/7e3e45_54099e5854f044b88308e9f5174c1b19~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_54099e5854f044b88308e9f5174c1b19~mv2.webp",5,5 ),
("Débarbouillette Fleurs",4,"Débarbouillette en coton bio, motif fleurs","https://static.wixstatic.com/media/7e3e45_3208c1c9e0794667be98e595f55347ed~mv2.jpg/v1/fill/w_980,h_551,al_c,q_85,usm_0.66_1.00_0.01/7e3e45_3208c1c9e0794667be98e595f55347ed~mv2.webp",5,5);