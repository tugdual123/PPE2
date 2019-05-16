-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 03 mai 2019 à 13:22
-- Version du serveur :  5.7.23
-- Version de PHP :  5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sosdantec`
--

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
CREATE TABLE IF NOT EXISTS `intervention` (
  `id_intervention` int(11) NOT NULL AUTO_INCREMENT,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `date` date NOT NULL,
  `type_intervention` text COLLATE utf8_unicode_ci NOT NULL,
  `cout` double NOT NULL,
  `id_technicien` int(11) DEFAULT NULL,
  `id_probleme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_intervention`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`id_intervention`, `heure_debut`, `heure_fin`, `date`, `type_intervention`, `cout`, `id_technicien`, `id_probleme`) VALUES
(3, '10:00:00', '11:00:00', '3021-02-02', '2', 3, 1, 2),
(16, '10:00:00', '10:30:00', '2019-03-03', 'UnitÃ© Central:connectique', 10, 1, 4),
(17, '10:00:00', '11:00:00', '2019-03-06', 'Clavier:cables', 15, 1, 3),
(13, '10:00:00', '12:00:00', '2013-01-12', '1', 12333, 1, 1),
(18, '15:30:00', '17:30:00', '2019-03-23', 'UnitÃ© Central:ne s\'allume pas', 10, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `ordinateur`
--

DROP TABLE IF EXISTS `ordinateur`;
CREATE TABLE IF NOT EXISTS `ordinateur` (
  `id_ordinateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ordinateur` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ordinateur`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `ordinateur`
--

INSERT INTO `ordinateur` (`id_ordinateur`, `nom_ordinateur`) VALUES
(1, '2563'),
(2, '2541'),
(3, '2551'),
(4, 'QSD465'),
(5, 'RTY586');

-- --------------------------------------------------------

--
-- Structure de la table `probleme`
--

DROP TABLE IF EXISTS `probleme`;
CREATE TABLE IF NOT EXISTS `probleme` (
  `id_probleme` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `type_probleme` text COLLATE utf8_unicode_ci NOT NULL,
  `id_professeur` int(11) DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  `id_ordinateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_probleme`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `probleme`
--

INSERT INTO `probleme` (`id_probleme`, `date`, `heure`, `type_probleme`, `id_professeur`, `id_salle`, `id_ordinateur`) VALUES
(11, '2019-04-12', '15:30:00', 'Souris:capteur qui ne s\'allume pas', 2, 3, 1),
(10, '2019-04-24', '08:00:00', 'UnitÃ© Central:connectique', 2, 2, 3),
(4, '2019-02-10', '11:00:00', 'Souris:cable', 1, 1, 1),
(5, '2019-03-10', '14:30:00', 'Souris:cable', 1, 2, 3),
(6, '2019-02-10', '12:00:00', 'UnitÃ© Central:ne s\'allume pas', 2, 1, 2),
(16, '2019-04-12', '14:30:00', 'UnitÃ© Central:connectique', 1, 1, 1),
(8, '2019-02-10', '15:30:00', 'Ecran:pixel mort', 3, 1, 1),
(9, '2019-03-08', '12:00:00', 'Clavier:cables', 1, 1, 1),
(12, '2019-04-20', '10:00:00', 'Clavier:cables', 2, 1, 3),
(13, '2019-04-02', '11:00:00', 'Souris:cable', 2, 3, 2),
(14, '2019-04-10', '16:30:00', 'Souris:cable', 1, 1, 1),
(15, '2019-04-15', '09:00:00', 'Souris:cable', 1, 3, 2),
(17, '2019-01-12', '08:00:00', 'Souris:capteur qui ne s\'allume pas', 3, 2, 1),
(18, '2019-01-23', '17:00:00', 'Souris:capteur qui ne s\'allume pas', 3, 2, 3),
(19, '2019-02-16', '16:00:00', 'Clavier:touches', 3, 1, 1),
(20, '2019-03-12', '11:00:00', 'Clavier:cables', 1, 1, 3),
(21, '2019-01-10', '11:00:00', 'Ecran:pixel mort', 1, 3, 1),
(22, '2019-03-11', '10:00:00', 'Souris:capteur qui ne s\'allume pas', 3, 2, 2),
(23, '2019-02-12', '12:00:00', 'UnitÃ© Central:connectique', 1, 3, 2),
(24, '2019-05-03', '14:00:00', 'Souris:cable', 1, 2, 3),
(25, '2019-02-11', '15:00:00', 'Clavier:cables', 1, 1, 1),
(26, '2019-01-12', '08:00:00', 'Clavier:touches', 3, 2, 3),
(27, '2019-01-12', '08:00:00', 'Clavier:touches', 3, 2, 3),
(28, '2019-05-02', '11:00:00', 'UnitÃ© Central:connectique', 3, 1, 1),
(29, '2019-03-05', '15:30:00', 'Clavier:touches', 3, 2, 2),
(30, '2019-03-05', '15:30:00', 'Clavier:touches', 3, 2, 2),
(31, '2019-03-05', '15:30:00', 'UnitÃ© Central:connectique', 3, 3, 2),
(32, '2019-04-22', '14:30:00', 'Clavier:touches', 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id_professeur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text COLLATE utf8_unicode_ci NOT NULL,
  `prenom` text COLLATE utf8_unicode_ci NOT NULL,
  `pseudo_professeur` text COLLATE utf8_unicode_ci NOT NULL,
  `mdp_professeur` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_professeur`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id_professeur`, `nom`, `prenom`, `pseudo_professeur`, `mdp_professeur`) VALUES
(1, 'Charles', 'Dominique', 'dcharles', 'dcharles'),
(2, 'Blanvillain', 'Luc', 'lblanvillain', 'lblanvillain'),
(3, 'LHostis', 'Isabelle', 'ilhostis', 'ilhostis'),
(4, 'Thivend', 'Eline', 'ethivend', 'ethivend123'),
(5, 'Barbe', 'Pierre', 'pbarbe', 'pbarbe'),
(6, 'Diouron', 'Killian', 'kdiouron', 'kdiouron');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `nom_salle` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `nom_salle`) VALUES
(1, 'B223'),
(2, 'B224'),
(3, 'B225');

-- --------------------------------------------------------

--
-- Structure de la table `technicien`
--

DROP TABLE IF EXISTS `technicien`;
CREATE TABLE IF NOT EXISTS `technicien` (
  `id_technicien` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text COLLATE utf8_unicode_ci NOT NULL,
  `prenom` text COLLATE utf8_unicode_ci NOT NULL,
  `pseudo_technicien` text COLLATE utf8_unicode_ci NOT NULL,
  `mdp_technicien` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_technicien`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `technicien`
--

INSERT INTO `technicien` (`id_technicien`, `nom`, `prenom`, `pseudo_technicien`, `mdp_technicien`) VALUES
(1, 'Pareige', 'Stéphane', 'spareige', 'spareige123');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vuecoutmoyen`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `vuecoutmoyen`;
CREATE TABLE IF NOT EXISTS `vuecoutmoyen` (
`CoutMoyen` double
);

-- --------------------------------------------------------

--
-- Structure de la vue `vuecoutmoyen`
--
DROP TABLE IF EXISTS `vuecoutmoyen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vuecoutmoyen`  AS  select (sum(`intervention`.`cout`) / count(`intervention`.`cout`)) AS `CoutMoyen` from `intervention` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
