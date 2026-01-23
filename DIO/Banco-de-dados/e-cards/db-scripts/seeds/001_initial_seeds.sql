INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Bulbasaur (Basic Grass Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(40, 'Bulbasaur', 'Seed Pokémon', 'Leech Seed', '20', 'Fire', NULL, '1', 44, 1, 1, 1);

-- Charmander (Basic Fire Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', NULL, '1', 46, 1, 2, 1);

-- Squirtle (Basic Water Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(40, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', NULL, '1', 63, 1, 3, 1);

-- Pikachu (Basic Lightning Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', NULL, '1', 58, 1, 4, 1);

-- Alakazam (Stage 2 Psychic Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(80, 'Alakazam', 'Psi Pokémon', 'Confuse Ray', '30', 'Psychic', NULL, '3', 1, 1, 5, 3);

-- Machop (Basic Fighting Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(50, 'Machop', 'Superpower Pokémon', 'Low Kick', '20', 'Psychic', NULL, '1', 52, 1, 6, 1);

-- Chansey (Basic Colorless Pokémon)
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(120, 'Chansey', 'Egg Pokémon', 'Scrunch', '—', 'Fighting', 'Psychic', '1', 3, 1, 7, 1);
