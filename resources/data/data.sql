--
-- Base de données : `jeux`
--
CREATE DATABASE IF NOT EXISTS `jeux` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jeux`;

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game`
(
    `id`        int(11)      NOT NULL,
    `nom`       varchar(125) NOT NULL,
    `support`   int(11)      NOT NULL,
    `available` tinyint(1)   NOT NULL DEFAULT 1,
    `ended`     tinyint(1)   NOT NULL DEFAULT 0,
    `progress`  tinyint(1)   NOT NULL DEFAULT 0
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `nom`, `support`, `available`, `ended`, `progress`)
VALUES (1, 'Death Coming', 1, 1, 0, 0),
       (2, 'Assassin\'s Creed Unity', 1, 1, 0, 0),
       (3, 'Beneath a Steel Sky', 1, 1, 0, 0),
       (4, 'Diablo', 1, 1, 0, 0),
       (5, 'DragonSphere', 1, 1, 0, 0),
       (6, 'Duke Nukem 3D', 1, 1, 0, 0),
       (7, 'Lure of the temptress', 1, 1, 0, 0),
       (8, 'prehistorik', 1, 1, 0, 0),
       (9, 'prehistorik 2', 1, 1, 0, 0),
       (10, 'Teen Agent', 1, 1, 0, 0),
       (11, 'Treasure Adventure Game', 1, 1, 0, 0),
       (12, 'Tyrian 2000', 1, 1, 0, 0),
       (13, 'Ultima 4 : Quest of the avatar', 1, 1, 0, 0),
       (14, 'Ultima Worlds of Adventure 2 : Martian Dreams', 1, 1, 0, 0),
       (15, 'Warcraft', 1, 1, 0, 0),
       (16, 'Warcraft II', 1, 1, 0, 0),
       (17, 'Warsow', 1, 1, 0, 0),
       (18, 'Worlds of Ultima : The savage empire', 1, 1, 0, 0),
       (19, 'World Of Warcraft', 1, 1, 0, 0),
       (20, 'Warcraft III', 1, 1, 0, 0),
       (21, 'Diablo III', 1, 1, 0, 0),
       (22, 'Starcraft', 1, 1, 0, 0),
       (23, 'Starcraft II', 1, 1, 0, 0),
       (24, 'Diablo II', 1, 1, 0, 0),
       (25, 'The Elder Scroll V : Skyrim', 1, 1, 0, 0),
       (26, 'The Elder Scroll V : Skyrim Special Edition', 1, 1, 0, 0),
       (27, 'Final Fantasy IX', 1, 1, 0, 0),
       (28, 'Age of Empires II', 1, 1, 0, 0),
       (29, 'Batman Arkham Asylum GOTY Edition', 1, 1, 0, 0),
       (30, 'Batman Arkham Origins', 1, 1, 0, 0),
       (31, 'Child of light', 1, 1, 0, 0),
       (32, 'Crash Bandicoot N.Sane Trilogy', 1, 1, 0, 0),
       (33, 'Dark souls II', 1, 1, 0, 0),
       (34, 'Dark Souls III', 1, 1, 0, 0),
       (35, 'Dark Souls Remastered', 1, 1, 0, 0),
       (36, 'Darksiders', 1, 1, 0, 0),
       (37, 'Darksiders II Deathinitive Edition', 1, 1, 0, 0),
       (38, 'Darksiders III', 1, 1, 0, 0),
       (39, 'Dishonored', 1, 1, 0, 0),
       (40, 'Doom', 1, 1, 0, 0),
       (41, 'Doom II : Hell on Earth', 1, 1, 0, 0),
       (42, 'Doom 3 : BFG Edition', 1, 1, 0, 0),
       (43, 'DOOM 64 ', 1, 1, 0, 0),
       (44, 'DOOM Eternal', 1, 1, 0, 0),
       (45, 'The Elder Scroll III : Morrowind', 1, 1, 0, 0),
       (46, 'The Elder Scroll Online', 1, 1, 0, 0),
       (47, 'F.E.A.R 3', 1, 1, 0, 0),
       (48, 'Fable The Lost Chapter', 1, 1, 0, 0),
       (49, 'Fallout', 1, 1, 0, 0),
       (50, 'Final Doom', 1, 1, 0, 0),
       (51, 'Final Fantasy III', 1, 1, 0, 0),
       (52, 'Final Fantasy IV', 1, 1, 0, 0),
       (53, 'Final Fantasy IV : The After Year', 1, 1, 0, 0),
       (54, 'Final Fantasy V', 1, 1, 0, 0),
       (55, 'Final Fantasy VI', 1, 1, 0, 0),
       (56, 'Final Fantasy VII', 1, 1, 0, 0),
       (57, 'Final Fantasy VIII', 1, 1, 0, 0),
       (58, 'Final Fantasy X/X-2 Remastered', 1, 1, 0, 0),
       (59, 'Grandia II HD Remastered', 1, 1, 0, 0),
       (60, 'Injustice 2', 1, 1, 0, 0),
       (61, 'Life Is Strange', 1, 1, 0, 0),
       (62, 'Magic the gathering : Duels of the planewalker 2012', 1, 1, 0, 0),
       (63, 'Magic Duels', 1, 1, 0, 0),
       (64, 'Master Levels For DOOM II', 1, 1, 0, 0),
       (65, 'Monster Hunter : World', 1, 1, 0, 0),
       (66, 'Neverwinter Night: Enhanced Edition', 1, 1, 0, 0),
       (67, 'Oddworld : Abe\'s Oddysee', 1, 1, 0, 0),
       (68, 'Oddworld : Abse\'s Exoddus', 1, 1, 0, 0),
       (69, 'Oddworld : Munch\'s Oddysee', 1, 1, 0, 0),
       (70, 'Oddworld : Stranger\'s Wrath', 1, 1, 0, 0),
       (71, 'Path of exile', 1, 1, 0, 0),
       (72, 'Sega Mega Drive & Genesis Classic', 1, 1, 0, 0),
       (73, 'Sonic & All-Stars racing Transformated collection', 1, 1, 0, 0),
       (74, 'Sonic Adventure 2', 1, 1, 0, 0),
       (75, 'Sonic Adventure DX', 1, 1, 0, 0),
       (76, 'Sonic and SEGA All Stars Racing', 1, 1, 0, 0),
       (77, 'Sonic CD', 1, 1, 0, 0),
       (78, 'Sonic Lost World', 1, 1, 0, 0),
       (79, 'Sonic Generations', 1, 1, 0, 0),
       (80, 'Sonic the edgehoc 4 Episode I', 1, 1, 0, 0),
       (81, 'Sonic The Edgehoc 4 Episode II', 1, 1, 0, 0),
       (82, 'Tales of Symphonia', 1, 1, 0, 0),
       (83, 'Tomb raider', 1, 1, 0, 0),
       (84, 'The ultimate DOOM', 1, 1, 0, 0),
       (85, 'The Witcher Enhanced Edition', 1, 1, 0, 0),
       (86, 'The Witcher II Assassins Of Kings Enhanced Edition', 1, 1, 0, 0),
       (87, 'The Witcher III Wild Hunt', 1, 1, 0, 0),
       (88, 'Mario Kart 8', 4, 1, 0, 0),
       (89, 'Pokémon Pinball Ruby & Sapphire', 4, 1, 0, 0),
       (90, 'Super Mario Galaxy 2', 4, 1, 0, 0),
       (91, 'Metroid Prime Trilogy', 4, 1, 0, 0),
       (92, 'Donkey Kong 64', 4, 1, 0, 0),
       (93, 'Super Mario 64', 4, 1, 0, 0),
       (94, 'Mario Kart DS', 4, 1, 0, 0),
       (95, 'WarioWare: Touched', 4, 1, 0, 0),
       (96, 'Warioware inc minigame mania', 4, 1, 0, 0),
       (97, 'Affordable space Adventures', 4, 1, 0, 0),
       (98, 'Final fantasy Tactics Advance', 4, 1, 0, 0),
       (99, 'Kingdom Hearts 1.5 Remix', 3, 1, 0, 0),
       (100, 'One piece romance dawn', 5, 1, 0, 0),
       (101, 'Pokémon rouge feu', 6, 1, 0, 0),
       (102, 'Sonic Advance', 6, 1, 0, 0),
       (103, 'Bomberman', 6, 1, 0, 0),
       (104, 'Golden Sun : l\'âge perdu', 6, 1, 0, 0),
       (105, 'Pokémon Pinball', 7, 1, 0, 0),
       (106, 'Pokémon Rubis', 6, 1, 0, 0),
       (107, 'Pokémon Saphir', 6, 1, 0, 0),
       (108, 'Final Fantasy Tactics Advance', 6, 1, 0, 0),
       (109, 'Golden Sun', 6, 1, 0, 0),
       (110, 'Pokémon Emeraude', 6, 1, 0, 0),
       (111, 'Pokémon Vert Feuille', 6, 1, 0, 0),
       (112, 'Kingdom Hearts chains of memories', 6, 1, 0, 0),
       (113, 'Pokémon Or', 7, 1, 0, 0),
       (114, 'Pokémon rouge', 7, 1, 0, 0),
       (115, 'Pokémon Argent', 7, 1, 0, 0),
       (116, 'Pokémon Jaune', 7, 1, 0, 0),
       (117, 'Tetris', 7, 1, 0, 0),
       (118, 'Pokémon bleu', 7, 1, 0, 0),
       (119, 'Super mario bros deluxe', 7, 1, 0, 0),
       (120, 'One piece Unlimited World', 5, 1, 0, 0),
       (121, 'Professeur Layton et le destin perdu', 5, 1, 0, 0),
       (122, 'Pokémon version blanche', 5, 1, 0, 0),
       (123, 'Pokémon Y', 5, 1, 0, 0),
       (124, 'Bravely default', 5, 1, 0, 0),
       (125, 'Pokémon Or HearthGold', 5, 1, 0, 0),
       (126, 'Pokémon Argent Soulsilver', 5, 1, 0, 0),
       (127, 'pokémon X', 5, 1, 0, 0),
       (128, 'Pokémon version noire', 5, 1, 0, 0),
       (129, 'Pokémon Platine', 5, 1, 0, 0),
       (130, 'Pokémon Diamant', 5, 1, 0, 0),
       (131, 'Pokémon Saphir Alpha', 5, 1, 0, 0),
       (132, 'Mario Party DS', 5, 1, 0, 0),
       (133, 'Super Seducer 3', 1, 1, 0, 0),
       (134, 'Pokémon rubis oméga', 5, 1, 0, 0),
       (135, 'Pokémon version blanche 2', 5, 1, 0, 0),
       (136, 'Pokémon version noire 2', 5, 1, 0, 0),
       (137, 'New Super mario bros 2', 5, 1, 0, 0),
       (138, 'MarioKart 7', 5, 1, 0, 0),
       (139, 'Fire Emblem Awakening', 5, 1, 0, 0),
       (140, 'Pokémon lune', 5, 1, 0, 0),
       (141, 'Kingdom hearts Dream drop distance', 5, 1, 0, 0),
       (142, 'Kingdom Hearts 358/2 days', 5, 1, 0, 0),
       (143, 'Pokémon perle', 5, 1, 0, 0),
       (144, 'Golden sun Obscure aurore', 5, 1, 0, 0),
       (145, 'Zelda a link between worlds', 5, 1, 0, 0),
       (146, 'Super mario 3D land', 5, 1, 0, 0),
       (147, 'Gunvolt', 5, 1, 0, 0),
       (148, 'Mighty Gunvolt', 5, 1, 0, 0),
       (149, 'Luigi\'s mansion 2', 5, 1, 0, 0),
       (150, 'Professeur Layton et le masque des miracles', 5, 1, 0, 0),
       (151, 'Super Pokémon Rumble', 5, 1, 0, 0),
       (152, 'Castlevania mirror of fate', 5, 1, 0, 0),
       (153, '3D classics : Kirby\'s Adventure', 5, 1, 0, 0),
       (154, 'Super Mario Bros', 5, 1, 0, 0),
       (155, 'Super Mario Bros II', 5, 1, 0, 0),
       (156, 'Super Mario Bros III', 5, 1, 0, 0),
       (157, 'The legend of zelda', 5, 1, 0, 0),
       (158, 'Zelda II : the adventure of link', 5, 1, 0, 0),
       (159, 'Metroid II Return of samus', 5, 1, 0, 0),
       (160, 'Kirby\'s Dream land 2', 5, 1, 0, 0),
       (161, 'Wario land Super wario land 3', 5, 1, 0, 0),
       (162, 'Wario land II', 5, 1, 0, 0),
       (163, 'Wario land III', 5, 1, 0, 0),
       (164, 'The legend of Zelda Link\'s Awakening DX', 5, 1, 0, 0),
       (165, 'Game & Watch Gallery', 5, 1, 0, 0),
       (166, 'Prince of persia', 5, 1, 0, 0),
       (167, 'Tetris', 5, 1, 0, 0),
       (168, 'Super mario Bros Deluxe', 5, 1, 0, 0),
       (169, 'Pokémon trading card game', 5, 1, 0, 1),
       (170, 'Pokémon version bleu ', 5, 1, 0, 0),
       (171, 'Pokémon version rouge', 5, 1, 0, 0),
       (172, 'Pokémon version jaune', 5, 1, 0, 0),
       (173, 'Super mario land', 5, 1, 0, 0),
       (174, 'Super mario land 2', 5, 1, 0, 0),
       (175, 'The legend of zelda Oracle of ages', 5, 1, 0, 0),
       (176, 'The legend of zelda oracle of seasons', 5, 1, 0, 0),
       (177, 'Kirby\'s dream land', 5, 1, 0, 0),
       (178, 'Pokémon version or', 5, 1, 0, 0),
       (179, 'Pokémon version argent', 5, 1, 0, 0),
       (180, 'Pokémon version crystal', 5, 1, 0, 0),
       (181, 'Aura aura climber ', 5, 1, 0, 0),
       (182, 'Sonic blast', 5, 1, 0, 0),
       (183, 'Sonic the edgehoc triple trouble', 5, 1, 0, 0),
       (184, 'Pokémon soleil', 5, 1, 0, 0),
       (185, 'NeverWinter Nights : Forgotten Realms', 1, 1, 0, 0),
       (186, 'Elder Scroll : Arena', 1, 1, 0, 0),
       (187, 'The elder scroll II : Dagerfall', 1, 1, 0, 0),
       (188, 'The Elder Scroll IV : Oblivion', 1, 1, 0, 0),
       (189, 'Assassin\'s creed revelations', 3, 1, 0, 0),
       (190, 'final fantasy XIII', 3, 1, 0, 0),
       (191, 'Darksiders ', 3, 1, 0, 0),
       (192, 'Tales of Xillia', 3, 1, 0, 0),
       (193, 'Mass effect', 3, 1, 0, 0),
       (194, 'Mass effect II', 3, 1, 0, 0),
       (195, 'Mass effect III', 3, 1, 0, 0),
       (196, 'Metroid Other M', 8, 1, 0, 0),
       (197, 'Super Smash bros Brawl', 8, 1, 0, 0),
       (198, 'Warioware smooth moves', 8, 1, 0, 0),
       (199, 'Halo 4', 9, 1, 0, 0),
       (200, 'Mortal Kombat vs DC Universe', 9, 1, 0, 0),
       (201, 'Fable Anniversaire', 9, 1, 0, 0),
       (202, 'Fable III', 9, 1, 0, 0),
       (203, 'Soul Calibur V', 9, 1, 0, 0),
       (204, 'Luigi\'s Mansion', 10, 1, 0, 0),
       (205, 'Harry Potter Collection', 2, 1, 0, 0),
       (206, 'Darksiders II Deathinitive Edition', 2, 1, 0, 0),
       (207, 'Pokémon Channel', 10, 1, 0, 0),
       (208, 'Prince of persia les deux royaumes', 10, 1, 0, 0),
       (209, 'Mario Smash Football', 10, 1, 0, 0),
       (210, 'Super Smash Bros Melee', 10, 1, 0, 0),
       (211, 'Tales of Symphonia', 10, 1, 0, 0),
       (212, 'Super Smash Bros', 4, 1, 0, 0),
       (213, 'Kingdom Hearts 2.5 Remix ', 3, 1, 0, 0),
       (214, 'Kingdom Hearts III', 2, 1, 0, 0),
       (215, 'Crash Bandicoot N.Sane Trilogy', 2, 1, 0, 0),
       (216, 'Bayonetta', 4, 1, 0, 0),
       (217, 'Final Fantasy VI', 11, 1, 0, 0),
       (218, 'Injustice', 3, 1, 0, 0),
       (219, 'Final Fantasy X/X-2 Remastered', 3, 1, 0, 0),
       (220, 'One piece Pirate Warriors 3', 3, 1, 0, 0),
       (221, 'Les Sims 3', 1, 1, 0, 0),
       (222, 'New super mario bros', 5, 1, 0, 0),
       (223, 'Rocket League', 1, 1, 0, 0),
       (224, 'RollerCoaster Tycoon 3', 1, 1, 0, 0),
       (225, 'Prince Of Persia The Sands of time', 1, 1, 0, 0),
       (226, 'Prince of persia : Warrior Within', 1, 1, 0, 0),
       (227, 'Prince Of Persia : The Two Thrones', 1, 1, 0, 0),
       (228, 'Kingdom new Lands', 1, 1, 0, 0),
       (229, 'Amnesia : A machine for Pigs', 1, 1, 0, 0),
       (230, 'Final Fantasy Origins', 1, 1, 0, 0),
       (231, 'Costume Quest 2', 1, 1, 0, 0),
       (232, 'Layers of fear 2', 1, 1, 0, 0),
       (233, 'GhostBuster the video game', 1, 1, 0, 0),
       (234, 'Blair Witch', 1, 1, 0, 0),
       (235, 'Final fantasy dawn of stars', 1, 1, 0, 0),
       (236, 'Dungeon 3', 1, 1, 0, 0),
       (237, 'The Textorcist : The story of Ray Bibbia', 1, 1, 0, 0),
       (238, 'Assassin\'s creed black Flag', 1, 1, 0, 0),
       (239, 'Overcrowd a commute \'em up', 1, 1, 0, 0),
       (240, 'Assassin\'s creed Origins', 1, 1, 0, 0),
       (241, 'Assassin\'s creed Odyssey', 1, 1, 0, 0),
       (242, 'The dungeon of Naheulbeuk : The amulet of chaos', 1, 1, 0, 0),
       (243, 'Pokémon Version Bouclier', 12, 1, 0, 0),
       (244, 'Sonic Forces', 1, 1, 0, 0),
       (245, 'Super Seducer', 1, 1, 0, 0),
       (246, 'Super Seducer 2', 1, 1, 0, 0),
       (247, 'Kingdom Hearts 1.5', 1, 1, 0, 0),
       (248, 'Hell is other demons', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE `support`
(
    `id`  int(11)     NOT NULL,
    `nom` varchar(15) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

--
-- Déchargement des données de la table `support`
--

INSERT INTO `support` (`id`, `nom`)
VALUES (1, 'PC'),
       (2, 'PS4'),
       (3, 'PS3'),
       (4, 'Wii U'),
       (5, 'Nintendo 3DS'),
       (6, 'GameBoy Advance'),
       (7, 'GameBoy Color'),
       (8, 'Wii'),
       (9, 'Xbox 360'),
       (10, 'Gamecube'),
       (11, 'PlayStation'),
       (12, 'Nintendo Switch');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `game`
--
ALTER TABLE `game`
    ADD PRIMARY KEY (`id`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 249;

--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 14;
