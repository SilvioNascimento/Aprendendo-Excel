-- Grass type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(50, 'Paras', 'Mushroom Pokémon', 'Scratch', '20', 'Fire', NULL, '1', 60, 1, 1, 1);

INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(70, 'Parasect', 'Mushroom Pokémon', 'Spore', '—', 'Fire', NULL, '2', 34, 1, 1, 2);

-- Fire type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(60, 'Rapidash', 'Fire Horse Pokémon', 'Stomp', '20+', 'Water', NULL, '1', 44, 1, 2, 2);

-- Water type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(50, 'Shellder', 'Bivalve Pokémon', 'Supersonic', '—', 'Lightning', NULL, '1', 62, 1, 3, 1);

INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(70, 'Cloyster', 'Bivalve Pokémon', 'Clamp', '30', 'Lightning', NULL, '2', 31, 1, 3, 2);

-- Lightning type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(60, 'Jolteon', 'Lightning Pokémon', 'Pin Missile', '20x', 'Fighting', NULL, '1', 4, 2, 4, 2);

-- Psychic type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(50, 'Slowpoke', 'Dopey Pokémon', 'Spacing Out', '—', 'Psychic', NULL, '1', 67, 1, 5, 1);

INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(80, 'Slowbro', 'Hermit Crab Pokémon', 'Headbutt', '20', 'Psychic', NULL, '2', 20, 1, 5, 2);

-- Fighting type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(70, 'Cubone', 'Lonely Pokémon', 'Bone Attack', '20', 'Grass', NULL, '1', 50, 1, 6, 1);

-- Colorless type
INSERT INTO tbl_cards 
(hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
(90, 'Wigglytuff', 'Balloon Pokémon', 'Lullaby', '—', 'Fighting', NULL, '2', 32, 1, 7, 2);

-- More 9 cards (Colorless types)
INSERT INTO tbl_cards VALUES (80, 'Dodrio', 'Triple Bird Pokémon', 'Rage', '10+', 'Lightning', NULL, '2', 19, 1, 7, 2);
INSERT INTO tbl_cards VALUES (90, 'Kangaskhan', 'Parent Pokémon', 'Comet Punch', '20x', 'Fighting', NULL, '3', 5, 1, 7, 1);
INSERT INTO tbl_cards VALUES (50, 'Rattata', 'Rat Pokémon', 'Bite', '20', 'Fighting', NULL, '1', 61, 1, 7, 1);
INSERT INTO tbl_cards VALUES (60, 'Raticate', 'Rat Pokémon', 'Super Fang', '—', 'Fighting', NULL, '2', 40, 1, 7, 2);
INSERT INTO tbl_cards VALUES (70, 'Clefairy', 'Fairy Pokémon', 'Sing', '—', 'Fighting', 'Psychic', '1', 5, 1, 7, 1);
INSERT INTO tbl_cards VALUES (80, 'Clefable', 'Fairy Pokémon', 'Metronome', '—', 'Fighting', 'Psychic', '2', 1, 1, 7, 2);
INSERT INTO tbl_cards VALUES (90, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', NULL, '4', 11, 2, 7, 1);
INSERT INTO tbl_cards VALUES (60, 'Persian', 'Classy Cat Pokémon', 'Scratch', '20', 'Fighting', NULL, '1', 42, 1, 7, 2);
INSERT INTO tbl_cards VALUES (70, 'Ditto', 'Transform Pokémon', 'Transform', '—', 'Fighting', NULL, '1', 18, 1, 7, 1);