-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 mai 2024 à 12:10
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
-- Base de données : `bac2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `idstation` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `saision` varchar(9) NOT NULL,
  `temperature` decimal(5,2) NOT NULL,
  `pluie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mesure`
--

INSERT INTO `mesure` (`idstation`, `annee`, `saision`, `temperature`, `pluie`) VALUES
(60715, 2018, 'eté', 30.60, 24),
(60715, 2018, 'hiver', 13.50, 150),
(60715, 2019, 'printemps', 25.60, 80),
(60731, 2018, 'eté', 33.60, 10),
(60731, 2018, 'hiver', 17.60, 100),
(60731, 2019, 'automme', 30.00, 11),
(60780, 2019, 'eté', 42.30, 0),
(60780, 2019, 'hiver', 16.60, 10);

-- --------------------------------------------------------

--
-- Structure de la table `statin`
--

CREATE TABLE `statin` (
  `idstation` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `statin`
--

INSERT INTO `statin` (`idstation`, `nom`, `ville`) VALUES
(60715, 'cartage', 'tunis'),
(60731, 'enfidh-aeroport', 'sousse'),
(60780, 'el-borma', 'tataouine');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`idstation`,`annee`,`saision`),
  ADD KEY `idstation` (`idstation`);

--
-- Index pour la table `statin`
--
ALTER TABLE `statin`
  ADD PRIMARY KEY (`idstation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD CONSTRAINT `fkm` FOREIGN KEY (`idstation`) REFERENCES `statin` (`idstation`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
