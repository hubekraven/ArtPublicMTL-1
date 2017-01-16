-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 11 Janvier 2017 à 16:51
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `artpublicmtl`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `nom` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `motDePasse` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`nom`, `motDePasse`) VALUES
('artpublicmtl', 'adcdbf2d0d8c4c9053256256831136cf'),
('totolemagicien', 'c83663d1c69a2024012428f0cdb2c45b');

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

DROP TABLE IF EXISTS `arrondissement`;
CREATE TABLE IF NOT EXISTS `arrondissement` (
  `nom` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `arrondissement`
--

INSERT INTO `arrondissement` (`nom`) VALUES
('Ahuntsic-Cartierville'),
('Anjou'),
('Baie-d''UrfÃ©'),
('Beaconsfield'),
('CÃ´te-des-Neiges-Notre-Dame-de-GrÃ¢ce'),
('CÃ´te-Saint-Luc'),
('Dollard-des-Ormeaux'),
('Dorval'),
('Hampstead'),
('Kirkland'),
('L''ÃŽle-Bizard-Sainte-GeneviÃ¨ve'),
('L''ÃŽle-Dorval'),
('Lachine'),
('LaSalle'),
('Le Plateau-Mont-Royal'),
('Le Sud-Ouest'),
('Mercier-Hochelaga-Maisonneuve'),
('Mont-Royal'),
('MontrÃ©al-Est'),
('MontrÃ©al-Nord'),
('MontrÃ©al-Ouest'),
('Outremont'),
('Pierrefonds-Roxboro'),
('Pointe-Claire'),
('RiviÃ¨re-des-Prairies-Pointe-aux-Trembles'),
('Rosemont-La Petite-Patrie'),
('Saint-Laurent'),
('Saint-LÃ©onard'),
('Sainte-Anne-de-Bellevue'),
('Senneville'),
('Verdun'),
('Ville-Marie'),
('Villeray-Saint-Michel-Parc-Extension'),
('Westmount');

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nomCollectif` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `biographie` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `sommesArtistes` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`)
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `noInterne`, `nom`, `prenom`, `nomCollectif`, `biographie`, `valide`) VALUES
(444, 960, 'Coutu', 'Patrick', NULL, NULL, 0),
(445, 1098, 'Alloucherie', 'Jocelyne', NULL, NULL, 0),
(450, 1135, 'Angers', 'Pierre Yves', NULL, NULL, 0),
(458, 1152, 'Arsenault', 'Denise', NULL, NULL, 0),
(459, 1394, 'Antoci', 'Rosario', NULL, NULL, 0),
(460, 1396, 'Aquino', 'Eduardo', NULL, NULL, 0),
(473, 6661, 'Streubel', 'Heinrich', NULL, NULL, 0),
(474, 1398, 'Inconnu', 'Auteur', NULL, NULL, 0),
(477, 3091, 'Pootoogook', 'Elijah Pudlat', NULL, NULL, 0),
(502, 1408, 'Baier', 'Nicolas', NULL, NULL, 0),
(503, 1174, 'Balboni', 'Carlo', NULL, NULL, 0),
(504, 1177, 'Benet', 'EugÃ¨ne-Paul', NULL, NULL, 0),
(505, 1179, 'Berezowsky', 'Liliana', NULL, NULL, 0),
(506, 1180, 'Bergeron', 'Germain', NULL, 'NÃ© Ã  Sainte-PerpÃ©tue de Nicolet, Germain Bergeron est dâ€™abord frÃ¨re de la congrÃ©gation de Sainte-Croix. Il dÃ©tient un baccalaurÃ©at Ã¨s arts de lâ€™UniversitÃ© de MontrÃ©al (1963) et une maÃ®trise en arts de lâ€™UniversitÃ© Notre-Dame, en Indiana', 0),
(507, 1433, 'BÃ©rubÃ©', 'Patrick', NULL, NULL, 0),
(508, 1183, 'Boisvert', 'Gilles', NULL, NULL, 0),
(510, 1184, 'Borduas', 'Paul', NULL, NULL, 0),
(511, 1453, 'Borduas', 'Paul-Ã‰mile', NULL, NULL, 0),
(613, 1458, 'Boudot', 'Lucien', NULL, NULL, 0),
(614, 1462, 'Bourassa', 'Guy', NULL, NULL, 0),
(615, 1185, 'Bourgault', 'Pierre', NULL, NULL, 0),
(616, 1473, 'BriÃ¨re', 'Marie-France', NULL, NULL, 0),
(617, 1188, 'Brunet', 'Ã‰mile', NULL, NULL, 0),
(619, 1189, 'Buren', 'Daniel', NULL, NULL, 0),
(620, 1190, 'Burman', 'Irving', NULL, NULL, 0),
(621, 1191, 'Cadieux', 'Alain', NULL, NULL, 0),
(622, 1192, 'Calder', 'Alexander', NULL, NULL, 0),
(623, 1193, 'Cantieni', 'Graham', NULL, NULL, 0),
(624, 1194, 'Cardenas', 'Augustin', NULL, NULL, 0),
(625, 1195, 'Carpentier', 'Jacques', NULL, NULL, 0),
(841, 1196, 'Casini', 'Guido', NULL, NULL, 0),
(1232, 1200, NULL, NULL, 'Cooke-Sasseville', NULL, 0),
(1233, 1515, 'Covit', 'Linda', NULL, NULL, 0),
(1237, 1202, 'Daoust', 'Sylvia', NULL, NULL, 0),
(1238, 1203, 'Dardel', 'RenÃ©', NULL, NULL, 0),
(1239, 1204, 'Daudelin', 'Charles', NULL, NULL, 0),
(1243, 1205, 'De Almeida', 'Charters', NULL, NULL, 0),
(1244, 1206, 'De Broin', 'Michel', NULL, NULL, 0),
(1246, 1207, 'De Leon Imao', 'Abdulmari Jr.', NULL, NULL, 0),
(1247, 1208, 'De Palma', 'Armand', NULL, NULL, 0),
(1248, 1547, 'De Tonnancour', 'Jacques', NULL, NULL, 0),
(1249, 1209, 'DebrÃ©', 'Olivier', NULL, NULL, 0),
(1250, 1210, 'Delavalle', 'Jean-Marie', NULL, NULL, 0),
(1251, 1552, 'Delfosse', 'George', NULL, NULL, 0),
(1252, 1211, 'DÃ©midoff-SÃ©guin', 'Tatiana', NULL, NULL, 0),
(1254, 1212, 'Dubois', 'Pierre-Gilles', NULL, NULL, 0),
(1255, 1213, 'Dubray', 'Vital', NULL, NULL, 0),
(1256, 1214, 'Dumouchel', 'AgnÃ¨s', NULL, NULL, 0),
(1257, 1215, 'Duval', 'Lucie', NULL, NULL, 0),
(1259, 1219, 'Dyens', 'Georges', NULL, NULL, 0),
(1260, 1220, 'Edstrom', 'Peter David', NULL, NULL, 0),
(1261, 1221, 'Eloul', 'Kosso', NULL, NULL, 0),
(1262, 1572, 'Faniel', 'Alfred', NULL, NULL, 0),
(1263, 1574, 'Farley', 'Denis', NULL, NULL, 0),
(1264, 1575, 'Filion', 'Armand', NULL, NULL, 0),
(1266, 1576, 'Fiorucci', 'Vittorio', NULL, NULL, 0),
(1268, 1223, 'Fontaine', 'Lorraine', NULL, NULL, 0),
(1269, 1584, 'Fortin', 'Marc-AurÃ¨le', NULL, NULL, 0),
(1270, 1222, 'Fournelle', 'AndrÃ©', NULL, NULL, 0),
(1275, 1225, 'Galipeau', 'Benoit', NULL, NULL, 0),
(1276, 1226, 'Gavoty', 'Jean-FranÃ§ois', NULL, NULL, 0),
(1277, 1227, 'Gladstone', 'Gerald', NULL, NULL, 0),
(1278, 1228, 'Gnass', 'Peter', NULL, NULL, 0),
(1279, 1229, 'Gokakis', 'Spyros', NULL, NULL, 0),
(1280, 1230, 'Gorduz', 'Vasile', NULL, NULL, 0),
(1281, 1231, 'Goulet', 'Michel', NULL, NULL, 0),
(1287, 1232, 'Goulet', 'Rose-Marie', NULL, NULL, 0),
(1290, 1233, 'Granche', 'Pierre', NULL, NULL, 0),
(1291, 1234, 'Granet', 'Roseline', NULL, NULL, 0),
(1293, 1236, 'Hayeur', 'Isabelle', NULL, NULL, 0),
(1294, 1645, 'HÃ©bert', 'Adrien', NULL, NULL, 0),
(1295, 1237, 'HÃ©bert', 'Henri', NULL, NULL, 0),
(1297, 1653, 'HÃ©bert', 'Jacques', NULL, NULL, 0),
(1298, 1238, 'HÃ©bert', 'Louis-Philippe', NULL, NULL, 0),
(1302, 1239, 'Heyvaert', 'Pierre', NULL, NULL, 0),
(1303, 1240, 'Hill', 'George William', NULL, NULL, 0),
(1306, 1671, 'Holgate', 'Edwin H.', NULL, NULL, 0),
(1307, 1242, 'Hunt', 'Henry', NULL, NULL, 0),
(1308, 1243, 'Hunter', 'Raoul', NULL, NULL, 0),
(1310, 1246, 'Jarnuszkiewicz', 'Jacek', NULL, NULL, 0),
(1311, 1681, 'Keyt', 'George', NULL, NULL, 0),
(1312, 1247, 'Lachapelle', 'Guillaume', NULL, NULL, 0),
(1314, 1248, 'LalibertÃ©', 'Alfred', NULL, NULL, 0),
(1319, 1694, 'Lamarche', 'Claude', NULL, NULL, 0),
(1322, 1249, 'Lancz', 'Paul', NULL, NULL, 0),
(1325, 1250, 'Langevin', 'Roger', NULL, NULL, 0),
(1327, 1707, 'Lapalme', 'Robert', NULL, NULL, 0),
(1328, 1709, 'Lapointe', 'MichÃ¨le', NULL, NULL, 0),
(1330, 1251, 'LarivÃ©e', 'Francine', NULL, NULL, 0),
(1331, 1252, 'LariviÃ¨re', 'Gilles', NULL, NULL, 0),
(1332, 1253, 'Lasalle', 'Jules', NULL, NULL, 0),
(1337, 1254, 'Lawson', 'Georges Anderson', NULL, NULL, 0),
(1338, 1255, 'Leblanc', 'Pierre', NULL, NULL, 0),
(1344, 1257, 'Lebourg', 'Charles-Auguste', NULL, NULL, 0),
(1345, 1258, 'Leclerc', 'Pierre E.', NULL, NULL, 0),
(1346, 1256, 'LefÃ©bure', 'Jean', NULL, NULL, 0),
(1347, 1260, 'Lemieux', 'F. Maurice', NULL, NULL, 0),
(1352, 1259, 'Lemieux', 'Lisette', NULL, NULL, 0),
(1356, 1262, NULL, NULL, 'Les Industries perdues', NULL, 0),
(1357, 1263, 'Lui', 'Andrew', NULL, NULL, 0),
(1358, 1264, 'Maler', 'Miroslav Frederik', NULL, NULL, 0),
(1360, 1772, 'McCarthy', 'Coeur de lion', NULL, NULL, 0),
(1361, 1241, 'Hilton-Moore', 'Marlene', NULL, NULL, 0),
(1362, 1775, 'Merola', 'Mario', NULL, NULL, 0),
(1364, 1266, 'Mihalcean', 'Gilles', NULL, NULL, 0),
(1367, 1267, 'Millette', 'Claude', NULL, NULL, 0),
(1371, 2786, 'Mitchell', 'Robert', NULL, NULL, 0),
(1372, 1270, 'Moore', 'David', NULL, NULL, 0),
(1373, 1797, 'Moreau', 'Mathurin', NULL, NULL, 0),
(1374, 1271, 'Morin', 'Jean-Pierre', NULL, NULL, 0),
(1376, 1802, 'Morin', 'Madeleine', NULL, NULL, 0),
(1377, 1804, 'Morosoli', 'JoÃ«lle', NULL, NULL, 0),
(1378, 1805, 'Mott', 'J.L.', NULL, NULL, 0),
(1380, 1272, 'Nadeau', 'Guy', NULL, NULL, 0),
(1382, 1806, 'Nadeau', 'Marc-Antoine', NULL, NULL, 0),
(1383, 1273, 'Narita', 'Takera', NULL, NULL, 0),
(1384, 1274, 'Nepveu', 'Robert', NULL, NULL, 0),
(1385, 1275, 'Olariu', 'Octavian', NULL, NULL, 0),
(1386, 1808, 'O''Shea', 'John Patrick', NULL, NULL, 0),
(1387, 1829, 'Paiement', 'Alain', NULL, NULL, 0),
(1389, 1276, 'Pang', 'Tin Neon', NULL, NULL, 0),
(1390, 1277, 'Pellegrinuzzi', 'Roberto', NULL, NULL, 0),
(1392, 1830, 'Pellerin', 'Guy', NULL, NULL, 0),
(1393, 1278, 'Pelletier', 'Robert', NULL, NULL, 0),
(1394, 1831, 'Pellus', 'Raymond', NULL, NULL, 0),
(1395, 1279, 'Pelzer', 'Alfonso', NULL, NULL, 0),
(1396, 1280, 'Pillhofer', 'Josef', NULL, NULL, 0),
(1397, 1832, 'Pilot', 'Robert', NULL, NULL, 0),
(1398, 1282, 'Planes', 'JosÃ©', NULL, NULL, 0),
(1399, 1283, 'Poliquin', 'Jean-NoÃ«l', NULL, NULL, 0),
(1400, 1285, 'Poulin', 'Roland', NULL, NULL, 0),
(1401, 1286, 'Prent', 'Mark', NULL, NULL, 0),
(1402, 1288, 'Reddy', 'Krishna', NULL, NULL, 0),
(1403, 1846, 'Reusch', 'Astri', NULL, NULL, 0),
(1404, 1849, 'Rochette', 'Sylvie', NULL, NULL, 0),
(1405, 2883, 'Rolland', 'Dominique', NULL, NULL, 0),
(1407, 1291, 'Roussil', 'Robert', NULL, NULL, 0),
(1411, 1293, 'Sandonato', 'Aurelio', NULL, NULL, 0),
(1412, 1294, 'Santini', 'Laura', NULL, NULL, 0),
(1413, 1295, 'Saxe', 'Henry', NULL, NULL, 0),
(1414, 1296, 'Schleeh', 'Hans', NULL, NULL, 0),
(1415, 1297, 'Sebastian', NULL, NULL, NULL, 0),
(1416, 1850, 'Si Tu', 'Jie', NULL, NULL, 0),
(1417, 1298, 'Signori', 'Carlos Sergio', NULL, NULL, 0),
(1418, 1299, 'Sklavos', 'YÃ©rassimo (Gerasimos)', NULL, NULL, 0),
(1419, 1300, 'Szekely', 'Pierre', NULL, NULL, 0),
(1420, 1902, 'Taccola', 'U', NULL, NULL, 0),
(1421, 1904, 'Taylor', 'William Hughes', NULL, NULL, 0),
(1422, 1905, 'Tett', 'Alison', NULL, NULL, 0),
(1424, 1301, 'ThÃ©berge', 'Claude', NULL, NULL, 0),
(1426, 1302, 'Thorvaldsen', 'Berthel', NULL, NULL, 0),
(1427, 1908, 'Topham', 'William Thurston', NULL, NULL, 0),
(1428, 1303, 'Toto', 'Carlos Maria', NULL, NULL, 0),
(1429, 1304, 'Trudeau', 'Yves', NULL, NULL, 0),
(1432, 1305, 'Vaillancourt', 'Armand', NULL, NULL, 0),
(1437, 1306, 'Valade', 'Dominique', NULL, NULL, 0),
(1441, 1909, 'Van Der Heide', 'Herman J.', NULL, NULL, 0),
(1442, 1307, 'Vazan', 'Bill', NULL, NULL, 0),
(1445, 1910, 'VÃ©giard', 'Alfonse', NULL, NULL, 0),
(1446, 1911, 'Vermette', 'Claude', NULL, NULL, 0),
(1447, 1308, 'Viger', 'Louise', NULL, NULL, 0),
(1448, 1309, 'Vincent', 'Joseph-Arthur', NULL, NULL, 0),
(1449, 1310, 'Vivot', 'LÃ©a', NULL, NULL, 0),
(1450, 1311, 'Wade', 'George Edward', NULL, NULL, 0),
(1451, 1312, 'Widgery', 'Catherine', NULL, NULL, 0),
(1453, 1313, 'Winant', 'Alice', NULL, NULL, 0),
(1454, 1314, 'Witebsky', 'Shirley', NULL, NULL, 0),
(1455, 1315, 'Wood', 'Marshall', NULL, NULL, 0),
(1456, 1284, 'Pelletier', 'Luce', NULL, NULL, 0),
(1457, 1235, 'Hannah', 'Adad', NULL, NULL, 0),
(1458, 3094, 'Lauda', 'Jiri Georges', NULL, NULL, 0),
(1459, 1178, 'BÃ©langer', 'GwenaÃ«l', NULL, NULL, 0),
(1460, 1181, 'Besner', 'Jean-Jacques', NULL, NULL, 0),
(1461, 5598, NULL, NULL, 'Daily tous les jours', NULL, 0),
(1462, 3103, 'Montillaud', 'Francis', NULL, NULL, 0),
(1463, 3106, 'Wilson', 'Robert', NULL, NULL, 0),
(1464, 1182, 'Bisson', 'Yvette', NULL, NULL, 0),
(1465, 5797, 'Sylvain', 'Catherine', NULL, NULL, 0),
(1466, 6671, NULL, NULL, 'BGL', NULL, 0),
(1467, NULL, NULL, NULL, 'En Masse', 'EN MASSE est un projet montrÃ©alais de crÃ©ation collaborative. Il sâ€™illustre grÃ¢ce aux nombreux artistes qui unissent leur talent et leur spontanÃ©itÃ© pour dessiner dâ€™immenses murales en noir et blanc.', 0),
(1468, NULL, NULL, NULL, 'In Situ', 'Le collectif in situ atelier dâ€™architecture, Annie Lebel et StÃ©phane Pratte, travaille depuis 1995 Ã  dÃ©finir une pratique architecturale multidisciplinaire: mobilier, design intÃ©rieur, installation, musÃ©ographie, architecture rÃ©sidentielle, culturelle, commerciale', 0),
(1469, NULL, 'Ingberg', 'Hal', NULL, 'Ã€ la fois architecte et artiste, Hal Ingberg termine son baccalaurÃ©at en architecture Ã  lâ€™UniversitÃ© McGill, en 1985. Il complÃ¨te sa formation par une maÃ®trise en architecture au Southern California Institute of Architecture, Ã  Los Angeles, quâ€™il obtient en 1988.', 0);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `artisteavecoeuvre`
--
DROP VIEW IF EXISTS `artisteavecoeuvre`;
CREATE TABLE IF NOT EXISTS `artisteavecoeuvre` (
`nomCollectif` varchar(50)
,`nom` varchar(50)
,`prenom` varchar(50)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la table `a_propos`
--

DROP TABLE IF EXISTS `a_propos`;
CREATE TABLE IF NOT EXISTS `a_propos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sommesT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `sommesD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `missionT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `missionD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `joindreT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `joindreD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `partenaireT` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `partenaireD` varchar(3000) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `a_propos`
--

INSERT INTO `a_propos` (`id`, `sommesT`, `sommesD`, `missionT`, `missionD`, `joindreT`, `joindreD`, `partenaireT`, `partenaireD`) VALUES
(25, 'Qui sommes nous?', 'ArtPublicMTL est un site rÃ©alisÃ© pour et par la Ville de MontrÃ©al en collaboration avec tourisme MontrÃ©al. Son but est de promouvoir la collection artistique publique de la Ville. Vous pourriez accÃ©der Ã  une liste exhaustive de toutes les oeuvres gÃ©o-localisÃ©es de MontrÃ©al, ainsi qu''Ã  la liste de tous les artistes.                 ', 'Notre mission', 'En sillonnant les rues de MontrÃ©al, il vous est sans doute dÃ©jÃ  arrivÃ© de tomber, par hasard, sur une oevre d''art placÃ©e lÃ , tout bonnement, au coin de la rue ou vous travaillez, par exemple, ou au cafÃ© que vous affectionnez. Qui sait? Des oeuvres, Ã  l''effigie de Paul-Ã‰mile Borduas, de FÃ©lix Leclerc en passant par la chasse Galerie jusqu''Ã  Gilles Vigneault. Oui, MontrÃ©al  regorge de plus de 300 oeuvres rappelant que MontrÃ©al est bel est bien une ville culturellement riche. Qui a dit qu''admirer des oeuvres d''art se faisait seulement Ã  l''intÃ©rieur des murs d''un musÃ©e? Ici, l''art est public! Et, constituer un rÃ©pertoire de ces oeuvres est prÃ©cisÃ©ment la toute premiÃ¨re mission d''ARTPUBLIC.                ', 'Nous joindre', 'Pour nous joindre, contactez: <a href=mailto:artpublic@montreal.qc>artpublic@montreal.qc</a>', 'Nos partenaire', 'Grande BibliothÃ¨que - BAnQ <br />\r\nVille de MontrÃ©al <br />\r\nCineplex');

-- --------------------------------------------------------

--
-- Structure de la table `caroussel`
--

DROP TABLE IF EXISTS `caroussel`;
CREATE TABLE IF NOT EXISTS `caroussel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlImage` varchar(200) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `caroussel`
--

INSERT INTO `caroussel` (`id`, `urlImage`) VALUES
(18, 'images/img5875a94eed529-paulemileborduas.JPG'),
(19, 'images/img5875a9587f985-circuit-de-bachelard.JPG'),
(20, 'http://localhost/ArtPublicMTL/images/img58764bb47a892-HistoireMusiqueMtl.JPG'),
(21, 'http://localhost/ArtPublicMTL/images/img5875a03985b59-arretsurimage.JPG'),
(22, 'http://localhost/ArtPublicMTL/images/img5875a0e12f1b5-arret-sur-image.JPG'),
(23, 'http://localhost/ArtPublicMTL/images/img5875a1a18319d-chromazone.JPG'),
(24, 'http://localhost/ArtPublicMTL/images/img58764cc36e775-translucide.JPG'),
(25, 'images/img5876501747a1d-Sault-saint-louis.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `nom` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`nom`) VALUES
('Ã‰maux'),
('Bois/menuiserie d''art'),
('CÃ©ramique'),
('Design industriel'),
('Installation'),
('Mobilier'),
('Mosaique'),
('MultimÃ©dia'),
('Peinture'),
('Photographie'),
('Sculpture'),
('Techniques mixtes'),
('Verre'),
('Vitrail');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `titre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `titreVariante` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nomCollection` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorieObjet` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `modeAcquisition` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dateAccession` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `materiaux` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `support` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `technique` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dimensionsGenerales` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `parc` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `batiment` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `adresseCivique` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLatitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `coordonneeLongitude` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mediums` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numeroAccession` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `urlImage` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `arrondissement` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `categorie` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `idArtiste` int(1) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `sommesOeuvre` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`),
  KEY `idArtiste` (`idArtiste`),
  KEY `arrondissement` (`arrondissement`),
  KEY `categorie` (`categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=1902 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(610, 962, 'Source', NULL, 'Art public', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1270785600000-0400)/', 'Bronze', NULL, 'Bronze coulÃ©; boulonnÃ©', '549 x 466 x 466 cm', 'Parc Benny', 'Centre sportif Notre-Dame-de GrÃ¢ce', '6445, avenue Monkland, MontrÃ©al', '45.466405', '-73.631648', NULL, '2010-AP-SC-0011', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Sculpture', 444, 1),
(611, 1099, 'Porte de jour', 'Une porte rouge (ouverte, rougeÃ¢tre, solaire)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1082865600000-0400)/', 'acier corten', NULL, 'SoudÃ©', '298 x 350 x 1070 cm', 'Square Dalhousie', NULL, NULL, '45.512090', '-73.550979', NULL, '2004-SC-08', '', '', 'Ville-Marie', 'Installation', 445, 1),
(612, 1119, 'Regarder les pommetiers', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(1156996800000-0400)/', 'Acier corten; granit', NULL, 'TaillÃ©; assemblÃ©', '294 x 600 x 182', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al (QC) H1X 2B2', '45.561585', '-73.562673', NULL, '2007-SC-01', '', '', 'Rosemontâ€“La Petite-Patrie', 'Installation', 445, 1),
(613, 1151, 'Discours du roi poÃ¨te', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Calcaire', NULL, NULL, '233 X 56 X 63 cm', 'Place Roland-Proulx', NULL, NULL, '45.472390', '-73.584704', NULL, '1982-APE-SC-18', '', '', 'Le Sud-Ouest', 'Sculpture', 458, 1),
(614, 1393, 'La source', 'Sergenti', 'Art public', 'Beaux-arts', 'Don', '/Date(978325200000-0500)/', 'Calcaire', NULL, 'TaillÃ©', NULL, 'Parc Guglielmo-Marconi', NULL, NULL, '45.534752', '-73.617845', NULL, '2001-SC-10', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 459, 1),
(615, 1397, 'Vous Ãªtes ici', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Autre', NULL, 'Aluminium; DEL', NULL, NULL, '3000 x 1000 cm', NULL, 'Maison de la culture Maisonneuve', '4200, rue Ontario Est, MontrÃ©al, H1V 1K1', '45.551183', '-73.540539', NULL, '2006-IA-IN-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Installation', 460, 1),
(628, 1399, 'Non titrÃ© (Murale en relief et sculpture)', 'Murale en relief et sculpture (extÃ©rieur)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre du Plateau', '2275 boul.St-Joseph Est, MontrÃ©al, (Qc) H2H 1G4', '45.539713', '-73.576110', NULL, '1962-IA-SC-0001', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 473, 1),
(629, 1401, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BibliothÃ¨que Mile-End', '5434 Avenue du Parc, MontrÃ©al, QC H2V 4G7', '45.521778', '-73.601548', NULL, '1898-IA-VT-0001', '', '', 'Le Plateau-Mont-Royal', 'Vitrail', 474, 1),
(630, 1402, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ã‰difice Gaston-Miron', '1210, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec) H2L 1L9', '45.522741', '-73.565331', NULL, '1917-IA-VT-0001', '', '', 'Ville-Marie', 'Vitrail', 474, 1),
(631, 1403, 'Non titrÃ© (Vitraux)', 'Vitraux', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre Laurier', '1115 Laurier Est, MontrÃ©al', '45.531814', '-73.587131', NULL, '1930-IA-VT-0001', '', '', 'Le Plateau-Mont-Royal', 'Vitrail', 474, 1),
(632, 1404, 'Non titrÃ© (Murale inuit)', 'Murale inuit', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, ÃŽle Notre-Dame', 'Pavillon de l''administration, parc Jean-Drapeau', '1 Circuit Gilles Villeneuve ÃŽle Notre-Dame, MontrÃ©al, QuÃ©bec, H3C 1A9', '45.503792', '-73.529322', NULL, '1967-IA-PE-0001', '', '', 'Ville-Marie', 'Peinture', 477, 1),
(655, 1406, 'Non titrÃ© (Murale peinte)', 'Murale peinte', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Inconnu', NULL, 'Peinture', NULL, 'Å’uvre peinte', NULL, 'Parc Marcel-LÃ©ger', 'Maison Antoine-Beaudry', '14 678 Rue Notre-Dame Est, MontrÃ©al, QC H1A 1W1', '45.676603', '-73.491423', NULL, '1850-IA-PE-0001', '', '', 'RiviÃ¨re-des-Prairiesâ€“Pointe-aux-Trembles', 'Peinture', 474, 1),
(656, 1407, 'Non titrÃ© (Fontaine, mosaÃ¯que)', 'Fontaine (mosaÃ¯que)', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Station de pompage centrale (Atwater)', '3161, rue Joseph, MontrÃ©al', '45.472308', '-73.572944', NULL, '1918-IA-MO-0001', '', '', 'Le Sud-Ouest', 'Mosaique', 474, 1),
(657, 1415, 'Chibouki', 'Chiboukis', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Autre', '/Date(1136869200000-0500)/', 'Papier', NULL, 'Impression numÃ©rique', '122 x 122cm', NULL, 'BibliothÃ¨que interculturelle de CÃ´te-des-Neiges', '6767, chemin de la CÃ´te-des-Neiges, MontrÃ©al, QC, H3T 1Y4', '45.503302', '-73.636776', NULL, '2006-IA-PH-0004', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Photographie', 502, 1),
(658, 1416, 'La mort de Dante', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1546282800000-0500)/', 'Bronze; granit', NULL, 'CoulÃ©', '390 x 250 x 210 cm', 'Parc Dante', NULL, NULL, '45.534445', '-73.611721', NULL, '900908.0', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 503, 1),
(659, 1426, 'Monument Ã  Jean Vauquelin', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '680cm x 400 cm x 400 cm approximatif', 'Place Vauquelin', NULL, NULL, '45.508588', '-73.554655', NULL, '900935.0', '', '', 'Ville-Marie', 'Sculpture', 504, 1),
(660, 1428, 'Smoke and steel', NULL, 'Art public', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, '260 x 60 x 90 cm', NULL, 'Caserne d''incendie 22', '5455, rue Antonio-Dagenais, Saint-LÃ©onard (QuÃ©bec) H1S 2X3', '45.582705', '-73.585774', NULL, '', '', '', 'Saint-LÃ©onard', 'Sculpture', 505, 1),
(661, 1431, 'Le cycliste', '', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', '', 'SoudÃ©; peint', '425 x 140 x 539 cm', 'Parc de West Vancouver', '', 'Parc de West Vancouver', '45.456655', '-73.542746', '', '1990-SC-15', 'Lâ€™Å“uvre est situÃ©e en bordure de la piste cyclable de lâ€™Ã®le des SÅ“urs, emplacement qui ne pourrait mieux lui convenir compte tenu de son thÃ¨me. En effet, la sculpture tubulaire reprÃ©sente schÃ©matiquement un cycliste penchÃ© vers lâ€™avant. Le cycliste est peint en rouge et les roues de la bicyclette sont peintes en noir.\n\nTout au long de sa carriÃ¨re, Bergeron est demeurÃ© fidÃ¨le Ã  se style de sculpture oÃ¹ il a recourt Ã  des tubes dâ€™acier recyclÃ©s pour composer de grandes figures. Ã‰lancÃ©es et fines, elles Ã©voquent des traits de crayon dans lâ€™espace.', 'http://localhost/ArtPublicMTL/images/img58759f7fe899f-img5874ee54ba3e0-LeCycliste_G_Bergeron-1431_4102.jpg', 'Verdun', 'Sculpture', 506, 1),
(662, 1434, 'Contournement', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1325394000000-0500)/', 'Acier', NULL, 'CintrÃ© et peinturÃ©', NULL, NULL, 'Le Taz', '8931 Avenue Papineau, Montreal, QC H2M 2G2', '45.560942', '-73.635233', NULL, '2008-IA-SC-0001', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Sculpture', 507, 1),
(663, 1441, 'L''arbre des gÃ©nÃ©rations', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier (feuille)', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '385 x 275 x 548 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430699', '-73.666113', NULL, '2002-SC-10', '', '', 'Lachine', 'Sculpture', 508, 1),
(664, 1443, 'Vire au vent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut, acier peint', NULL, 'Soudage; boulonnage; peint', '495 x 610 x 295 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428480', '-73.682451', NULL, '2002-AP-SC-28', '', '', 'Lachine', 'Sculpture', 508, 1),
(665, 1447, 'Sans titre', 'Oiseau', 'Art public', 'Beaux-arts', 'Don', '/Date(-157748400000-0500)/', 'Acier peint', NULL, 'Feuilles d''acier coupÃ©es; soudÃ©es les unes aux a', '150 x 150 x 52 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.558218', '-73.563644', NULL, '902218.0', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 510, 1),
(666, 1450, 'Carte du site de MontrÃ©al par Champlain en 1611', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503986', '-73.587585', NULL, '1931-IA-PE-0002', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(667, 1451, 'Les anciennes possessions franÃ§aises en AmÃ©rique', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503969', '-73.587623', NULL, '1931-IA-PE-0003', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(764, 1452, 'Les voyages de Jacques Cartier au Canada en 1534 et 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503961', '-73.587657', NULL, '1931-IA-PE-0004', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(765, 1454, 'MontrÃ©al de 1645 Ã  1672', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503945', '-73.587697', NULL, '1931-IA-PE-0005', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(766, 1455, 'MontrÃ©al en 1760', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503918', '-73.587731', NULL, '1931-IA-PE-0006', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(767, 1456, 'Plan d''Hochelaga par Jacques Cartier en 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503874', '-73.587727', NULL, '1931-IA-PE-0007', '', '', 'Ville-Marie', 'Peinture', 511, 1),
(768, 1457, 'Jacques Cartier est reÃ§u par le chef Agouhana', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503842', '-73.587707', NULL, '1931-IA-PE-0008', '', '', 'Ville-Marie', 'Peinture', 613, 1),
(769, 1461, 'Parades Parures', 'Parades-parures', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(915166800000-0500)/', 'Tissu; aluminium; acier; bois; verre', NULL, NULL, '574 x 81 x 10 cm', NULL, 'BibliothÃ¨que RiviÃ¨re-des-Prairies', '9001, boulevard Perras, MontrÃ©al, QuÃ©bec H1E 3J7', '45.649803', '-73.578961', NULL, '1999-IA-SC-0007', '', '', 'RiviÃ¨re-des-Prairiesâ€“Pointe-aux-Trembles', 'Techniques mixtes', 614, 1),
(770, 1463, 'Le village imaginÃ©. Â«Le renard l''emporte, le suit Ã  la traceâ€¦Â»', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Aluminium, manganÃ¨se et chrome poli (jeu de ficel', NULL, 'AssemblÃ©; soudÃ©', 'Ensemble de l''Å“uvre : 98 x 115 m', 'Parc Marguerite-Bourgeoys', NULL, NULL, '45.475158', '-73.558862', NULL, '2005-SC-03', '', '', 'Le Sud-Ouest', 'Installation', 615, 1),
(771, 1472, 'Les jours d''Ã©tÃ© quand le fleuve monte Ã  l''assaut des murs, hommage Ã  Marie Uguay', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'PlÃ¢tre; livre; feutre; marbre', 'Bois', 'Mixte', '86 x 117 x 10 cm', NULL, 'BibliothÃ¨que interculturelle de CÃ´te-des-Neiges', '6767, chemin de la CÃ´te-des-Neiges, MontrÃ©al (QuÃ©bec) H3S 2T6', '45.503130', '-73.636947', NULL, '2006-IA-TM-0001', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Techniques mixtes', 616, 1),
(772, 1474, 'Monument Ã  sir Wilfrid Laurier', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-513460800000-0400)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '622 x 490 x 106 cm', 'Square Dorchester', NULL, NULL, '45.4994744', '-73.571061', NULL, '530924.0', '', '', 'Ville-Marie', 'Sculpture', 617, 1),
(773, 1476, 'Monument au frÃ¨re AndrÃ©', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(504939600000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '301 x 120 x 50cm', 'Place du frÃ¨re AndrÃ©', NULL, NULL, '45.503309', '-73.566600', NULL, '900985.0', '', '', 'Ville-Marie', 'Sculpture', 617, 1),
(774, 1478, 'Neuf couleurs au vent', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(985928400000-0500)/', 'Aluminium; nylon', NULL, 'SoudÃ©; sÃ©rigraphiÃ©', '1650 x 110 x 2510 cm', 'Place Urbain-Baudreau-Graveline', NULL, NULL, '45.521709', '-73.565776', NULL, '1996-APE-SC-08', '', '', 'Le Plateau-Mont-Royal', 'Installation', 619, 1),
(775, 1480, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'TaillÃ©; sculptÃ©', '244 X 206 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499327', '-73.594604', NULL, '902404.0', '', '', 'Ville-Marie', 'Sculpture', 620, 1),
(776, 1482, 'Table Ronde', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'BÃ©ton armÃ©; aluminium peint', NULL, 'AssemblÃ©; soudÃ©', NULL, NULL, 'Mairie d''arrondissement de LaSalle', '55 avenue Dupras', '45.428134', '-73.661771', NULL, '1984-APE-SC-06', '', '', 'LaSalle', 'Installation', 621, 1),
(777, 1484, 'Trois disques', 'Man, Three Disks;L''Homme; Man; The Man', 'Art public', 'Beaux-arts', 'Don', '/Date(-68583600000-0500)/', 'Acier inoxydable', '', 'DÃ©coupÃ©; assemblÃ©; boulonnÃ©; soudÃ© ', '2130 x 2200 x 1625 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', '', 'Parc Jean-Drapeau', '45.510658', '-73.536837', '', '1976-SC-05', 'Lâ€™Å“uvre Trois disques dâ€™Alexander Calder est une sculpture en acier inoxydable non poli composÃ©e de cinq arches qui se chevauchent et sâ€™appuient sur six jambages effilÃ©s dont la cime est ornÃ©e de deux pointes et de trois disques. Par sa forme abstraite, la structure arachnÃ©enne, asymÃ©trique, mais Ã©quilibrÃ©e, crÃ©e des jeux dâ€™ombres et de lumiÃ¨res qui Ã©voquent des mouvements dansÃ©s.', 'http://localhost/ArtPublicMTL/images/img587650d717d86-troisdisques.JPG', 'Ville-Marie', 'Sculpture', 622, 1),
(778, 1486, 'HermÃ¨s', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint; boulonnÃ©', '320 x 370 x 570 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428752', '-73.683435', NULL, '2002-AP-SC-29', '', '', 'Lachine', 'Sculpture', 623, 1),
(779, 1488, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Schiste', NULL, 'SculptÃ©', '412cm x 107cm', 'Parc du Mont-Royal', NULL, NULL, '45.500036', '-73.594996', NULL, '902230.0', '', '', 'Ville-Marie', 'Sculpture', 624, 1),
(780, 1490, 'Non titrÃ©', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Acier peint', NULL, 'SoudÃ©s; peints', '700 x 82.5 x 82.5 cm', 'Parc Serge-Garant', NULL, 'Rue Beaudry', '45.519070', '-73.556071', NULL, '902225.0', '', '', 'Ville-Marie', 'Sculpture', 625, 1),
(781, 1492, 'Trilogie', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1041310800000-0500)/', 'Acier peint', NULL, 'SoudÃ©; peint', '380 x 366 x 366 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430106', '-73.666757', NULL, '2002-SC-11', '', '', 'Lachine', 'Sculpture', 625, 1),
(866, 1494, 'Communion', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641188800000-0400)/', 'Acier peint', NULL, 'SoudÃ©; peint', '335 x 427 x 853cm', 'Parc des Rapides', NULL, NULL, '45.423958', '-73.598574', NULL, '1990-APE-SC-10', '', '', 'LaSalle', 'Sculpture', 625, 1),
(996, 1498, 'Monument Ã  Giovanni Caboto', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; travertin', NULL, 'Bronze coulÃ©; cire perdue', '875 x 800 x 800', 'Square Cabot', NULL, NULL, '45.489490', '-73.583652', NULL, '350901.0', '', '', 'Ville-Marie', 'Sculpture', 841, 1),
(1387, 1514, 'MÃ©langez le Tout', 'Le batteur Ã  Å“ufs', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1311652800000-0400)/', 'Aluminium', NULL, 'DÃ©coupe au laser; assemblage; peinture Ã©lectrost', '580 x 365 cm', NULL, 'Centre Jean-Claude-MalÃ©part', '2633 Ontario Est, MontrÃ©al, QC H2K 1W8', '45.534340', '-73.552733', NULL, '2011-AP-SC-0031', '', '', 'Ville-Marie', 'Sculpture', 1232, 1),
(1388, 1516, 'Caesura', 'Å’uvre pour la paix', 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(678859200000-0400)/', 'Granit; pierre de RiviÃ¨re-Ã -Pierre; bronze; bÃ©t', NULL, 'Bronze coulÃ©; soudure; bÃ©ton coulÃ©; taille; pol', '500 x 1100 x 1450 cm', 'Parc Jarry', NULL, NULL, '45.537512', '-73.628020', NULL, '910757.0', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Installation', 1233, 1),
(1389, 1518, 'Theatre for Sky Blocks', 'ThÃ©Ã¢tre pour fragments cÃ©lestes', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; encre de sÃ©rigraphie; granit vert laurenti', NULL, 'Soudure; sÃ©rigraphie; peinture; coupage', '300 x 250 x 1000 cm', 'Parc Fort-Rolland', NULL, NULL, '45.433893', '-73.696750', NULL, '2002-SC-49', '', '', 'Lachine', 'Installation', 1233, 1),
(1390, 1520, 'Les graminÃ©es du jardin Saint-Sulpice', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1167627600000-0500)/', 'Acier inoxydable', NULL, 'CoupÃ©; soudÃ©', '244 x 1000', 'Parc Berthe-Louard', NULL, '9355, avenue de GalilÃ©e', '45.559348', '-73.641608', NULL, '2007-IN-02', '', '', 'Ahuntsic-Cartierville', 'Installation', 1233, 1),
(1391, 1522, 'Give Peace a Chance', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Calcaire; plantes indigÃ¨nes', NULL, 'Pierre taillÃ©e', '2300 x 640 cm', 'Parc du Mont-Royal', NULL, NULL, '45.505007', '-73.583820', NULL, '2009-IN-05', '', '', 'Ville-Marie', 'Installation', 1233, 1),
(1392, 1524, 'Monument au frÃ¨re Marie-Victorin', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-504903600000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '295  x 140  x 140 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.557281', '-73.555903', NULL, '900963.0', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1237, 1),
(1393, 1526, 'Le lion de La FeuillÃ©e', 'Le lion de Lyon', 'Art public', 'Beaux-arts', 'Don', '/Date(694242000000-0500)/', 'Fonte', NULL, 'CoulÃ©e industriel', '210 x 230 x 400 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.558796', '-73.555637', NULL, '1994-APE-SC-04', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1238, 1),
(1394, 1528, 'Agora', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'BÃ©ton; pavÃ©s; eau ', NULL, 'Moulage; assemblage', '762 x 762 x 762 cm', 'Square Viger', NULL, NULL, '45.512075', '-73.554819', NULL, '1982-IN-16', '', '', 'Ville-Marie', 'Installation', 1239, 1),
(1395, 1530, 'Mastodo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'Bronze; acier inoxydable; bÃ©ton; eau', NULL, 'Moulage; assemblage', '420 x 580 x 610 cm', 'Square Viger', NULL, NULL, '45.511800', '-73.554681', NULL, '1987-APE-SC-28', '', '', 'Ville-Marie', 'Sculpture', 1239, 1),
(1396, 1532, 'Cailloudo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(632466000000-0500)/', 'Bronze, lumiÃ¨re', NULL, 'CoulÃ©; assemblÃ©', '132 x 425 x 760 cm', NULL, 'BibliothÃ¨que de Saint-Laurent', '1380, rue de l''Ã‰glise, MontrÃ©al (QC) H4L 2H2', '45.512457', '-73.676799', NULL, '2002-SC-68', '', '', 'Saint-Laurent', 'Sculpture', 1239, 1),
(1397, 1534, 'Hommage Ã  Claude Jutra', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(926913600000-0400)/', 'Granit; laiton; Ã©mail', NULL, 'AssemblÃ©; soudÃ©; dÃ©coupÃ©; taillÃ©; collÃ©', '250 x 75 x 70 cm', 'Parc Claude-Jutra', NULL, NULL, '45.513240', '-73.572945', NULL, '1997-AP-SC-08', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1239, 1),
(1398, 1536, 'La ville imaginaire', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(873864000000-0400)/', 'Granit', NULL, 'TaillÃ©; assemblÃ©', '1900 x 1800 x 2750 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.512697', '-73.537714', NULL, '1997-APE-SC-08', '', '', 'Ville-Marie', 'Installation', 1243, 1),
(1399, 1538, 'RÃ©volutions', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1042779600000-0500)/', 'Aluminium; acier galvanisÃ©', NULL, NULL, '850 x 500 cm', 'Parc Maisonneuve-Cartier', NULL, NULL, '45.523985', '-73.552731', NULL, '2003-APE-SC-03', '', '', 'Ville-Marie', 'Sculpture', 1244, 1),
(1400, 1540, 'L''arc', 'Hommage Ã  Salvador Allende (1908-1973)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1230786000000-0500)/', 'BÃ©ton, acier inoxydable', NULL, NULL, '305 x 470 x 125', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505855', '-73.527741', NULL, '2009-SC-03', '', '', 'Ville-Marie', 'Sculpture', 1244, 1),
(1401, 1542, 'Buste du Dr. JosÃ© P. Rizal', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(915166800000-0500)/', 'Bronze; granit', NULL, 'Fonte Ã  la cire perdue', '238 x 148 x 135 cm', 'Parc Mackenzie-King', NULL, NULL, '45.491014', '-73.634079', NULL, '1999-SC-05', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Sculpture', 1246, 1),
(1402, 1544, 'Monument Ã  Christophe Colomb', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(189320400000-0500)/', 'Bronze; granit; bÃ©ton', NULL, 'Bronze coulÃ©', '272 x 116 x 94 cm', 'Parc de Turin', NULL, NULL, '45.545114', '-73.610194', NULL, '900959.0', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Sculpture', 1247, 1),
(1403, 1546, 'Cosmos', 'Murale peinte; Cosmos I, II, III', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Don', '/Date(-157748400000-0500)/', 'Bois; tissus; nylon; papier', 'Toile marouflÃ© sur contreplaquÃ©', 'Collage; peinture', '185 x 677 x 5 cm', NULL, 'BibliothÃ¨que de Pointe-aux-Trembles', '14001 Rue Notre-Dame Est, MontrÃ©al, QC H1A 1T9', '45.668131', '-73.494621', NULL, '0 45901.0', '', '', 'RiviÃ¨re-des-Prairiesâ€“Pointe-aux-Trembles', 'Peinture', 1248, 1),
(1404, 1548, 'ObÃ©lisque en hommage Ã  Charles de Gaulle', 'MÃ©morial au gÃ©nÃ©ral De Gaulle', 'Art public', 'Beaux-arts', 'Don', '/Date(694242000000-0500)/', 'Granit; Ã©poxy; ciment; peinture', NULL, NULL, '1780 x 240 x 270 cm', 'Parc La Fontaine', NULL, NULL, '45.526107', '-73.564759', NULL, '926212.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1249, 1),
(1405, 1550, 'China Wall', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'SoudÃ©', '225 x 177 x 489 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428562', '-73.681682', NULL, '2002-SC-29', '', '', 'Lachine', 'Sculpture', 1250, 1),
(1406, 1553, 'Maisonneuve fonde MontrÃ©al le 18 mai 1642', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503819', '-73.587641', NULL, '1931-IA-PE-0009', '', '', 'Ville-Marie', 'Peinture', 1251, 1),
(1407, 1554, 'Portail avec bas-reliefs', 'MÃ©moire', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(536475600000-0500)/', 'Bois; ciment; peinture; miroir', NULL, 'Fondu; vitrifiÃ©; peint; coupÃ©; assemblÃ©', '520 X 520 cm', NULL, 'Chapelle historique du Bon-Pasteur', '100, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec)  H2X 1C3', '45.513427', '-73.546886', NULL, '1987-IA-SC-0001', '', '', 'Ville-Marie', 'Sculpture', 1252, 1),
(1408, 1555, 'Place du Temple', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641448000000-0400)/', 'Ciment; mÃ©tal; peinture', NULL, 'CoulÃ©; peint', '500 x 1800 x 6700 cm', 'Place FÃ©lix-Leclerc', NULL, NULL, '45.423620', '-73.624915', NULL, '2002-SC-62', '', '', 'LaSalle', 'Installation', 1252, 1),
(1409, 1557, 'Fontaine de vie', 'Les baigneuses', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Anorthosite', NULL, 'SculptÃ©', '370 x 550 cm', 'Place de l''hÃ´tel de ville', NULL, '1800, boul Saint-Joseph, Lachine, QC H8S 2N4', '45.433162', '-73.681258', NULL, '2002-SC-26', '', '', 'Lachine', 'Sculpture', 1254, 1),
(1410, 1559, 'Buste de Simon Bolivar', 'SimÃ³n BolÃ­var', 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Bronze; granit', NULL, NULL, '248.5 x 99.5 x 48', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489486', '-73.580919', NULL, '1986-SC-09', '', '', 'Ville-Marie', 'Sculpture', 1255, 1),
(1411, 1561, 'Albarello', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'CÃ©ramique; acier; plantes', NULL, 'SoudÃ©; assemblÃ©', '340 x 290 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429940', '-73.666844', NULL, '2002-SC-14', '', '', 'Lachine', 'Sculpture', 1256, 1),
(1412, 1563, 'Ã€ la croisÃ©e des mots', 'arbre-sculpture', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1093752000000-0400)/', 'Acier galvanisÃ©, aluminium anodisÃ©', NULL, 'Feuilles d''aluminium anodisÃ©; dÃ©coupÃ©es; soudÃ©', '732 x 300 cm', NULL, 'Centre Georges-Vanier', '2450 Rue Workman\rMontrÃ©al, Qc', '45.483797', '-73.575105', NULL, '2004-SC-10', '', '', 'Le Sud-Ouest', 'Installation', 1257, 1),
(1413, 1565, 'Mots choisis', 'Les mots choisis', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Plexiglas; bois', NULL, 'GravÃ©; assemblÃ©', NULL, NULL, 'BibliothÃ¨que de Pointe-aux-Trembles', '14001 Rue Notre-Dame Est, MontrÃ©al, QC H1A 1T9', '45.668131', '-73.494621', NULL, '2006-IA-SC-0001', '', '', 'RiviÃ¨re-des-Prairiesâ€“Pointe-aux-Trembles', 'Sculpture', 1257, 1),
(1414, 1566, 'Hommage aux forces vitales du QuÃ©bec', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; acier chromÃ©; bÃ©ton; lumiÃ¨re', NULL, 'Techniques multiples', '366 x 3800 x 1600 cm', 'Parc des Rapides', NULL, NULL, '45.420052', '-73.603372', NULL, '2002-SC-63', '', '', 'LaSalle', 'Installation', 1259, 1),
(1415, 1568, 'Monument aux braves de N.D.G.', 'Monument aux combattants\rLes Braves de N.D.G.', 'Art public', 'Beaux-arts', 'Inconnu', '/Date(-1577991600000-0500)/', 'Bronze; granit', NULL, 'Bronze moulÃ©', '400 x 318 cm', 'Parc Notre-Dame-de GrÃ¢ce', NULL, NULL, '45.472499', '-73.613726', NULL, '190916.0', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Sculpture', 1260, 1),
(1416, 1570, 'Optimax', 'Le Sphinx, Optimax (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire; bÃ©ton', NULL, 'Taille directe', '292 x 246 x 1250 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500911', '-73.593288', NULL, '1966-APE-SC-13', '', '', 'Ville-Marie', 'Sculpture', 1261, 1),
(1417, 1571, 'Jacques Cartier sur le sommet du mont Royal', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503843', '-73.587576', NULL, '1931-IA-PE-0010', '', '', 'Ville-Marie', 'Peinture', 1262, 1),
(1418, 1573, 'Non titrÃ©', 'Sans-titre (photographies)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', NULL, 'Bois', 'Contre-collÃ© sur bois et laminÃ©', '67 x 101.5 x 3 cm', NULL, 'BibliothÃ¨que Saint-Pierre', '183, rue des Ã‰rables, Lachine (QuÃ©bec) H8R 1B1', '45.445692', '-73.651331', NULL, '', '', '', 'Lachine', 'Photographie', 1263, 1),
(1419, 1577, 'Les baigneurs', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre rÃ©crÃ©atif Gadbois', '5485, chemin de la CÃ´te-Saint-Paul, MontrÃ©al (QuÃ©bec) H4C 1X3', '45.466339', '-73.595615', NULL, '1960-IA-SC-0001', '', '', 'Le Sud-Ouest', 'Sculpture', 1264, 1),
(1420, 1578, 'Les baigneurs', 'Bas-relief (extÃ©rieur)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Pierre', NULL, 'Taille directe', '(2) 165 x 555 x 15', NULL, 'ArÃ©na Maurice-Richard', '2800 Rue Viau, MontrÃ©al, QC H1V 3J3', '45.562464', '-73.547304', NULL, '1961-IA-SC-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1264, 1),
(1421, 1579, 'L''eau et la santÃ©', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0001', '', '', 'LaSalle', 'Peinture', 1266, 1),
(1422, 1580, 'Une leÃ§on d''histoire', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(599634000000-0500)/', 'MÃ©tal; bois; Ã©poxy; livre', NULL, 'CoulÃ©; taillÃ©; moulÃ©; patinÃ©; collÃ©; pulvÃ©ri', NULL, NULL, 'BibliothÃ¨que Frontenac', '2550 Rue Ontario Est, MontrÃ©al, QC H2K 1W7', '45.533042', '-73.551858', NULL, '860317.0', '', '', 'Ville-Marie', 'Installation', 1266, 1),
(1423, 1581, 'Delos, septiÃ¨me porte de la perfection et de l''immortalitÃ©, Convoi III', 'Delos', 'Art public', 'Beaux-arts', 'Don', '/Date(1292389200000-0500)/', 'Acier corten; acier.', NULL, NULL, NULL, 'Parc Baldwin', NULL, NULL, '45.534496', '-73.562238', NULL, '2011-AP-IN-0013 ', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1268, 1),
(1424, 1583, 'Champlain explore le site de MontrÃ©al en 1603', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503877', '-73.587492', NULL, '1931-IA-PE-0011', '', '', 'Ville-Marie', 'Peinture', 1269, 1),
(1425, 1595, 'Nous deux', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(915166800000-0500)/', 'Acier; peinture', NULL, 'DÃ©coupÃ©; soudÃ©; meulÃ©; boulonnÃ©; peint', '244 x 142 x 161', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S', '45.429983', '-73.666989', NULL, '2002-SC-16', '', '', 'Lachine', 'Sculpture', 1270, 1),
(1426, 1597, 'Colonne', 'Sculpture (extÃ©rieur)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Granit; acier inoxydable; verre; nÃ©on', NULL, 'Taille directe; assemblÃ©', '700 x 124,5 cm', NULL, 'Centre des arts contemporains du QuÃ©bec Ã  MontrÃ©al', '4247, rue Saint-Dominique, MontrÃ©al, QuÃ©bec H2W 2A9', '45.518992', '-73.581993', NULL, '1985-IA-SC-0006', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1270, 1),
(1427, 1598, 'Ã‰tats de choc', 'States of shock', 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier; brique; mortier; ciment; peinture', '', 'SoudÃ©; formÃ©; coulÃ©; briquetÃ©; peint', '15.51m', 'Parc Summerlea', '', 'Parc Summerlea', '45.438429', '-73.718209', '', '2002-SC-50', 'Au parc Summerlea, sis sur les berges de Lachine, une clÃ´ture en acier qui semble accidentÃ©e est disposÃ©e en trois sections sur des socles de ciment et de briques. De lâ€™Ã©trange dÃ©placement de ces piÃ¨ces se dÃ©gage un sentiment de libertÃ©. Si la clÃ´ture dÃ©limite, circonscrit, encadre et emprisonne, le geste qui la dÃ©forme et la dÃ©place, quant Ã  lui, transgresse et libÃ¨re. Å’uvre rÃ©solument politique, elle devient une image de la rÃ©sistance, un oxymoron rÃ©unissant sous un mÃªme Â« Ã©tat Â» enfermement et libÃ©ration.', 'http://localhost/ArtPublicMTL/images/img58764f7ce42de-etatchoc.JPG', 'Lachine', 'Sculpture', 1270, 1),
(1428, 1600, 'La ville blanche', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; percÃ©; coulÃ©', '650 x 2400', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428448', '-73.680350', NULL, '2002-SC-30', '', '', 'Lachine', 'Installation', 1270, 1),
(1429, 1602, 'Espace cubique ou hommage Ã  Malevitch', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Verre; granit; acier; bÃ©ton; lumiÃ¨re', NULL, 'TaillÃ©; coupÃ©; soudÃ©; assemblÃ©', '254 x 224 x 225 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429901', '-73.666579', NULL, '2002-SC-15', '', '', 'Lachine', 'Installation', 1270, 1),
(1430, 1604, 'Cube gÃ©omÃ©trique', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten; BÃ©ton', NULL, NULL, '500 x 390 x 390 cm', 'Parc Malborough', NULL, '2105, rue BeauzÃ¨le,\rSaint-Laurent (MontrÃ©al)\rQuÃ©bec', '45.523012', '-73.721010', NULL, '1978-SC-02', '', '', 'Saint-Laurent', 'Sculpture', 1275, 1),
(1431, 1606, 'Le jardin de Lyon', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(944110800000-0500)/', 'Acier inoxydable; bronze; luminaire; bois; granit;', NULL, NULL, NULL, 'Place J.-Ernest-Laforce', NULL, NULL, '45.512470', '-73.555461', NULL, '2000-IN-08', '', '', 'Ville-Marie', 'Installation', 1276, 1),
(1432, 1610, 'Orbite optique no 2', 'L''Artichaut', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'BÃ©ton; acier', NULL, 'BÃ©ton projetÃ©', '800 cm x 1230 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.522507', '-73.534649', NULL, '901611.0', '', '', 'Ville-Marie', 'Sculpture', 1277, 1),
(1433, 1612, 'Fontaine', 'Jeux d''enfants\r\rNote : Ce titre Ã©tait en usage avant le dÃ©mantÃ¨lement de l''Å“uvre, en 2000. De l''', 'Art public', 'Beaux-arts', 'Transfert', '/Date(489211200000-0400)/', 'Acier inoxydable; bronze chromÃ©; bÃ©ton', NULL, NULL, '450 x 1450 x 1195 cm', 'Square Viger', NULL, NULL, '45.513958', '-73.552921', NULL, '1984-APE-SC-08', '', '', 'Ville-Marie', 'Installation', 1278, 1),
(1434, 1616, 'AthÃ©na', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(951886800000-0500)/', 'Bronze; granit', NULL, 'Fonte Ã  la cire perdue', '310 x 100 x 100 cm', 'Parc AthÃ©na', NULL, NULL, '45.527740', '-73.624282', NULL, '2000-SC-07', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Sculpture', 1279, 1),
(1435, 1618, 'Hommage Ã  Mihai Eminescu, poÃ¨te roumain', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1104555600000-0500)/', 'Bronze', NULL, 'Bronze coulÃ©', '243 x 149 cm', 'Parc Devonshire/Place de la Roumanie', NULL, NULL, '45.514796', '-73.576459', NULL, '2004-SC-09', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1280, 1),
(1436, 1620, 'Trait d''union', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(410245200000-0500)/', 'BÃ©ton; pierre; acier inoxydable; eau.', NULL, 'AncrÃ©; boulonnÃ©; collÃ©', '265 x 275 x 1800 cm', NULL, 'BibliothÃ¨que Saint-LÃ©onard', '8400, boulevard Lacordaire\rSaint-LÃ©onard (QuÃ©bec)\rH1R 3B1', '45.586472', '-73.597139', NULL, '1984-APE-SC-07', '', '', 'Saint-LÃ©onard', 'Sculpture', 1281, 1),
(1437, 1622, 'Les leÃ§ons singuliÃ¨res (volet 1)', 'Les leÃ§ons singuliÃ¨res (premiÃ¨re partie)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(654667200000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'CoulÃ©; dÃ©coupÃ©; formÃ©', '97 x 2000 x 1000 cm', 'Place Roy', NULL, NULL, '45.521580', '-73.570456', NULL, '908500.0', '', '', 'Le Plateau-Mont-Royal', 'Installation', 1281, 1),
(1438, 1625, 'Les leÃ§ons singuliÃ¨res (volet 2)', 'Les leÃ§ons singuliÃ¨res (deuxiÃ¨me partie)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(673070400000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'CoulÃ©; dÃ©coupÃ©; formÃ©', '96 x 1800 x 1120 cm', 'Parc La Fontaine', NULL, NULL, '45.523417', '-73.568557', NULL, '912010.0', '', '', 'Le Plateau-Mont-Royal', 'Installation', 1281, 1),
(1439, 1627, 'DÃ©tourÂ : le grand jardin', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'aluminium ; acier galvanisÃ©', NULL, 'SoudÃ©; boulonnÃ©; percÃ©; peint', '500 x 1865 x 2109 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428373', '-73.681115', NULL, '2002-SC-31', '', '', 'Lachine', 'Installation', 1281, 1),
(1440, 1629, 'Le carrousel de lâ€™Ã®le', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1103778000000-0500)/', 'Acier galvanisÃ©; laiton', NULL, NULL, '470 x 1500 cm', 'Carrefour giratoire des boulevards, RenÃ©-LÃ©vesque et Ãle-des-SÅ“urs', NULL, NULL, '45.465811', '-73.544778', NULL, '2005-SC-02', '', '', 'Verdun', 'Installation', 1281, 1),
(1441, 1631, 'Un jardin Ã  soi', NULL, 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1268024400000-0500)/', 'Laiton; acier inoxydable', NULL, 'DÃ©coupÃ©; assemblÃ©', '101.5 x 157 x 203 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.560956', '-73.565822', NULL, '2010-AP-IN-0012', '', '', 'Rosemontâ€“La Petite-Patrie', 'Installation', 1281, 1),
(1442, 1633, 'Monument pour L', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; vÃ©gÃ©taux; asphalte', NULL, 'CoulÃ©; soudÃ©; peint', '111 x 4000 x 1500 cm', 'Parc Fort-Rolland', NULL, NULL, '45.434760', '-73.699892', NULL, '2002-SC-51', '', '', 'Lachine', 'Installation', 1287, 1),
(1443, 1635, 'Volatiles', 'Splish-splash', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminum', NULL, 'DÃ©coupÃ©; assemblÃ©', NULL, NULL, 'AquadÃ´me-Centre aquatique familiale de LaSalle', '1411 Rue Lapierre, LaSalle, QC H8N 2J4', '45.436661', '-73.607768', NULL, '1996-IA-IN-0001', '', '', 'LaSalle', 'Installation', 1287, 1),
(1444, 1636, 'Nef pour quatorze reines', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(927864000000-0400)/', 'Granit; acier inoxydable; criblure granitique; gaz', NULL, NULL, '0.6 x 21 x 113 m', 'Place du 6-dÃ©cembre-1989', NULL, NULL, '45.496042', '-73.617702', NULL, '1999-APE-IN-02', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Installation', 1287, 1),
(1445, 1638, 'Hommage aux travailleurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton', NULL, 'CoulÃ©; peint', '600 x 272 x 138 cm', NULL, NULL, 'Boulevard Henri-Bourassa', '45.600702', '-73.638456', NULL, '2002-SC-67', '', '', 'MontrÃ©al-Nord', 'Sculpture', 1290, 1),
(1446, 1640, 'Le grand Jean-Paul', NULL, 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', NULL, 'Bronze', NULL, 'Cire perdue', '202 x 199.5 x 60.5 cm', 'Place Jean-Paul-Riopelle', NULL, NULL, '45.503104', '-73.560661', NULL, '2014-AP-SC-0002', '', '', 'Ville-Marie', 'Sculpture', 1291, 1),
(1447, 1641, 'Monument Ã  Ã‰mile Nelligan', 'Buste Ã  l''effigie du poÃ¨te Ã‰mile Nelligan', 'Art public', 'Beaux-arts', 'Achat', '/Date(1119412800000-0400)/', 'Bronze; calcaire; granit', NULL, 'Bronze coulÃ©; cire perdue', '271 x 112 x 132 cm', 'Square Saint-Louis', NULL, NULL, '45.516215', '-73.570284', NULL, '2005-SC-01', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1291, 1),
(1448, 1643, 'Songes', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Papier; aluminium', NULL, NULL, '282 x 482 x 2,5 cm', NULL, 'Maison culturelle et communautaire de MontrÃ©al-Nord', '12 004, boulevard Rolland, MontrÃ©al-Nord (QuÃ©bec), H1W  3W1', '45.616540', '-73.620970', NULL, '2006-IA-PH-0005', '', '', 'MontrÃ©al-Nord', 'Photographie', 1293, 1),
(1449, 1644, 'Jacques Cartier atterit Ã  Hochelaga en 1535', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503907', '-73.587428', NULL, '1931-IA-PE-0012', '', '', 'Ville-Marie', 'Peinture', 1294, 1),
(1450, 1648, 'Monument Ã  sir Louis-Hippolyte La Fontaine', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit; grÃ¨s; marbre', NULL, 'Fonte au sable', '700 x 570 x 370cm', 'Parc La Fontaine', NULL, NULL, '45.523017', '-73.566328', NULL, '1930-APE-SC-15', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1295, 1),
(1451, 1650, 'Monument aux braves d''Outremont', 'Monument aux morts de la guerre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; marbre', NULL, 'Bronze coulÃ©', '400 x 600 x 480 cm', 'Parc Outremont', NULL, NULL, '45.517753', '-73.604103', NULL, '1925-APE-SC-01', '', '', 'Outremont', 'Sculpture', 1295, 1),
(1452, 1652, 'L''habitation en milieu urbain', 'L''espace de l''homme dans l''univers', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'GrÃ¨s, mortier', NULL, 'Modelage', '251 x 620 x 3,80 cm', NULL, 'Maison de la culture Marie-Uguay', '6052, boulevard Monk, MontrÃ©al (QuÃ©bec) H4E 3H6', '45.457694', '-73.595515', NULL, '1982-IA-SC-0001', '', '', 'Le Sud-Ouest', 'Sculpture', 1297, 1),
(1453, 1654, 'Monument Ã  Paul de Chomedey, sieur de Maisonneuve', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Bronze; granit', NULL, NULL, '9m de haut', 'Place d''Armes', NULL, NULL, '45.504800', '-73.557260', NULL, '927189.5', '', '', 'Ville-Marie', 'Sculpture', 1298, 1),
(1454, 1656, 'Monument Ã  Louis-Octave CrÃ©mazie', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2004638400000-0400)/', 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '300 x 300 x 188 cm', 'Square Saint-Louis', NULL, NULL, '45.517388', '-73.569581', NULL, '1907-APE-SC-01', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1298, 1),
(1455, 1658, 'Monument Ã  John Young', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1833390000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©; pierre taillÃ©e', '520 x 340 x 670cm', 'De la Commune', NULL, NULL, '45.500112', '-73.553427', NULL, '110941', '', '', 'Ville-Marie', 'Sculpture', 1298, 1),
(1456, 1660, 'Monument Ã  Ã‰douard VII', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1767207600000-0500)/', 'Bronze; granit', NULL, 'CoulÃ© Ã  la cire perdue; assemblÃ© Ã  la romaine ', '1400cm', 'Square Phillips', NULL, NULL, '45.503724', '-73.568507', NULL, '140910.0', '', '', 'Ville-Marie', 'Sculpture', 1298, 1),
(1457, 1662, 'Acier', 'Sous l''eau', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; bÃ©ton', NULL, 'SoudÃ©; coulÃ©', '385 x 700 x 350cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.504307', '-73.526535', NULL, '1968-APE-SC-17', '', '', 'Ville-Marie', 'Sculpture', 1302, 1),
(1458, 1664, 'Le lion de Belfort', 'La Fontaine de la Sun Life Assurance Company', 'Art public', 'Beaux-arts', 'Don', '/Date(-2303578800000-0500)/', 'Bronze; granit', NULL, 'SculptÃ© (granite); coulÃ© (bronze)', '504 x 232 x 421 cm', 'Square Dorchester', NULL, NULL, '45.499704', '-73.570273', NULL, '936189.7', '', '', 'Ville-Marie', 'Sculpture', 1303, 1),
(1459, 1666, 'Monument aux hÃ©ros de la guerre des Boers', 'Monument Ã  Lord Strathcona', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, NULL, '920 x 2200 x 1600 cm', 'Square Dorchester', NULL, NULL, '45.499610', '-73.570967', NULL, '900934.0', '', '', 'Ville-Marie', 'Sculpture', 1303, 1),
(1460, 1668, 'Monument Ã  sir George-Ã‰tienne Cartier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1609441200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '25 x 30 x 30m', 'Parc du Mont-Royal', NULL, NULL, '45.514231', '-73.585250', NULL, '900902.0', '', '', 'Ville-Marie', 'Sculpture', 1303, 1),
(1461, 1670, 'DÃ©part de La Salle pour aller Ã  la dÃ©couverte du Mississipi', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503946', '-73.587378', NULL, '1931-IA-PE-0013', '', '', 'Ville-Marie', 'Peinture', 1306, 1),
(1462, 1672, 'Totem Kwakiutl', 'MÃ¢t totÃ©mique Kwakwaka''wakw (Kwakiutl)', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'Bois', NULL, 'SculptÃ©', '2130 x 95 cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.504995', '-73.529284', NULL, '1968-SC-17', '', '', 'Ville-Marie', 'Sculpture', 1307, 1),
(1463, 1674, 'Iris', 'Iris (QuÃ©bec)', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Aluminium', NULL, 'Feuilles d''aluminium galbÃ©es par martelage; soudÃ', NULL, 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505532', '-73.527751', NULL, '901608.0', '', '', 'Ville-Marie', 'Sculpture', 1308, 1),
(1464, 1676, 'Monument Ã  Ã‰milie Gamelin', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(915166800000-0500)/', 'Bronze', NULL, 'Bronze coulÃ©; cire perdue', '190 x 122 cm', 'Place Ã‰milie-Gamelin', NULL, NULL, '45.51486', '-73.559707', NULL, '1999-SC-03', '', '', 'Ville-Marie', 'Sculpture', 1308, 1),
(1465, 1679, 'Les allusifs', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Bois; acier', NULL, 'AssemblÃ©; soudÃ©; incrustÃ©; gravÃ©', 'xx cm x 230 cm x 170 cm', NULL, 'MarchÃ© Atwater', '138 Avenue Atwater, Montreal, QC H4C 2H6', '45.478839', '-73.575339', NULL, '2002-IN-76', '', '', 'Le Sud-Ouest', 'Installation', 1310, 1),
(1466, 1682, 'Lanka Mata', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'Don', '/Date(-94676400000-0500)/', 'Verre; plomb; acier; nÃ©on', 'Verre', NULL, '260 x 524 x 20 cm', NULL, 'BibliothÃ¨que Marie-Uguay', '6052 Boulevard Monk, MontrÃ©al, QC H4E 3H6', '45.457751', '-73.595486', NULL, '1967-IA-VT-0001', '', '', 'Le Sud-Ouest', 'Vitrail', 1311, 1),
(1467, 1683, 'L''attente', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(1232946000000-0500)/', 'Aluminum ; bÃ©ton ; laiton ; bronze', NULL, 'AssemblÃ©; soudÃ©; vissÃ©', '411 x 258 x 258 cm', 'Parc Belmont', NULL, NULL, '45.532697', '-73.725844', NULL, '2009-SC-02', '', '', 'Ahuntsic-Cartierville', 'Sculpture', 1312, 1),
(1468, 1684, 'La faÃ§ade', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1315454400000-0400)/', 'Nylon', NULL, 'ModÃ©lisation 3D; frittage laser sÃ©lectif', '115 x 235 x 32 cm', NULL, 'BibliothÃ¨que PÃ¨re-Ambroise', '2093, rue de la Visitation, MontrÃ©al, QC, H2L 3C9', '45.522767', '-73.562670', NULL, '2011-IA-SC-0006', '', '', 'Ville-Marie', 'Sculpture', 1312, 1),
(1469, 1685, 'La fermiÃ¨re', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1830366000000-0500)/', 'Bronze', NULL, 'CoulÃ©', '575 x 1900 cm', 'Place Gennevilliers-LalibertÃ©', NULL, NULL, '45.553561', '-73.539698', NULL, '180911.0', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1314, 1),
(1470, 1687, 'Les petits baigneurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1640977200000-0500)/', 'Bronze; pierre; fonte; granit', NULL, 'CoulÃ©; assemblÃ©', '1000 x 400 x 300 cm', NULL, 'Bain Morgan', '1875, avenue Morgan \rMontrÃ©al (QC) \rH1V 2R1', '45.553359', '-73.538434', NULL, '182213.0', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1314, 1),
(1471, 1689, 'Monument Ã  Dollard des Ormeaux', 'Monument Ã  Adam Dollard des Ormeaux et Ã  ses compagnons', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'CoulÃ©', '800 x 925 x 345 cm', 'Parc La Fontaine', NULL, NULL, '45.525594', '-73.573055', NULL, '200909.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1314, 1),
(1472, 1691, 'Monument aux braves de Lachine', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1420052400000-0500)/', 'Bronze; granit', NULL, 'CoulÃ©; assemblÃ©', '524 x 900 x 216 cm', 'Parc Stoney-Point', NULL, NULL, '45.436555', '-73.706738', NULL, '1945-APE-SC-04', '', '', 'Lachine', 'Sculpture', 1314, 1),
(1473, 1692, 'Monument aux Patriotes', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Fonte au sable', '850 x 410 x 370 cm', 'Place des Patriotes', NULL, NULL, '45.523411', '-73.546212', NULL, '260931.0', '', '', 'Ville-Marie', 'Sculpture', 1314, 1),
(1474, 1695, 'Signal dans l''espace', 'Sculpture, extÃ©rieur', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; bÃ©ton', NULL, 'Assemblage', '1370 x 975 x 30 cm', NULL, 'BibliothÃ¨que l''Octogone', '1080 Avenue Dollard, Montreal, QC H8N 2T9', '45.424150', '-73.623311', NULL, '1984-IA-IN-0001', '', '', 'LaSalle', 'Sculpture', 1319, 1);
INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(1475, 1696, 'Temps d''heures', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(521438400000-0400)/', 'BÃ©ton; acier de Corten; acier; peinture', NULL, 'AssemblÃ©; dÃ©coupÃ©; peint', '540 x 1020 x 303 cm', NULL, 'Centre Jean-Marie Gauvreau', '911, rue Jean-Talon Est, MontrÃ©al, H2R 1V5', '45.541376', '-73.613177', NULL, '902241.0', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Installation', 1319, 1),
(1476, 1697, 'Anamorphose dâ€™une fenÃªtre', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(631170000000-0500)/', 'Acier; bÃ©ton', NULL, NULL, NULL, NULL, 'Maison de la culture Mercier', '8105, rue Hochelaga, MontrÃ©al, H1L 2K9', '45.595513', '-73.523788', NULL, '902242.0', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Installation', 1319, 1),
(1477, 1698, 'Monument Ã  John F. Kennedy', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(532069200000-0500)/', 'Bronze; granit', NULL, 'Bronze moulÃ©', '355 x 100 x 120', 'Intersection des avenues du PrÃ©sident-Kennedy et McGill-College', NULL, '2001, avenue McGill College', '45.503367', '-73.573689', NULL, '1986-APE-SC-08', '', '', 'Ville-Marie', 'Sculpture', 1322, 1),
(1478, 1700, 'Monument Ã  Joseph Beaubien', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '249 x 76.5 x 65.5 cm', 'Parc Beaubien', NULL, '461 Chemin de la CÃ´te-Sainte-Catherine', '45.515161', '-73.607800', NULL, '2003-SC-04', '', '', 'Outremont', 'Sculpture', 1322, 1),
(1479, 1701, 'Buste du cardinal Paul-Ã‰mile LÃ©ger', NULL, 'Art public', 'Beaux-arts', 'PrÃªt', '/Date(1199163600000-0500)/', 'Bronze', NULL, 'CoulÃ©', '168 x 75 x 61,5 cm', 'Place du Cardinal-Paul-Ã‰mile-LÃ©ger', NULL, NULL, '45.509549', '-73.561333', NULL, '2008-SC-01', '', '', 'Ville-Marie', 'Sculpture', 1322, 1),
(1480, 1702, 'Debout', 'Debout (Monument Ã  FÃ©lix Leclerc)', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(657522000000-0500)/', 'Bronze', NULL, '23 sections de bronze moulÃ©es par enrobage et sou', '350 cm x 170 cm x 149.5 cm', 'Parc La Fontaine', NULL, NULL, '45.526717', '-73.571036', NULL, '900069.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1325, 1),
(1481, 1704, 'La porte de lâ€™avenir', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton; fibre de verre; rÃ©sine', NULL, 'EmpilÃ©; gravÃ©; peint', '238 x 201,5 x 42 cm', 'Parc Elgar', 'Centre communautaire Elgar', '260 Rue Elgar, Verdun, QC', '45.457215', '-73.547032', NULL, '2000-APE-SC-06', '', '', 'Verdun', 'Sculpture', 1325, 1),
(1482, 1706, 'Deux murales', 'Deux murales (cÃ©ramique)', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'CÃ©ramique; peinture', NULL, 'Assemblage', 'Petite : 218 x 744 cm\rGrande : 427 x 881 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.555969', '-73.557184', NULL, '1956-IA-CE-0001', '', '', 'Rosemontâ€“La Petite-Patrie', 'CÃ©ramique', 1327, 1),
(1483, 1708, 'Le thÃ©Ã¢tre de papier', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Verre, acier', NULL, NULL, '360 x 1250 x 140 cm', NULL, 'BibliothÃ¨que La Petite-Patrie', '6707 Avenue de Lorimier, MontrÃ©al, QC H2G 2P8', '45.547360', '-73.598375', NULL, '1986-IA-VR-0001', '', '', 'Rosemontâ€“La Petite-Patrie', 'Verre', 1328, 1),
(1484, 1710, 'Et pourtant elle tourne', 'VerriÃ¨re cadran solaire', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BibliothÃ¨que de l''ÃŽle-Bizard', '500, montÃ©e de l''Ã‰glise, MontrÃ©al, QC, H9C 1G9', '45.489425', '-73.882544', NULL, '1992-IA-VR-0001', '', '', 'Lâ€™ÃŽle-Bizardâ€“Sainte-GeneviÃ¨ve', 'Verre', 1328, 1),
(1485, 1711, 'La rÃ©paration', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(894600000000-0400)/', 'Marbre; granit; bÃ©ton; arbres', NULL, 'Taille', '294 x 2500 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534994', '-73.679998', NULL, '1998-AP-SC-03', '', '', 'Ahuntsic-Cartierville', 'Installation', 1330, 1),
(1486, 1713, 'Temple du troisiÃ¨me millÃ©naire', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'BÃ©ton; aluminium', NULL, 'CoulÃ©; dÃ©coupÃ©; assemblÃ©', '475 cm x 380 cm x 75 cm', 'Parc Alexis-Nihon', NULL, 'Rue Bertrand', '45.497286', '-73.689694', NULL, '2002-SC-69', '', '', 'Saint-Laurent', 'Installation', 1331, 1),
(1487, 1715, 'Monica', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'BÃ©ton; mÃ©tal; ciment (base).', NULL, 'MoulÃ©; collÃ©; soudÃ©; boulonnÃ©', '278 x 211 x 200 cm', 'Promenade PÃ¨re-Marquette', NULL, NULL, '45.432433', '-73.683443', NULL, '2002-SC-52', '', '', 'Lachine', 'Sculpture', 1332, 1),
(1488, 1717, 'Monument Ã  Jackie Robinson', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(538722000000-0500)/', 'Bronze; bÃ©ton', NULL, 'Bronze coulÃ©', '254 x 203 x 194 cm', NULL, 'Stade olympique', '4545 Pierre-de-Coubertin\rMontrÃ©al, QuÃ©bec', '45.555846', '-73.551088', NULL, '902214.0', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1332, 1),
(1489, 1719, 'Joseph-Xavier Perrault', 'Monument Ã  Joseph-Xavier Perrault', 'Art public', 'Beaux-arts', 'PrÃªt', NULL, 'Aluminium, granit, bÃ©ton', NULL, 'Aluminium moulÃ© et fondu; granit poli', '280 cm x 92 cm x 92 cm', 'Place du Commerce', NULL, '800, rue du Square-Victoria, MontrÃ©al, QuÃ©bec', '45.501193', '-73.561572', NULL, '872243.0', '', '', 'Ville-Marie', 'Sculpture', 1332, 1),
(1490, 1721, 'Hommage Ã  Marguerite Bourgeoys', NULL, 'Art public', 'Beaux-arts', 'Commande en partenariat', '/Date(568011600000-0500)/', 'Bronze; granit; bÃ©ton', NULL, 'Bronze coulÃ©; cire perdue', '178 x 414 cm', 'Place Marguerite-Bourgeoys', NULL, '85, rue Notre-Dame est', '45.507373', '-73.555063', NULL, '900571.0', '', '', 'Ville-Marie', 'Sculpture', 1332, 1),
(1491, 1723, 'Forces', NULL, 'Art public', 'Beaux-arts', 'Autre', '/Date(1325394000000-0500)/', 'BÃ©ton; acier inoxydable', NULL, 'CoulÃ©; ancrÃ©', '220 x 370 x 230 cm', NULL, NULL, '6150, avenue Royalmount', '45.485971', '-73.674962', NULL, 'NUL022', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Sculpture', 1332, 1),
(1492, 1724, 'Monument Ã  Robert Burns', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulÃ©', '511 x 276 x 276 cm', 'Square Dorchester', NULL, NULL, '45.499462', '-73.571571', NULL, '1930-APE-SC-16', '', '', 'Ville-Marie', 'Sculpture', 1337, 1),
(1493, 1726, 'Pont d''Arles en transfert', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierres; bois; gravier; tourbe', NULL, 'SoudÃ©; boulonnÃ©; peint', '347 x 320 x 900 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429964', '-73.666167', NULL, '2002-SC-20', '', '', 'Lachine', 'Installation', 1338, 1),
(1494, 1728, 'Signal pour Takis', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; bÃ©ton', NULL, 'SoudÃ©; boulonnÃ©', '850 x 900 x 2000 cm', 'Parc RenÃ©-LÃ©vesque', NULL, 'Chemin du canal', '45.428754', '-73.682789', NULL, '2002-SC-32', '', '', 'Lachine', 'Installation', 1338, 1),
(1495, 1730, 'Lieux sans temple 3', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '229 x 140 x 117.5 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429924', '-73.666603', NULL, '2002-SC-17', '', '', 'Lachine', 'Sculpture', 1338, 1),
(1496, 1732, 'Lieux sans temple 4', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '225 x 110 x 131 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9\r', '45.429923', '-73.666567', NULL, '2002-SC-18', '', '', 'Lachine', 'Sculpture', 1338, 1),
(1497, 1734, 'Lieux sans temple 5', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; patinÃ©; oxydÃ©; collÃ©; boulonnÃ©', '250 x 140,5 x 117,5 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.429882', '-73.666570', NULL, '2002-SC-19', '', '', 'Lachine', 'Sculpture', 1338, 1),
(1498, 1736, 'Souvenir de 1955 ou 2026 Roberval', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierre', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '465 x 1017 x 800 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.429123', '-73.681809', NULL, '2002-SC-33', '', '', 'Lachine', 'Installation', 1338, 1),
(1499, 1738, 'Fontaine Wallace', 'Fontaine des Vosges', 'Art public', 'Beaux-arts', 'Don', NULL, 'Fonte', NULL, 'MoulÃ©; boulonnÃ©; peint', '275 cm x 82 x 82 cm', 'Parc Jean-Drapeau, ÃŽle Notre-Dame', NULL, NULL, '45.505419', '-73.528120', NULL, '160580.4', '', '', 'Ville-Marie', 'Sculpture', 1344, 1),
(1500, 1740, 'Triptyque sur le paysage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(852094800000-0500)/', 'Acier galvanisÃ©; verre', NULL, NULL, '200 cm', 'ÃŽle de la Visitation', NULL, '10897, rue Du Pont', '45.575443', '-73.661664', NULL, '1997-AP-SC-09', '', '', 'Ahuntsic-Cartierville', 'Installation', 1345, 1),
(1501, 1742, 'Signe solaire', NULL, 'Art public', 'Beaux-arts', 'Achat', NULL, 'Acier; bÃ©ton; fibre de verre; rÃ©sine d''Ã©poxy; l', NULL, NULL, '277 x 330 x 106.5 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.513247', '-73.530889', NULL, '1967-APE-SC-18', '', '', 'Ville-Marie', 'Sculpture', 1346, 1),
(1502, 1744, 'Ashapmouchouan', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier Corten', NULL, NULL, '417 x 245 cm', NULL, 'Habitations Laurier', '465, rue Gilford\rMontrÃ©al, QuÃ©bec', '45.526861', '-73.586445', NULL, '1972-SC-03', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1347, 1),
(1503, 1745, 'Ã‰closion', 'Note: L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit ', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; courbÃ©; soudÃ©; boulonnÃ©; peint', '258 x 142 x 202 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430104', '-73.666761', NULL, '2002-SC-21', '', '', 'Lachine', 'Sculpture', 1347, 1),
(1504, 1748, 'Ã€ voile dÃ©chirÃ©e', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier peint', NULL, NULL, '469 x 315 x 394 cm', NULL, 'Habitations De Maisonneuve', '2485, boulevard de Maisonneuve est\rMontrÃ©al, QuÃ©bec', '45.530132', '-73.548258', NULL, '902223.0', '', '', 'Ville-Marie', 'Sculpture', 1347, 1),
(1505, 1750, 'Sublime', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier; bÃ©ton', NULL, NULL, '762 x 457 cm', NULL, 'Habitations Favard', '2066, rue Favard\rMontrÃ©al, QuÃ©bec', '45.477999', '-73.556237', NULL, '1978-SC-03', '', '', 'Le Sud-Ouest', 'Sculpture', 1347, 1),
(1506, 1752, 'Ã‰volution de joie', 'L''Å“uvre Ã©tait initialement sans-titre, son titre actuel a Ã©tÃ© attribuÃ© par l''ayant droit de Mau', 'Art public', 'Beaux-arts', 'Inconnu', '', 'Acier; bÃ©ton', '', 'CoupÃ©; courbÃ©; soudÃ©', '252.5 x 165 x 335', '', 'Habitations De Mentana', '4110 rue MentanaMontrÃ©al, QuÃ©bec', '45.524225', '-73.574470', '', '1966-APE-SC-12', 'EntourÃ©e par les immeubles des habitations Mentana, lâ€™Å“uvre est prÃ©sentÃ©e sur une base en bÃ©ton qui est lÃ©gÃ¨rement surÃ©levÃ©e du sol. Il sâ€™agit dâ€™une sculpture constituÃ©e de sept disques courbes en acier peint en jaune, de diffÃ©rents diamÃ¨tres et posÃ©s sur la plate-forme Ã  lâ€™aide de deux tiges dâ€™acier (une de chaque cÃ´tÃ©). Les disques sont soudÃ©s les uns aux autres. Leur partie supÃ©rieure comporte une dÃ©coupe en forme de U.', 'http://localhost/ArtPublicMTL/images/img58764fe0089e7-evolutionjoie.JPG', 'Le Plateau-Mont-Royal', 'Sculpture', 1347, 1),
(1507, 1755, 'Sans titre', 'Cloisons-paravent et comptoir-rÃ©ception', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(441781200000-0500)/', 'Bois; acier', NULL, 'AssemblÃ©', '211 x 1589 x 348 cm', NULL, 'BibliothÃ¨que du Plateau-Mont-Royal', '465 Avenue du Mont-Royal Est, MontrÃ©al, QC H2J 1W3', '45.524831', '-73.582313', NULL, '1984-IA-MA-001', '', '', 'Le Plateau-Mont-Royal', 'Bois/menuiserie d''ar', 1352, 1),
(1508, 1756, 'Colonne stÃ¨le', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(631170000000-0500)/', 'Ardoise; silicone; verre', NULL, 'Assemblage; inscription', '244 x 45,5 x 32 cm', NULL, 'BibliothÃ¨que du Plateau-Mont-Royal', '465 Avenue du Mont-Royal Est, MontrÃ©al, QC H2J 1W3', '45.524831', '-73.582313', NULL, '1990-IA-SC-0016', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1352, 1),
(1509, 1757, 'Regard sur le fleuve', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'DÃ©coupÃ©; soudÃ©', '312 x 650 x 20 cm', 'Parc Stoney-Point', NULL, NULL, '45.435609', '-73.706410', NULL, '2002-SC-53', '', '', 'Lachine', 'Sculpture', 1352, 1),
(1510, 1759, 'Table des matiÃ¨res de supports du savoir', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1031889600000-0400)/', 'MatÃ©riaux divers', 'Gypse', 'Multiple', '311 x 863 x 6', NULL, 'BibliothÃ¨que Parc-Extension', '421, rue Saint-Roch, H3N 1K2', '45.531255', '-73.628576', NULL, '2002-IA-IN-0001', '', '', 'Villerayâ€“Saint-Michelâ€“Parc-Extension', 'Techniques mixtes', 1352, 1),
(1511, 1762, 'Tango de MontrÃ©al', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(923976000000-0400)/', 'Argile', NULL, 'Moulage d''argile crue', '1040 x 1740 cm', 'Place GÃ©rald-Godin', NULL, '4433-4435-4437, rue Rivard, Place GÃ©rald Godin', '45.524229', '-73.581463', NULL, '1999-SC-06', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1356, 1),
(1512, 1764, 'Les sons de la musique', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'BÃ©ton', NULL, 'CoulÃ©; moulÃ©', '246 x 1344 x 108 cm', 'De la GauchetiÃ¨re', NULL, NULL, '45.507074', '-73.560927', NULL, '902229.0', '', '', 'Ville-Marie', 'Sculpture', 1357, 1),
(1513, 1767, 'Cheval Ã  plume', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Calcaire', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; percÃ©; peint', '245 x 315 x 210 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.427985', '-73.679242', NULL, '2002-SC-35', '', '', 'Lachine', 'Sculpture', 1358, 1),
(1514, 1769, 'Ã‰tudes pour la figure, Saint-Laurent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre; pigments mÃ©talliques', NULL, 'TaillÃ©; gravÃ©; collÃ©; peint', '310 x 95 x 95 cm', 'Boulevard Saint-Joseph', NULL, NULL, '45.433725', '-73.685529', NULL, '2002-SC-54', '', '', 'Lachine', 'Sculpture', 1358, 1),
(1515, 1771, 'Monument aux braves de Verdun', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze', NULL, NULL, NULL, 'Parc du Souvenir', 'HÃ´tel de Ville arrondissement de Verdun', '4555 rue de Verdun', '45.458882', '-73.572314', NULL, '1924-AP-SC-0001', '', '', 'Verdun', 'Sculpture', 1360, 1),
(1516, 1773, 'After Babel, a Civic Square', 'After BabelAfter Babel / A Civic SquareAfter Babel (a civic square)', 'Art public', 'Beaux-arts', 'Don', '/Date(859352400000-0500)/', 'Acier corten; bronze; laiton', '', 'AssemblÃ©; soudÃ©; dÃ©coupÃ©; moulÃ©', '450 x 1000 cm', 'Promenade des artistes', '', '7 Boulevard de Maisonneuve', '45.509963', '-73.567202', '', '936043.0', 'La proposition de McEwen et Hilton-Moore est composÃ©e de deux colonnes et dâ€™une silhouette canine. Au sommet de la colonne de bronze et de celle dâ€™acier se trouvent respectivement un masque tendant lâ€™oreille vers le sol et une silhouette animale. Les trois Ã©lÃ©ments se font face dans un carrefour achalandÃ© du Quartier des spectacles.', 'http://localhost/ArtPublicMTL/images/img58764e6ae2cd2-afterbabel.JPG', 'Ville-Marie', 'Installation', 1361, 1),
(1517, 1776, 'Les sports', 'Murale (mosaÃ¯que)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(-321652800000-0400)/', 'CÃ©ramique; verre', NULL, 'Assemblage', '84 x 2261 x 2,5 cm', NULL, 'ArÃ©na Maurice-Richard', '2800 Rue Viau, MontrÃ©al, QC H1V 3J3', '45.562464', '-73.547304', NULL, '1959-IA-TM-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Techniques mixtes', 1362, 1),
(1518, 1777, 'La joie', 'Murale peinte', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(-300571200000-0400)/', 'Gesso; bÃ©ton', NULL, 'Modelage; peinture', '254 x 1234,5 x 10', NULL, 'Centre Pierre-Charbonneau', '3000 Rue Viau, MontrÃ©al, QC H1V 3J3', '45.562047', '-73.550076', NULL, '1959-IA-TM-0002', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Techniques mixtes', 1362, 1),
(1519, 1779, 'La peur', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(907214400000-0400)/', 'Granit; aluminium; acier galvanisÃ©; grÃ¨s; calcai', NULL, 'Peint; soudÃ©; assemblÃ©', '365 x 121 x 320cm', 'Place Dâ€™Youville', NULL, NULL, '45.501361', '-73.555219', NULL, '1998-SC-04', '', '', 'Ville-Marie', 'Installation', 1364, 1),
(1520, 1781, 'Monument Ã  la Pointe', 'La Pointe (titre provisoire)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(976683600000-0500)/', 'BÃ©ton; brique; acier; aluminium', NULL, NULL, '1400 x 400 cm', NULL, NULL, NULL, '45.476015', '-73.573449', NULL, '2001-APE-SC-07', '', '', 'Le Sud-Ouest', 'Installation', 1364, 1),
(1521, 1783, 'Daleth', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1257742800000-0500)/', 'Granit; bÃ©ton; acier inoxydable', NULL, 'CoulÃ©; gravÃ©; dÃ©coupÃ©; collÃ©; assemblÃ©', '350 x 6200 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534506', '-73.678436', NULL, '2010-AP-SC-0002', '', '', 'Ahuntsic-Cartierville', 'Installation', 1364, 1),
(1522, 1784, 'Trajectoire no 2', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint; patinÃ©; boulonnÃ©', '195 cm x 103 cm x 276 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430542', '-73.666852', NULL, '2002-SC-22', '', '', 'Lachine', 'Sculpture', 1367, 1),
(1523, 1786, 'Trame dâ€™appel', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit', NULL, 'Souder; peint; installation par ancrages chimique', '400 x 365 x 183 cm', 'Parc EugÃ¨ne-Dostie', 'Pavillon Vincent Lecavalier', '500, montÃ©e de l''Ã‰glise, MontrÃ©al', '45.487539', '-73.883436', NULL, '2002-SC-66', '', '', 'Lâ€™ÃŽle-Bizardâ€“Sainte-GeneviÃ¨ve', 'Sculpture', 1367, 1),
(1524, 1788, 'La naissance', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(788936400000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; soudÃ©', '380 X 100 X 140 cm', NULL, 'Centre culturel de Verdun', '5955 Bannantyne, Verdun, QuÃ©bec, H4H 1H6', '45.448586', '-73.577611', NULL, '1995-APE-SC-22', '', '', 'Verdun', 'Sculpture', 1367, 1),
(1525, 1790, 'Le coup de dÃ©part', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1226466000000-0500)/', 'Acier inoxydable', NULL, NULL, '538 X 371 X165 cm', 'Parc Philippe-Laheurte', NULL, NULL, '45.505415', '-73.718634', NULL, '2009-SC-01', '', '', 'Saint-Laurent', 'Sculpture', 1367, 1),
(1526, 1792, 'Monument Ã  Nelson', 'Colonne Nelson', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-5080647600000-0500)/', 'Calcaire; bÃ©ton; grÃ¨s', NULL, NULL, '2055 x 600 x 600 cm', 'Place Jacques-Cartier', NULL, NULL, '45.508186', '-73.553845', NULL, '1809-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 1371, 1),
(1527, 1794, 'Site/interlude', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisÃ©, pierre', NULL, 'DÃ©coupÃ©; soudÃ©', '400 x 185 x 8535 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.427777', '-73.676973', NULL, '2002-AP-SC-37', '', '', 'Lachine', 'Installation', 1372, 1),
(1528, 1796, 'Non titrÃ© (Fontaine; Les chÃ©rubins)', 'Fontaine; Les chÃ©rubins', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Fonte', NULL, 'CoulÃ©e', NULL, 'Parc Outremont', NULL, NULL, '45.517895', '-73.604464', NULL, '2002-AP-SC-0072', '', '', 'Outremont', 'Sculpture', 1373, 1),
(1529, 1798, 'La pierre et le feu', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '304 x 122 x 400 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428946', '-73.682977', NULL, '2002-AP-SC-36', '', '', 'Lachine', 'Sculpture', 1374, 1),
(1530, 1800, 'Temps dâ€™arrÃªt', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(1115697600000-0400)/', 'Acier intempÃ©rique; aluminium', NULL, 'Coupage; assemblage; soudure', '500 x 145 cm', 'Parc Molson', NULL, NULL, '45.549062', '-73.592662', NULL, '2006-SC-01', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1374, 1),
(1531, 1803, 'L''eau et le transport', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'aluchromie', '274.5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0002', '', '', 'LaSalle', 'Peinture', 1376, 1),
(1532, 1809, 'Courbes et vent', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BibliothÃ¨que de Pierrefonds', '13555, boulevard de Pierrefonds', '45.495937', '-73.847429', NULL, '1990-IA-SC-0017', '', '', 'Pierrefonds-Roxboro', 'Sculpture', 1377, 1),
(1533, 1810, 'Fontaine du square Saint-Louis', 'Fontaine Lacroix du square Viger', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '457 x 240 cm', 'Square Saint-Louis', NULL, NULL, '45.517041', '-73.569964', NULL, '900957.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1378, 1),
(1534, 1812, 'Sculpture-fontaine, square Sir-George-Ã‰tienne-Cartier', 'Sculpture-fontaine du square G.-Ã‰. Cartier', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '650 x 205 cm', 'Square Sir-George-Ã‰tienne-Cartier', NULL, NULL, '45.473413', '-73.586390', NULL, '900955.0', '', '', 'Le Sud-Ouest', 'Sculpture', 1378, 1),
(1535, 1815, 'Du long du long', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut; peinture; gravier', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©; peint', '120 X 287X 496 cm', 'Promenade PÃ¨re-Marquette', NULL, NULL, '45.431119', '-73.673413', NULL, '2002-SC-55', '', '', 'Lachine', 'Sculpture', 1380, 1),
(1536, 1817, 'Les voÃ»tes d''Ulysse', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier; bÃ©ton', NULL, 'DÃ©coupÃ©; soudÃ©; boulonnÃ©', '110 X 558 X 1226 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428916', '-73.682227', NULL, '2002-SC-37', '', '', 'Lachine', 'Sculpture', 1380, 1),
(1537, 1819, 'L''eau et les sports', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Commande Ã  l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La VÃ©rendrye, LaSalle, QuÃ©bec, H8N 2K2', '45.425053', '-73.619043', NULL, '1979-IA-PE-0001', '', '', 'LaSalle', 'Peinture', 1382, 1),
(1538, 1821, 'From A', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; mortier', NULL, NULL, '170 x 150 x 590 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428743', '-73.686001', NULL, '2002-SC-38', '', '', 'Lachine', 'Sculpture', 1383, 1),
(1539, 1823, 'Force et progrÃ¨s', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©; peint', '255 x 220 x 425 cm', 'Parc Monk', NULL, NULL, '45.431031', '-73.670124', NULL, '2002-SC-56', '', '', 'Lachine', 'Sculpture', 1384, 1),
(1540, 1825, 'Ã‰cluses', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'SoudÃ©', '415 x 111 x 135 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428215', '-73.678237', NULL, '2002-SC-39', '', '', 'Lachine', 'Sculpture', 1385, 1),
(1541, 1827, 'Vitraux', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, '/Date(-1388516400000-0500)/', NULL, NULL, NULL, NULL, NULL, 'HÃ´tel de Ville de MontrÃ©al', '275 Rue Notre-Dame Est, MontrÃ©al, QC H2Y 1C6', '45.508816', '-73.554069', NULL, '1926-IA-VT-0001', '', '', 'Ville-Marie', 'Vitrail', 1386, 1),
(1542, 1828, 'Jour ou nuit inconnue', 'Motifs et rÃ©seaux (titre provisoire)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(902894400000-0400)/', 'Verre; peinture; acier; bois', 'Verre', 'SÃ©rigraphie', '254 x 685 x 35 cm', NULL, 'Maison de la culture Pointe-aux-Trembles', '14001, rue Notre-Dame Est, MontrÃ©al, H1A 1T9', '45.668073', '-73.494782', NULL, '1998-IA-TM-0001', '', '', 'RiviÃ¨re-des-Prairiesâ€“Pointe-aux-Trembles', 'Techniques mixtes', 1387, 1),
(1543, 1834, 'Ce qui reste 1997-2001', 'Ce qui reste; DIA-LOG (titre provisoire)', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(990676800000-0400)/', 'Papier; bois; acrylique', 'Bois', NULL, '400 x 234 x 2 cm', NULL, 'Centre d''histoire de MontrÃ©al', '335 Place d''Youville, MontrÃ©al, QC H2Y 3T1', '45.501079', '-73.555515', NULL, '2001-API-PH-05', '', '', 'Ville-Marie', 'Photographie', 1387, 1),
(1544, 1835, 'Le roi Singe', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(441781200000-0500)/', 'BÃ©ton', NULL, 'CoulÃ©; assemblÃ©; moulÃ©', '550 x 400 x 21 cm', 'De la GauchetiÃ¨re', NULL, NULL, '45.506907', '-73.560590', NULL, '902215.0', '', '', 'Ville-Marie', 'Sculpture', 1389, 1),
(1545, 1837, 'Le spectacle de la curiositÃ©', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(894859200000-0400)/', 'Bois; verre; mÃ©tal; papier', 'bois, verre et mÃ©tal', 'Impression sur papier ilfochrome', '260 x 800 cm', NULL, 'Maison de la culture d''Ahuntsic - Cartierville', '10 300 rue Lajeunesse, 1er Ã©tage, MontrÃ©al (QuÃ©bec), H3L 2E5 ', '45.553357', '-73.662743', NULL, '1998-IN-05', '', '', 'Ahuntsic-Cartierville', 'Photographie', 1390, 1),
(1546, 1838, 'Espace vert', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1151380800000-0400)/', 'Aluminium; verre; acier inoxydable; acrylique', 'Plexiglas', 'Impressions numÃ©riques montÃ©es Ã  froid sur supp', '215 x 450 x 36', 'Parc Pierre-Elliott-Trudeau', 'Centre communautaire intergÃ©nÃ©rationnel d''Outremont', '999, avenue McEachran, MontrÃ©al (QC) H2V 3E6', '45.519579', '-73.619247', NULL, '2006-PH-02', '', '', 'Outremont', 'Photographie', 1390, 1),
(1547, 1839, 'ÃŠtre +', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1259125200000-0500)/', 'Aluminum', NULL, NULL, NULL, NULL, 'Chalet du parc Ã‰tienne Desmarteaux', '3800, rue Beaubien est, MontrÃ©al, QC H1X 2T1', '45.559685', '-73.581582', NULL, '2010-IA-IN-0001', '', '', 'Rosemontâ€“La Petite-Patrie', 'Installation', 1392, 1),
(1548, 1840, 'Monument Ã  Louis Cyr', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(31554000000-0500)/', 'Bronze; granit; bÃ©ton', NULL, 'Bronze coulÃ©; cire perdue', '440  x 183  x 180 cm', 'Parc des Hommes-Forts', NULL, NULL, '45.475382', '-73.593225', NULL, '730929.0', '', '', 'Le Sud-Ouest', 'Sculpture', 1393, 1),
(1549, 1842, 'Le serment de Dollard des Ormeaux et de ses compagnons', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503965', '-73.587328', NULL, '1931-IA-PE-0014', '', '', 'Ville-Marie', 'Peinture', 1394, 1),
(1550, 1843, 'Monument Ã  Jean-Olivier ChÃ©nier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Cuivre; granit; rÃ©sine', NULL, 'Sculpture de cuivre formÃ©; soudure Ã  l''Ã©tain.', '400 x 100 x 100 cm', 'Square Viger', NULL, NULL, '45.511042', '-73.554960', NULL, '905189.5', '', '', 'Ville-Marie', 'Sculpture', 1395, 1),
(1551, 1851, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Calcaire; bÃ©ton ', NULL, 'SculptÃ©', '348 x 335 x 267 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499994', '-73.594489', NULL, '902233.0', '', '', 'Ville-Marie', 'Sculpture', 1396, 1),
(1552, 1853, 'Maisonneuve Ã©rige une croix sur la montagne', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.503995', '-73.587278', NULL, '1931-IA-PE-0015', '', '', 'Ville-Marie', 'Peinture', 1397, 1),
(1553, 1854, 'Monument Ã  Isabelle la Catholique', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-347137200000-0500)/', 'Bronze; cuivre; granit', NULL, 'Bronze coulÃ©', '293 x 152.5 x 107 cm', 'Parc Sir-Wilfrid-Laurier', NULL, NULL, '45.531079', '-73.586023', NULL, '900922.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1398, 1),
(1554, 1856, 'Ã‰pisode', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(63090000000-0500)/', 'Ciment', NULL, 'Ciment fondu', '184 x 250 x 113 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.560483', '-73.558557', NULL, '1966-SC-12', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1399, 1),
(1555, 1859, 'Continuum 2009 (Ã  la mÃ©moire de Pierre Perrault)', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1243483200000-0400)/', 'Acier corten', NULL, 'AssemblÃ©; soudÃ©', '305 x 770 x 300 cm', 'Parc de la Promenade-Bellerive', NULL, NULL, '45.604249', '-73.509548', NULL, '2009-SC-04', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1400, 1),
(1556, 1860, 'Explorer', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(807336000000-0400)/', 'Acier brut; acier inoxydable; rÃ©sine; fibre de ve', NULL, 'SoudÃ©; boulonnÃ©; dÃ©coupÃ©; moulÃ©', '484 x 178 x 212 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428890', '-73.680853', NULL, '2002-SC-40', '', '', 'Lachine', 'Sculpture', 1401, 1),
(1557, 1865, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'SculptÃ©', '336 x 117 x 178 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500025', '-73.594055', NULL, '1966-APE-SC-14', '', '', 'Ville-Marie', 'Sculpture', 1402, 1),
(1558, 1867, 'Non titrÃ©', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'Bois; laiton; aluminium; verre; peinture; disposit', NULL, 'DÃ©coupÃ©; assemblÃ©; boulonnÃ©', '1 200 x 1 200 x 15 cm', NULL, 'BibliothÃ¨que CÃ´te-des-Neiges', '5290, chemin de la CÃ´te-des-Neiges, MontrÃ©al, QC, H3T 1Y2', '45.496073', '-73.622116', NULL, '1983-IA-TM-0001', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Techniques mixtes', 1403, 1),
(1559, 1871, 'Non titrÃ© (Portes)', 'Portes', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maison de la culture Notre-Dame-de-GrÃ¢ce', '3755, rue Botrel, MontrÃ©al, H4A 3G8', '45.475605', '-73.614587', NULL, '1983-IA-MB-0001', '', '', 'CÃ´te-des-Neigesâ€“Notre-Dame-de-GrÃ¢ce', 'Mobilier', 1404, 1),
(1560, 1872, 'Le phare d''ArchimÃ¨de', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; acier; nÃ©on', NULL, 'MeulÃ©; cimentÃ©', '750 x 1000 x 1050 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.429161', '-73.688205', NULL, '1986-APE-SC-05', '', '', 'Lachine', 'Installation', 1405, 1),
(1561, 1874, 'Le dÃ©jeuner sur lâ€™herbe', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'Granit; pierre indiana; bÃ©ton; bronze', NULL, 'TaillÃ©; polissage; tournÃ©; coulÃ©; patinÃ©', '300 x 900 x 1308 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428482', '-73.677576', NULL, '2002-SC-42', '', '', 'Lachine', 'Installation', 1405, 1),
(1562, 1876, 'Girafes', 'Non titrÃ©e', 'Art public', 'Beaux-arts', 'Achat', '/Date(-18993600000-0400)/', 'Acier', NULL, 'AssemblÃ©; soudÃ©; peint', '11,8 x 3 m', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.520049', '-73.532032', NULL, '1967-SC-20', '', '', 'Ville-Marie', 'Sculpture', 1407, 1),
(1563, 1878, 'Migration', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-63140400000-0500)/', 'Fonte', NULL, 'CoulÃ©; boulonnÃ©', '465 x 230 x 400 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.514075', '-73.534655', NULL, '901609.0', '', '', 'Ville-Marie', 'Sculpture', 1407, 1),
(1564, 1880, 'Hommage Ã  RenÃ© LÃ©vesque', '', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Ciment; acier inoxydable; verre', '', 'Ciment moulÃ©', '518 x 1829 x 457 cm', 'Parc RenÃ©-LÃ©vesque', '', 'Parc RenÃ©-LÃ©vesque', '45.428749', '-73.687124', '', '1988-SC-03', 'Cette Å“uvre a Ã©tÃ© commandÃ©e au sculpteur Robert Roussil par la Ville de Lachine, dans le but de commÃ©morer la carriÃ¨re politique de RenÃ© LÃ©vesque. InstallÃ©e au parc portant le nom de cet ancien premier ministre du QuÃ©bec, elle regroupe neuf colonnes cylindriques en bÃ©ton, montÃ©es sur des socles, qui tÃ©moignent des neuf annÃ©es de lâ€™homme politique Ã  la tÃªte du gouvernement quÃ©bÃ©cois. ConÃ§ues pour Ãªtre illuminÃ©es, ces colonnes sillonnent le ciel comme des cheminÃ©es crachant chacune une flamme. Ces flammes simulent des phares, symboles dâ€™ascension et dâ€™affirmation. Cette Å“uvre-hommage puise dans le rÃ©pertoire formel frÃ©quemment utilisÃ© par Roussil. En effet, chaque colonne est couronnÃ©e dâ€™un anneau de bÃ©ton simulant des flammes ondulantes semblables aux pointes effilÃ©es de lâ€™Å“uvre La Grande Fonte (1973) et Ã  celles dâ€™un ensemble crÃ©Ã© pour la Ville de Saint-Laurent en 1990. Roussil parvient, avec du bÃ©ton, Ã  la mÃªme vibration quâ€™il avait rÃ©ussie avec ses Å“uvres antÃ©rieures en bois.', 'http://localhost/ArtPublicMTL/images/img587649f61b301-hommageareneelesvesque.JPG', 'Lachine', 'Sculpture', 1407, 1),
(1565, 1882, 'Lieu', 'Fleur d''hiver\rSans titre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(632120400000-0500)/', 'BÃ©ton armÃ©', NULL, 'MoulÃ©; assemblÃ©', '700 x 914 cm', 'Parc NoÃ«l-Sud', NULL, NULL, '45.516350', '-73.725394', NULL, '2002-SC-70', '', '', 'Saint-Laurent', 'Sculpture', 1407, 1),
(1566, 1885, 'Les promeneurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, NULL, '592 x 190 x 812', 'Parc Saint-Laurent', NULL, NULL, '45.527273', '-73.686882', NULL, '1990-APE-SC-08', '', '', 'Saint-Laurent', 'Sculpture', 1411, 1),
(1567, 1887, 'Trampolino', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable, acier Corten', NULL, 'SoudÃ©; assemblÃ©', '350 x 600', NULL, 'Centre LÃ©onard de Vinci', '8371, boulevard Lacordaire, MontrÃ©al', '45.585723', '-73.596644', NULL, '2001-APE-SC-06', '', '', 'Saint-LÃ©onard', 'Sculpture', 1412, 1),
(1568, 1889, 'Dex', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; ciment', NULL, 'AssemblÃ©; soudÃ©; percÃ©', '148 x 503 x 730 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430429', '-73.666229', NULL, '2002-SC-23', '', '', 'Lachine', 'Sculpture', 1413, 1),
(1569, 1891, 'AffinitÃ©s', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Cuivre; granit', NULL, 'AssemblÃ©; soudÃ©; martelÃ©; dÃ©coupÃ©; patinÃ©', '268 x 160 x 150 cm', 'Place Upper-Trafalgar', NULL, NULL, '45.495832', '-73.596190', NULL, '902200.0', '', '', 'Ville-Marie', 'Sculpture', 1414, 1),
(1570, 1893, 'Puerta de la Amistad', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(792824400000-0500)/', 'Acier peint', NULL, NULL, '750 x 120 x 570 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.511015', '-73.533386', NULL, '951358.0', '', '', 'Ville-Marie', 'Sculpture', 1415, 1),
(1571, 1895, 'Monument Ã  Norman Bethune', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(229752000000-0400)/', 'Marbre; granit', 'Pierre', 'Taille directe', '380 x 100 x 100 cm', 'Place Norman-Bethune', NULL, NULL, '45.495970', '-73.579460', NULL, '770958.0', '', '', 'Ville-Marie', 'Sculpture', 1416, 1),
(1572, 1897, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre', NULL, 'Taille directe', '274 x 127 x 81 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500500', '-73.594335', NULL, '902235.0', '', '', 'Ville-Marie', 'Sculpture', 1417, 1),
(1573, 1899, 'Les sÅ“urs cardinales', 'Les sÅ“urs cardinales (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre; granit', NULL, 'Taille directe', '440 x 360 x 100', 'Parc du Mont-Royal', NULL, NULL, '45.499881', '-73.594816', NULL, '902236.0', '', '', 'Ville-Marie', 'Sculpture', 1418, 1),
(1574, 1901, 'L''ange de pierre', 'L''ange de pierre, (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Marbre; bÃ©ton', NULL, 'SculptÃ©', '208 x 152cm', 'Parc du Mont-Royal', NULL, NULL, '45.500421', '-73.593759', NULL, '1964-SC-01', '', '', 'Ville-Marie', 'Sculpture', 1419, 1),
(1575, 1912, 'Non titrÃ©', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Bronze', NULL, 'CoulÃ©', '445 x 600 x 600 cm', 'Parc LadauversiÃ¨re', NULL, NULL, '45.582048', '-73.582485', NULL, '1986-AP-SC-0010', '', '', 'Saint-LÃ©onard', 'Sculpture', 1420, 1),
(1576, 1913, 'La fondation de MontrÃ©al est dÃ©cidÃ©e Ã  Paris', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.504020', '-73.587238', NULL, '1931-IA-PE-0016', '', '', 'Ville-Marie', 'Peinture', 1421, 1),
(1577, 1914, 'Polaris en lumiÃ¨re', NULL, 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1328072400000-0500)/', 'LumiÃ¨re', NULL, 'Image lumineuse projettÃ©e au sol', NULL, 'Place d''Armes', NULL, NULL, '45.504636', '-73.557128', NULL, '2013-AP-MU-0003', '', '', 'Ville-Marie', 'MultimÃ©dia', 1422, 1),
(1578, 1916, 'Ã‰quinoxe', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Granit; acier inoxydable', NULL, 'GravÃ©; incrustÃ©', '248 x 200', 'Promenade de la Commune', NULL, NULL, '45.508180', '-73.551290', NULL, '2013-AP-IN-0002', '', '', 'Ville-Marie', 'Installation', 1422, 1),
(1579, 1917, 'Force', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'BÃ©ton, granit; eau; cÃ©ramique', NULL, NULL, '330 x 2900 x 4500 cm', 'Square Viger', NULL, NULL, '45.512625', '-73.553821', NULL, '900982.0', '', '', 'Ville-Marie', 'Sculpture', 1424, 1),
(1580, 1919, 'Murale cÃ©ramique', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'CÃ©ramique; peinture', NULL, 'Assemblage; peinture', '213,5 x 1559 cm ', NULL, 'Centre Pierre-Charbonneau', '3000 Rue Viau, MontrÃ©al, QC H1V 3J3', '45.562047', '-73.550076', NULL, '1960-IA-CE-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'CÃ©ramique', 1424, 1),
(1581, 1920, 'Monument Ã  Nicolas Copernic', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-63140400000-0500)/', 'Bronze; bÃ©ton', NULL, 'BronzÃ© coulÃ©', '452 x 148 cm', NULL, 'PlanÃ©tarium Rio Tinto Alcan de MontrÃ©al', '4801, avenue Pierre-De Coubertin, MontrÃ©al  QuÃ©bec  H1V 3V4', '45.560641', '-73.549375', NULL, '689009.4', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Sculpture', 1426, 1),
(1582, 1923, 'Dollard des Ormeaux meurt Ã  Long-Sault pour sauver la colonie', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, MontrÃ©al, QC H3H 1A1', '45.504105', '-73.587259', NULL, '1931-IA-PE-0017', '', '', 'Ville-Marie', 'Peinture', 1427, 1),
(1583, 1924, 'Buste de JosÃ© de San Martin', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; GrÃ¨s ', NULL, 'Fonte Ã  la cire perdue', '276 x 105.5 x 95 cm', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489365', '-73.580891', NULL, '2000-SC-09', '', '', 'Ville-Marie', 'Sculpture', 1428, 1),
(1584, 1926, 'Spatio-mobile #1', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'SoudÃ©, peint', '176 x 135 x 150 cm', 'Parc du musÃ©e de Lachine', 'MusÃ©e de Lachine', '1, chemin du MusÃ©e, Lachine (QuÃ©bec) H8S 4L9', '45.430317', '-73.666315', NULL, '2002-SC-24', '', '', 'Lachine', 'Sculpture', 1429, 1),
(1585, 1928, 'Le phare du Cosmos', 'Phare cosmique', 'Art public', 'Beaux-arts', 'Don', '/Date(198216000000-0400)/', 'Acier', NULL, 'Taille; soudÃ©', '960 x 280 cm', 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, NULL, '45.509335', '-73.532705', NULL, '761308.0', '', '', 'Ville-Marie', 'Sculpture', 1429, 1),
(1586, 1930, 'Parvis et portail #22', 'Place de l''an 2000', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminium; acier', NULL, 'SoudÃ©; poli', '492 x 575 x 1000 cm', 'Place de lâ€™an 2000', NULL, NULL, '45.516024', '-73.679906', NULL, '2000-APE-SC-05', '', '', 'Saint-Laurent', 'Installation', 1429, 1),
(1587, 1932, 'La force', 'La force (SISM-64) \rNon titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Fonte', NULL, 'CoulÃ©; moulÃ©', '244 x 533 x 275 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500095', '-73.595506', NULL, '642238.0', '', '', 'Ville-Marie', 'Sculpture', 1432, 1),
(1588, 1934, 'La sainte TrinitÃ©', 'Holy Trinity', 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', '/Date(-157748400000-0500)/', 'Fonte; Ã©poxy; acier', NULL, 'MoulÃ©; soudÃ©; peint (?)', '130 x 90 x 165', 'Square Saint-Louis', NULL, NULL, '45.517612', '-73.569411', NULL, '902216.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1432, 1),
(1589, 1936, 'Rectangle', 'Sans titre', 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', '/Date(-157748400000-0500)/', 'BÃ©ton; acier; verre; pierre', NULL, 'MoulÃ©; sculptÃ©', '245 x L:124 x L:85 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.560966', '-73.564589', NULL, '1965-SC-06', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1432, 1),
(1590, 1938, 'Sans titre', 'Non titrÃ©e (square Saint-Louis)\rLe chien du QuÃ©bec', 'Art public', 'Beaux-arts', 'DÃ©pÃ´t', '/Date(63090000000-0500)/', 'Fonte; peinture', NULL, 'CoulÃ©; peint', '97 x 167 x 183 cm', 'Square Saint-Louis', NULL, NULL, '45.517421', '-73.569295', NULL, '902217.0', '', '', 'Le Plateau-Mont-Royal', 'Sculpture', 1432, 1),
(1591, 1940, 'Justice et paix', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(504939600000-0500)/', 'Calcite; acier; peinture', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; peint', '360 x 300 x 570 cm', 'Parc Saint-LÃ©onard', NULL, NULL, '45.586578', '-73.595143', NULL, '1986-APE-SC-06', '', '', 'Saint-LÃ©onard', 'Sculpture', 1432, 1),
(1592, 1942, 'L''argoulet', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit', NULL, 'SculptÃ©; taillÃ©; poli; assemblÃ©', '550 x 130 x 242', 'Parc Labelle', NULL, NULL, '45.472525', '-73.570481', NULL, '1985-APE-SC-05', '', '', 'Verdun', 'Sculpture', 1437, 1),
(1593, 1944, 'Les cariatides', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; granit; gravier; vÃ©gÃ©taux.', NULL, 'DÃ©coupÃ©; collÃ©; boulonnÃ©; taillÃ©; peint; plan', '262 x 610 x 1723 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428688', '-73.684251', NULL, '2002-SC-44', '', '', 'Lachine', 'Installation', 1437, 1),
(1594, 1946, 'Les dos blancs', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Calcaire; granit; aluminium; ciment', NULL, 'Techniques multiples', '251 x 350 x 930 cm', 'Parc Caron', NULL, NULL, '45.521679', '-73.671706', NULL, '1990-APE-SC-06', '', '', 'Saint-Laurent', 'Installation', 1437, 1),
(1595, 1948, 'Le portage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; briques; pigments; vÃ©gÃ©taux', NULL, 'TaillÃ©; sculptÃ©; gravÃ©; boulonnÃ©e; collÃ©', '265 x 260 x 800 cm', 'Parc Summerlea', NULL, NULL, '45.437485', '-73.714281', NULL, '2002-SC-58', '', '', 'Lachine', 'Installation', 1437, 1),
(1596, 1950, 'Cadran solaire', NULL, 'Art public', 'Arts dÃ©coratifs', 'Don', '/Date(-63140400000-0500)/', 'Acier; aluminium', NULL, 'Soudage; coulÃ©; anodisation; peint', '350 x 360 x 360 cm', NULL, 'PlanÃ©tarium Rio Tinto Alcan de MontrÃ©al', '4801, avenue Pierre-De Coubertin, MontrÃ©al  QuÃ©bec  H1V 3V4', '45.560805', '-73.549767', NULL, '1968-AP-DI-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'Design industriel', 1441, 1),
(1597, 1951, 'Story Rock', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre', NULL, NULL, '244 x 240 x 220 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428096', '-73.677199', NULL, '2002-SC-46', '', '', 'Lachine', 'Sculpture', 1442, 1),
(1598, 1953, 'Le navigateur', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Granit', NULL, 'GravÃ©', '350 x 620 x 245 cm', 'Parc Summerlea', NULL, NULL, '45.438513', '-73.719208', NULL, '2002-SC-59', '', '', 'Lachine', 'Sculpture', 1442, 1),
(1599, 1955, 'Vortexit II', 'Vortexit 2', 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1234155600000-0500)/', 'Granit; gravier', NULL, 'AssemblÃ©; gravÃ©; fixÃ©', '270 x 1050 x 1440 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428603', '-73.678586', NULL, '2009-IN-06', '', '', 'Lachine', 'Sculpture', 1442, 1),
(1600, 1957, 'Non titrÃ© (Traitement pictural au plafond de l''ancien bureau du conservateur)', 'Traitement pictural au plafond de l''ancien bureau du conservateur', 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ã‰difice Gaston-Miron', '1210, rue Sherbrooke Est, MontrÃ©al (QuÃ©bec) H2L 1L9', '45.522741', '-73.565331', NULL, '1931-IA-PE-0018', '', '', 'Ville-Marie', 'Peinture', 1445, 1),
(1601, 1958, 'Murale extÃ©rieure', 'Non titrÃ©e', 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'MÃ©tal, pigments', NULL, NULL, '183 x 361,5 cm', 'Parc du Mont-Royal', 'Pavillon du lac aux Castors', '2000, chemin Remembrance, MontrÃ©al (QuÃ©bec) H3H 1A2', '45.498526', '-73.599161', NULL, '2006-IA-EM-0001', '', '', 'Ville-Marie', 'Ã‰maux', 1446, 1),
(1602, 1960, 'Des lauriers pour mÃ©moire, Jean-Duceppe 1923-1990', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de MontrÃ©al (Concou', '/Date(1232341200000-0500)/', 'Acier inoxydable', NULL, 'Forge; soudure; assemblage', '240 x  1130 cm', 'Parc Jean-Duceppe', NULL, NULL, '45.543529', '-73.566053', NULL, '2008-IN-02', '', '', 'Rosemontâ€“La Petite-Patrie', 'Installation', 1447, 1),
(1603, 1962, 'Monument Ã  Jacques Cartier', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-2415643200000-0400)/', 'Bronze; acier; fonte de fer.', NULL, 'Statue originale : cuivre repoussÃ©-estampÃ©; Stat', '9.14 m (h) x 3.6 m (diamÃ¨tre)', 'Square Saint-Henri', NULL, NULL, '45.480058', '-73.586269', NULL, '050903.0', '', '', 'Le Sud-Ouest', 'Sculpture', 1448, 1),
(1604, 1964, 'Le banc des amoureux', 'Lover''s Bench', 'Art public', 'Beaux-arts', 'Don', '/Date(537771600000-0500)/', 'Bronze', NULL, 'CoulÃ©', '184 x 240 x 150 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.556163', '-73.558294', NULL, '1987-APE-SC-26', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1449, 1),
(1605, 1966, 'Monument Ã  sir John A. Macdonald', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2353262400000-0400)/', 'Bronze; granit', NULL, NULL, '1800 x 486 x 432 cm', 'Place du Canada', NULL, NULL, '45.498786', '-73.569638', NULL, '1895-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 1450, 1),
(1606, 1968, 'Wind Boat', 'Bateau Ã  vent', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisÃ©; aluminium', NULL, 'AssemblÃ©; imbriquÃ©', '762 x 183 x 148 cm', 'Boulevard LaSalle', NULL, NULL, '45.432687', '-73.588115', NULL, '1990-APE-SC-11', '', '', 'LaSalle', 'Sculpture', 1451, 1),
(1607, 1970, 'The Passing Song', 'Passing Song, The', 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier brut, bÃ©ton', NULL, NULL, '456 x 744 cm', 'Parc RenÃ©-LÃ©vesque', NULL, NULL, '45.428971', '-73.681205', NULL, '2002-SC-47', '', '', 'Lachine', 'Installation', 1451, 1);
INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(1608, 1972, 'The First Jewel', 'La femme au collier', 'Art public', 'Beaux-arts', 'Don', '/Date(660546000000-0500)/', 'Bronze', NULL, 'CoulÃ©', '172 x 115 x 70 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, MontrÃ©al, QuÃ©bec, H1X 2B2', '45.559703', '-73.556911', NULL, '909084.0', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1453, 1),
(1609, 1974, 'Sans titre', 'Non titrÃ©e (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'SculptÃ©', '197 x 102 x 84 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499908', '-73.594361', NULL, '1965-APE-SC-04', '', '', 'Ville-Marie', 'Sculpture', 1454, 1),
(1610, 1976, 'Monument Ã  la reine Victoria', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-3092583600000-0500)/', 'Bronze; granit', NULL, NULL, '1190 x 437.5 x 437.5 cm', 'Square Victoria', NULL, NULL, '45.501421', '-73.561586', NULL, '1872-APE-SC-01', '', '', 'Ville-Marie', 'Sculpture', 1455, 1),
(1611, 2994, 'L''Ã©treinte', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', '/Date(1320728400000-0500)/', 'Aluminium; granit', NULL, 'Aluminium: dÃ©coupÃ©; pliÃ©; soudÃ© et assemblÃ©. ', 'Les diffÃ©rents ensemble de l''installation sont rÃ', 'Parc Paul-Dozois', NULL, 'Devant l''entrÃ©e du 250, boul. de Maisonneuve est', '45.512386', '-73.563593', NULL, '2011-AP-IN-0014', '', '', 'Ville-Marie', 'Installation', 1456, 1),
(1612, 3093, 'Constellation en Sol', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'RÃ©sine de copolyester; impression', NULL, 'DÃ©coupage au laser; impression; assemblage', NULL, NULL, 'BibliothÃ¨que Marc-Favreau', '500 Boulevard Rosemont, MontrÃ©al, Qc H2S 0C4', '45.531832', '-73.597543', NULL, '2013-IA-IN-0001', '', '', 'Rosemontâ€“La Petite-Patrie', 'Techniques mixtes', 1457, 1),
(1613, 3096, 'Hommage Ã  l''esprit sportif', NULL, 'IntÃ©gration Ã  l''architecture', 'Arts dÃ©coratifs', 'IntÃ©gration des arts Ã  l''architecture', NULL, 'CÃ©ramique ?', NULL, NULL, NULL, NULL, 'ArÃ©na Garon', '11212 Rue Garon, MontrÃ©al-Nord, QC', '45.594994', '-73.637955', NULL, '1990-IA-CE-0001', '', '', 'MontrÃ©al-Nord', 'CÃ©ramique', 1458, 1),
(1614, 3097, 'La Bourrasque', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1289365200000-0500)/', 'Acier inoxydable', NULL, 'DÃ©coupe au laser', '2700 x 570 cm', NULL, 'BibliothÃ¨que du BoisÃ©', '2727 Boulevard Thimens, MontrÃ©al, QC H4R 1T4', '45.504072', '-73.705185', NULL, '2010-IA-SC-0001', '', '', 'Saint-Laurent', 'Sculpture', 1459, 1),
(1615, 3098, 'Voiles', 'Voile I & Voile II', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'Poli, finition effectuÃ©e par meuleuse Ã  disque (', '488 x 310 x 10 cm\r488 x 275 x 13 cm', 'Boulevard Albert-Brosseau', NULL, NULL, '45.603186', '-73.642556', NULL, '1990-APE-SC-14', '', '', 'MontrÃ©al-Nord', 'Sculpture', 1460, 1),
(1616, 3101, 'ChorÃ©graphie pour les humains et les Ã©toiles', NULL, 'Art public', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1390194000000-0500)/', 'BÃ©ton ductal; composantes technologiques', NULL, 'BÃ©ton coulÃ© (stÃ¨les); vidÃ©oprojections (oeuvre', 'Hauteur 1500cm', NULL, 'PlanÃ©tarium Rio Tinto Alcan de MontrÃ©al', '4801, avenue Pierre-De Coubertin, MontrÃ©al  QuÃ©bec  H1V 3V4', '45.560735', '-73.550116', NULL, '2014-AP-MU-0001', '', '', 'Mercierâ€“Hochelaga-Maisonneuve', 'MultimÃ©dia', 1461, 1),
(1617, 3104, 'Carrefour', NULL, 'IntÃ©gration Ã  l''architecture', 'Beaux-arts', 'IntÃ©gration des arts Ã  l''architecture', '/Date(1359003600000-0500)/', 'Bronze; acier inoxydable', NULL, 'Moulage; assemblage', NULL, NULL, 'La Station (Maison intergÃ©nÃ©rationnelle)', '201, rue Berlioz, Verdun (QuÃ©bec) H3C 1C1', '45.460134', '-73.544592', NULL, '2013-IA-SC-0001', '', '', 'Verdun', 'Sculpture', 1462, 1),
(1618, 3107, 'Kate & Nora', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1376971200000-0400)/', 'Acier inoxydable', NULL, NULL, '100 x 90 x 45 cm', 'Place Kate-McGarrigle', NULL, NULL, '45.517594', '-73.597311', NULL, '2013-AP-IN-0001', '', '', 'Outremont', 'Installation', 1463, 1),
(1619, 5143, 'COSMOTOME NO 7, OH HOMME !', NULL, 'Art public', 'Beaux-arts', 'Commande Ã  l''artiste', '/Date(1388552400000-0500)/', NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, ÃŽle Sainte-HÃ©lÃ¨ne', NULL, '200, chemin du Tour-de-d''Ã®sle, Montreal, QC, H3C 4G8', '45.515301', '-73.530778', NULL, '2014-AP-SC-0001', '', '', 'Ville-Marie', 'Sculpture', 1464, 1),
(1620, 5809, 'Point d''origine', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al', NULL, 'Aluminium; Granit', NULL, 'Aluminium taillÃ©, soudÃ© et assemblÃ© (fini satin', '192 x 290 x 633,5 cm', 'Place Raymond-Plante', NULL, '780, boulevard Rosemont, MontrÃ©al, H2S 0A7', '45.533555', '-73.596281', NULL, '2014-AP-SC-0003', '', '', 'Rosemontâ€“La Petite-Patrie', 'Sculpture', 1465, 1),
(1621, 6680, 'La vÃ©locitÃ© des lieux', 'La grande roue', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de MontrÃ©al (Concou', '/Date(1434686400000-0400)/', 'Aluminium, acier galvanisÃ©, acier inoxydable, ple', NULL, 'Assemblage', '19 x 16 x 13 m', 'Carrefour Henri-Bourassaâ€“Pie-IX', NULL, NULL, '45.596262', '-73.642587 ', NULL, '2015-AP-SC-0003', '', '', 'MontrÃ©al-Nord', 'Sculpture', 1466, 1),
(1895, NULL, 'Murale de dessins collectifs', '', '', '', '', '', '', '', '', '', '', '', 'HEC MontrÃ©al, Ã©difice Decelles', '', '', '', '', 'Ã‰voquant lâ€™innovation, le passage de lâ€™ombre Ã  la lumiÃ¨re dâ€™une civilisation, lâ€™Å“uvre est aussi un appel Ã  lâ€™ouverture et au rapprochement, demandant une rÃ©flexion aux spectateurs. Ces murs sont des Â« manuscrits visuels Â», solidifiant et commÃ©morant les pratiques artistiques urbaines et contemporaines montrÃ©alaises. Et ce, en rÃ©fÃ©rence aux valeurs de HEC MontrÃ©al, soit :\n\nLe Leadership\nLes Affaires\nLa Recherche\nLes Technologies\nLe Multiculturalisme\nLa Contribution sociale', 'http://localhost/ArtPublicMTL/images/img58759dd296c70-muralesdessinscollaboratifs.JPG', 'CÃ´te-des-Neiges-Notre-Dame-de-GrÃ¢ce', 'Peinture', 1467, 1),
(1896, NULL, 'ArrÃªt sur image 2', '', '', '', '', '', '', '', '', '', '', '', 'Le 1000 De La GauchetiÃ¨re', '', '', '', '', 'Le collectif in situ atelier dâ€™architecture, Annie Lebel et StÃ©phane Pratte, travaille depuis 1995 Ã  dÃ©finir une pratique architecturale multidisciplinaire: mobilier, design intÃ©rieur, installation, musÃ©ographie, architecture rÃ©sidentielle, culturelle, commerciale', 'http://localhost/ArtPublicMTL/images/img5875a03985b59-arretsurimage.JPG', 'Ville-Marie', 'Installation', NULL, 1),
(1897, NULL, 'ArrÃªt sur image', '', '', '', '', '', '', '', '', '', '', '', '1000 Rue de la GauchetiÃ¨re O, Montreal, QC H3B 4W5', '', '', '', '', 'Sâ€™implantant au coeur du hall dâ€™entrÃ©e du 1000, lieu de passage et de lumiÃ¨re, ArrÃªt sur image est une installation cinÃ©tique qui utilise les changements de lumiÃ¨re et la multiplicitÃ© des points de vue produits par le mouvement du spectateur pour jouer avec lâ€™architecture et en transformer la perception. Lâ€™installation met en scÃ¨ne une cascade de plaques rÃ©flÃ©chissantes tombant du ciel qui se figent au sol en une sÃ©rie de mobiliers insolites. Cette succession constitue une forme dâ€™arrÃªt sur image Ã  la maniÃ¨re des sÃ©ries chronophotographiques rÃ©alisÃ©es par Ã‰tienne-Jules Marey (1830-1904), pionnier de la photographie et prÃ©curseur du cinÃ©ma, qui mit au point un fusil photographique permettant de dÃ©composer le mouvement en images consÃ©cutives.', 'http://localhost/ArtPublicMTL/images/img5875a0e12f1b5-arret-sur-image.JPG', 'Ville-Marie', 'Installation', 1468, 1),
(1898, NULL, 'Chromazone', '', '', '', '', '', '', '', '', '', '', '', '6400 Av de Monkland, MontrÃ©al, QC H4B 1H3', '', '', '', '', 'Lâ€™Å“uvre Chromazone, constituÃ©e dâ€™un mur de verre, est situÃ©e dans le hall de la bibliothÃ¨que Benny du Centre culturel de Notre-Dame-de-GrÃ¢ce. La paroi, offrant une vue plongeante sur le foyer du rez-de-chaussÃ©e, permet une expÃ©rience perceptuelle liÃ©e Ã  la transparence et au pouvoir rÃ©flÃ©chissant dâ€™un verre renfermant de multiples couches de pellicules dâ€™oxydes mÃ©talliques colorÃ©s. Au cÅ“ur du complexe communautaire, lâ€™Å“uvre dÃ©cline ses teintes et ses effets aux profondeurs variables, selon les dÃ©placements et la proxÃ©mique opÃ©rante, quâ€™elle soit perÃ§ue en contre-plongÃ©e du hall du rez-de-chaussÃ©e ou observÃ©e Ã  distance plus intime de la terrasse dont elle compose lâ€™un des murs.\n', 'http://localhost/ArtPublicMTL/images/img5875a1a18319d-chromazone.JPG', 'Ville-Marie', 'Installation', 1469, 1),
(1900, NULL, 'Histoire de la musique Ã  MontrÃ©al', '', '', '', '', '', '', '', '', '', '', '', 'Station Place-des-Arts', '', '', '', '', 'Cette verriÃ¨re rend hommage Ã  lâ€™histoire de la musique Ã  MontrÃ©al, de lâ€™Ã©poque de Jacques Cartier jusquâ€™Ã  la musique contemporaine. Calixa LavallÃ©e, Guillaume Couture, Alexis Contant et Emma Lajeunesse (la grande Albani) y sont notamment reprÃ©sentÃ©s.', 'http://localhost/ArtPublicMTL/images/img58764bb47a892-HistoireMusiqueMtl.JPG', 'Ville-Marie', 'Vitrail', NULL, 1),
(1901, NULL, 'Translucide', '', '', '', '', '', '', '', '', '', '', '', '159 Rue Saint-Antoine', '', '', '', '', 'Translucide illustre la vocation du Palais en tant que lieu de passage et de rencontre, un lieu dâ€™Ã©change de points de vue et dâ€™interaction des perceptions.  Dans la grande verriÃ¨re, un visage et une main expriment le contact entre les sens et la rÃ©flexion. Translucide a Ã©tÃ© sÃ©lectionnÃ©e lors du Concours national dâ€™intÃ©gration des arts Ã  lâ€™architecture tenu dans le cadre de lâ€™agrandissement du Palais des congrÃ¨s de MontrÃ©al. Il sâ€™agit de lâ€™un des plus grands vitraux figuratifs contemporains en AmÃ©rique.', 'http://localhost/ArtPublicMTL/images/img58764cc36e775-translucide.JPG', 'Ville-Marie', 'Vitrail', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la vue `artisteavecoeuvre`
--
DROP TABLE IF EXISTS `artisteavecoeuvre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artisteavecoeuvre`  AS  select distinct `a`.`nomCollectif` AS `nomCollectif`,`a`.`nom` AS `nom`,`a`.`prenom` AS `prenom`,`a`.`id` AS `id` from (`artiste` `a` left join `oeuvre` `o` on((`o`.`idArtiste` = `a`.`id`))) where (`o`.`valide` = 1) ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
