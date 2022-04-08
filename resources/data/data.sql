-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 03 avr. 2022 à 13:42
-- Version du serveur :  10.5.15-MariaDB-0+deb11u1
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jeux`
--

-- --------------------------------------------------------

--
-- Structure de la table `console`
--

CREATE TABLE `console`
(
    `id_console` int(11)      NOT NULL,
    `name`       varchar(125) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Déchargement des données de la table `console`
--

INSERT INTO `console` (`id_console`, `name`)
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

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game`
(
    `id_game`    int(11)      NOT NULL,
    `name`       varchar(125) NOT NULL,
    `id_console` int(11)      NOT NULL,
    `status`     int(11)      NOT NULL DEFAULT 1
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id_game`, `name`, `id_console`, `status`)
VALUES (1, 'Death Coming', 1, 1),
       (2, 'Assassin\'s Creed Unity', 1, 1),
       (3, 'Beneath a Steel Sky', 1, 1),
       (4, 'Diablo', 1, 1),
       (5, 'DragonSphere', 1, 1),
       (6, 'Duke Nukem 3D', 1, 1),
       (7, 'Lure of the temptress', 1, 1),
       (8, 'prehistorik', 1, 1),
       (9, 'prehistorik 2', 1, 1),
       (10, 'Teen Agent', 1, 1),
       (11, 'Treasure Adventure Game', 1, 1),
       (12, 'Tyrian 2000', 1, 1),
       (13, 'Ultima 4 : Quest of the avatar', 1, 1),
       (14, 'Ultima Worlds of Adventure 2 : Martian Dreams', 1, 1),
       (15, 'Warcraft', 1, 1),
       (16, 'Warcraft II', 1, 1),
       (17, 'Warsow', 1, 1),
       (18, 'Worlds of Ultima : The savage empire', 1, 1),
       (19, 'World Of Warcraft', 1, 1),
       (20, 'Warcraft III', 1, 1),
       (21, 'Diablo III', 1, 1),
       (22, 'Starcraft', 1, 1),
       (23, 'Starcraft II', 1, 1),
       (24, 'Diablo II', 1, 1),
       (25, 'The Elder Scroll V : Skyrim', 1, 1),
       (26, 'The Elder Scroll V : Skyrim Special Edition', 1, 1),
       (27, 'Final Fantasy IX', 1, 1),
       (28, 'Age of Empires II', 1, 1),
       (29, 'Batman Arkham Asylum GOTY Edition', 1, 1),
       (30, 'Batman Arkham Origins', 1, 1),
       (31, 'Child of light', 1, 1),
       (32, 'Crash Bandicoot N.Sane Trilogy', 1, 1),
       (33, 'Dark souls II', 1, 1),
       (34, 'Dark Souls III', 1, 1),
       (35, 'Dark Souls Remastered', 1, 1),
       (36, 'Darksiders', 1, 1),
       (37, 'Darksiders II Deathinitive Edition', 1, 1),
       (38, 'Darksiders III', 1, 1),
       (39, 'Dishonored', 1, 1),
       (40, 'Doom', 1, 1),
       (41, 'Doom II : Hell on Earth', 1, 1),
       (42, 'Doom 3 : BFG Edition', 1, 1),
       (43, 'DOOM 64 ', 1, 1),
       (44, 'DOOM Eternal', 1, 1),
       (45, 'The Elder Scroll III : Morrowind', 1, 1),
       (46, 'The Elder Scroll Online', 1, 1),
       (47, 'F.E.A.R 3', 1, 1),
       (48, 'Fable The Lost Chapter', 1, 1),
       (49, 'Fallout', 1, 1),
       (50, 'Final Doom', 1, 1),
       (51, 'Final Fantasy III', 1, 1),
       (52, 'Final Fantasy IV', 1, 1),
       (53, 'Final Fantasy IV : The After Year', 1, 1),
       (54, 'Final Fantasy V', 1, 1),
       (55, 'Final Fantasy VI', 1, 1),
       (56, 'Final Fantasy VII', 1, 1),
       (57, 'Final Fantasy VIII', 1, 1),
       (58, 'Final Fantasy X/X-2 Remastered', 1, 1),
       (59, 'Grandia II HD Remastered', 1, 1),
       (60, 'Injustice 2', 1, 1),
       (61, 'Life Is Strange', 1, 1),
       (62, 'Magic the gathering : Duels of the planewalker 2012', 1, 1),
       (63, 'Magic Duels', 1, 1),
       (64, 'Master Levels For DOOM II', 1, 1),
       (65, 'Monster Hunter : World', 1, 1),
       (66, 'Neverwinter Night: Enhanced Edition', 1, 1),
       (67, 'Oddworld : Abe\'s Oddysee', 1, 1),
       (68, 'Oddworld : Abse\'s Exoddus', 1, 1),
       (69, 'Oddworld : Munch\'s Oddysee', 1, 1),
       (70, 'Oddworld : Stranger\'s Wrath', 1, 1),
       (71, 'Path of exile', 1, 1),
       (72, 'Sega Mega Drive & Genesis Classic', 1, 1),
       (73, 'Sonic & All-Stars racing Transformated collection', 1, 1),
       (74, 'Sonic Adventure 2', 1, 1),
       (75, 'Sonic Adventure DX', 1, 1),
       (76, 'Sonic and SEGA All Stars Racing', 1, 1),
       (77, 'Sonic CD', 1, 1),
       (78, 'Sonic Lost World', 1, 1),
       (79, 'Sonic Generations', 1, 1),
       (80, 'Sonic the edgehoc 4 Episode I', 1, 1),
       (81, 'Sonic The Edgehoc 4 Episode II', 1, 1),
       (82, 'Tales of Symphonia', 1, 1),
       (83, 'Tomb raider', 1, 1),
       (84, 'The ultimate DOOM', 1, 1),
       (85, 'The Witcher Enhanced Edition', 1, 1),
       (86, 'The Witcher II Assassins Of Kings Enhanced Edition', 1, 1),
       (87, 'The Witcher III Wild Hunt', 1, 1),
       (88, 'Mario Kart 8', 8, 1),
       (89, 'Pokémon Pinball Ruby & Sapphire', 4, 1),
       (90, 'Super Mario Galaxy 2', 4, 1),
       (91, 'Metroid Prime Trilogy', 4, 1),
       (92, 'Donkey Kong 64', 4, 1),
       (93, 'Super Mario 64', 4, 1),
       (94, 'Mario Kart DS', 4, 1),
       (95, 'WarioWare: Touched', 4, 1),
       (96, 'Warioware inc minigame mania', 4, 1),
       (97, 'Affordable space Adventures', 4, 1),
       (98, 'Final fantasy Tactics Advance', 4, 1),
       (99, 'Kingdom Hearts 1.5 Remix', 3, 1),
       (100, 'One piece romance dawn', 5, 1),
       (101, 'Pokémon rouge feu', 6, 1),
       (102, 'Sonic Advance', 6, 1),
       (103, 'Bomberman', 6, 1),
       (104, 'Golden Sun : l\'âge perdu', 6, 1),
       (105, 'Pokémon Pinball', 7, 1),
       (106, 'Pokémon Rubis', 6, 1),
       (107, 'Pokémon Saphir', 6, 1),
       (108, 'Final Fantasy Tactics Advance', 6, 1),
       (109, 'Golden Sun', 6, 1),
       (110, 'Pokémon Emeraude', 6, 1),
       (111, 'Pokémon Vert Feuille', 6, 1),
       (112, 'Kingdom Hearts chains of memories', 6, 1),
       (113, 'Pokémon Or', 7, 1),
       (114, 'Pokémon rouge', 7, 1),
       (115, 'Pokémon Argent', 7, 1),
       (116, 'Pokémon Jaune', 7, 1),
       (117, 'Tetris', 7, 1),
       (118, 'Pokémon bleu', 7, 1),
       (119, 'Super mario bros deluxe', 7, 1),
       (120, 'One piece Unlimited World', 5, 1),
       (121, 'Professeur Layton et le destin perdu', 5, 1),
       (122, 'Pokémon version blanche', 5, 1),
       (123, 'Pokémon Y', 5, 1),
       (124, 'Bravely default', 5, 1),
       (125, 'Pokémon Or HearthGold', 5, 1),
       (126, 'Pokémon Argent Soulsilver', 5, 1),
       (127, 'pokémon X', 5, 1),
       (128, 'Pokémon version noire', 5, 1),
       (129, 'Pokémon Platine', 5, 1),
       (130, 'Pokémon Diamant', 5, 1),
       (131, 'Pokémon Saphir Alpha', 5, 1),
       (132, 'Mario Party DS', 5, 1),
       (133, 'Super Seducer 3', 1, 1),
       (134, 'Pokémon rubis oméga', 5, 1),
       (135, 'Pokémon version blanche 2', 5, 1),
       (136, 'Pokémon version noire 2', 5, 1),
       (137, 'New Super mario bros 2', 5, 1),
       (138, 'MarioKart 7', 5, 1),
       (139, 'Fire Emblem Awakening', 5, 1),
       (140, 'Pokémon lune', 5, 1),
       (141, 'Kingdom hearts Dream drop distance', 5, 1),
       (142, 'Kingdom Hearts 358/2 days', 5, 1),
       (143, 'Pokémon perle', 5, 1),
       (144, 'Golden sun Obscure aurore', 5, 1),
       (145, 'Zelda a link between worlds', 5, 1),
       (146, 'Super mario 3D land', 5, 1),
       (147, 'Gunvolt', 5, 1),
       (148, 'Mighty Gunvolt', 5, 1),
       (149, 'Luigi\'s mansion 2', 5, 1),
       (150, 'Professeur Layton et le masque des miracles', 5, 1),
       (151, 'Super Pokémon Rumble', 5, 1),
       (152, 'Castlevania mirror of fate', 5, 1),
       (153, '3D classics : Kirby\'s Adventure', 5, 1),
       (154, 'Super Mario Bros', 5, 1),
       (155, 'Super Mario Bros II', 5, 1),
       (156, 'Super Mario Bros III', 5, 1),
       (157, 'The legend of zelda', 5, 1),
       (158, 'Zelda II : the adventure of link', 5, 1),
       (159, 'Metroid II Return of samus', 5, 1),
       (160, 'Kirby\'s Dream land 2', 5, 1),
       (161, 'Wario land Super wario land 3', 5, 1),
       (162, 'Wario land II', 5, 1),
       (163, 'Wario land III', 5, 1),
       (164, 'The legend of Zelda Link\'s Awakening DX', 5, 1),
       (165, 'Game & Watch Gallery', 5, 1),
       (166, 'Prince of persia', 5, 1),
       (167, 'Tetris', 5, 1),
       (168, 'Super mario Bros Deluxe', 5, 1),
       (169, 'Pokémon trading card game', 5, 1),
       (170, 'Pokémon version bleu ', 5, 1),
       (171, 'Pokémon version rouge', 5, 1),
       (172, 'Pokémon version jaune', 5, 1),
       (173, 'Super mario land', 5, 1),
       (174, 'Super mario land 2', 5, 1),
       (175, 'The legend of zelda Oracle of ages', 5, 1),
       (176, 'The legend of zelda oracle of seasons', 5, 1),
       (177, 'Kirby\'s dream land', 5, 1),
       (178, 'Pokémon version or', 5, 1),
       (179, 'Pokémon version argent', 5, 1),
       (180, 'Pokémon version crystal', 5, 1),
       (181, 'Aura aura climber ', 5, 1),
       (182, 'Sonic blast', 5, 1),
       (183, 'Sonic the edgehoc triple trouble', 5, 1),
       (184, 'Pokémon soleil', 5, 1),
       (185, 'NeverWinter Nights : Forgotten Realms', 1, 1),
       (186, 'Elder Scroll : Arena', 1, 1),
       (187, 'The elder scroll II : Dagerfall', 1, 1),
       (188, 'The Elder Scroll IV : Oblivion', 1, 1),
       (189, 'Assassin\'s creed revelations', 3, 1),
       (190, 'final fantasy XIII', 3, 1),
       (191, 'Darksiders ', 3, 1),
       (192, 'Tales of Xillia', 3, 1),
       (193, 'Mass effect', 3, 1),
       (194, 'Mass effect II', 3, 1),
       (195, 'Mass effect III', 3, 1),
       (196, 'Metroid Other M', 8, 1),
       (197, 'Super Smash bros Brawl', 8, 1),
       (198, 'Warioware smooth moves', 8, 1),
       (199, 'Halo 4', 1, 1),
       (200, 'Mortal Kombat vs DC Universe', 9, 1),
       (201, 'Fable Anniversaire', 9, 1),
       (202, 'Fable III', 9, 1),
       (203, 'Soul Calibur V', 9, 1),
       (204, 'Luigi\'s Mansion', 10, 1),
       (205, 'Harry Potter Collection', 2, 1),
       (206, 'Darksiders II Deathinitive Edition', 2, 1),
       (207, 'Pokémon Channel', 10, 1),
       (208, 'Prince of persia les deux royaumes', 10, 1),
       (209, 'Mario Smash Football', 10, 1),
       (210, 'Super Smash Bros Melee', 10, 1),
       (211, 'Tales of Symphonia', 10, 1),
       (212, 'Super Smash Bros', 4, 1),
       (213, 'Kingdom Hearts 2.5 Remix ', 3, 1),
       (214, 'Kingdom Hearts III', 2, 1),
       (215, 'Crash Bandicoot N.Sane Trilogy', 2, 1),
       (216, 'Bayonetta', 4, 1),
       (217, 'Final Fantasy VI', 11, 1),
       (218, 'Injustice', 3, 1),
       (219, 'Final Fantasy X/X-2 Remastered', 3, 1),
       (220, 'One piece Pirate Warriors 3', 3, 1),
       (221, 'Les Sims 3', 1, 1),
       (222, 'New super mario bros', 5, 1),
       (223, 'Rocket League', 1, 1),
       (224, 'RollerCoaster Tycoon 3', 1, 1),
       (225, 'Prince Of Persia The Sands of time', 1, 1),
       (226, 'Prince of persia : Warrior Within', 1, 1),
       (227, 'Prince Of Persia : The Two Thrones', 1, 1),
       (228, 'Kingdom new Lands', 1, 1),
       (229, 'Amnesia : A machine for Pigs', 1, 1),
       (230, 'Final Fantasy Origins', 1, 1),
       (231, 'Costume Quest 2', 1, 1),
       (232, 'Layers of fear 2', 1, 1),
       (233, 'GhostBuster the video game', 1, 1),
       (234, 'Blair Witch', 1, 1),
       (235, 'Final fantasy dawn of stars', 1, 1),
       (236, 'Dungeon 3', 1, 1),
       (237, 'The Textorcist : The story of Ray Bibbia', 1, 1),
       (238, 'Assassin\'s creed black Flag', 1, 1),
       (239, 'Overcrowd a commute \'em up', 1, 1),
       (240, 'Assassin\'s creed Origins', 1, 1),
       (241, 'Assassin\'s creed Odyssey', 1, 1),
       (242, 'The dungeon of Naheulbeuk : The amulet of chaos', 1, 1),
       (243, 'Pokémon Version Bouclier', 12, 1),
       (244, 'Sonic Forces', 1, 1),
       (245, 'Super Seducer', 1, 1),
       (246, 'Super Seducer 2', 1, 1),
       (247, 'Kingdom Hearts 1.5', 1, 1),
       (248, 'Hell is other demons', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `console`
--
ALTER TABLE `console`
    ADD PRIMARY KEY (`id_console`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
    ADD PRIMARY KEY (`id_game`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `console`
--
ALTER TABLE `console`
    MODIFY `id_console` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 13;

--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
    MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 249;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
