-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 16 mai 2025 à 12:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `diving_club`
--

-- --------------------------------------------------------

--
-- Structure de la table `maitre_plongeur`
--

CREATE TABLE `maitre_plongeur` (
  `cinMait` varchar(8) NOT NULL,
  `NomMait` varchar(50) NOT NULL,
  `experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `maitre_plongeur`
--

INSERT INTO `maitre_plongeur` (`cinMait`, `NomMait`, `experience`) VALUES
('01222333', 'Ali Ben Jomaa', 15),
('01333222', 'Mourad Hamdi', 20),
('03333222', 'Hamza Ben Ali', 25);

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

CREATE TABLE `participant` (
  `CinPart` varchar(8) NOT NULL,
  `NomPart` varchar(50) NOT NULL,
  `Genre` varchar(1) NOT NULL,
  `AgePart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `participant`
--

INSERT INTO `participant` (`CinPart`, `NomPart`, `Genre`, `AgePart`) VALUES
('02584562', 'zarroukwelid', 'H', 1999),
('12345678', 'totogrande', 'H', 2020),
('98765432', 'laithmerdassi', 'H', 2000);

-- --------------------------------------------------------

--
-- Structure de la table `plongee`
--

CREATE TABLE `plongee` (
  `IdSite` int(11) NOT NULL,
  `cinMait` varchar(8) NOT NULL,
  `CinPart` varchar(8) NOT NULL,
  `DateHeurePlong` datetime NOT NULL,
  `Profondeur` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `plongee`
--

INSERT INTO `plongee` (`IdSite`, `cinMait`, `CinPart`, `DateHeurePlong`, `Profondeur`) VALUES
(1, '03333222', '12345678', '2026-01-15 06:00:00', 2504.000);

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `IdSite` int(11) NOT NULL,
  `NomSite` varchar(50) NOT NULL,
  `ProfondeurMax` decimal(10,3) NOT NULL,
  `PrixPlong` decimal(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`IdSite`, `NomSite`, `ProfondeurMax`, `PrixPlong`) VALUES
(1, 'Bizerte', 1000.000, 100.000),
(2, 'Haouiria', 1250.000, 100.000),
(3, 'Sousse', 1500.000, 100.000),
(4, 'Mahdia', 1200.000, 100.000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `maitre_plongeur`
--
ALTER TABLE `maitre_plongeur`
  ADD PRIMARY KEY (`cinMait`);

--
-- Index pour la table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`CinPart`);

--
-- Index pour la table `plongee`
--
ALTER TABLE `plongee`
  ADD PRIMARY KEY (`IdSite`,`cinMait`,`CinPart`,`DateHeurePlong`),
  ADD KEY `IdSite` (`IdSite`,`cinMait`,`CinPart`),
  ADD KEY `CinPart` (`CinPart`),
  ADD KEY `cinMait` (`cinMait`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`IdSite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `IdSite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
