-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 27 jan. 2023 à 10:03
-- Version du serveur : 5.7.40
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `archive_structure`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `society` varchar(170) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('Commerce','Immobilier','Ressources Humaines','Transport-Logistique','Services Généraux') NOT NULL,
  `description` text NOT NULL,
  `publish` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `society`, `title`, `category`, `description`, `publish`, `file`, `created_at`, `updated_at`) VALUES
(0000005, 'ok', 'okey', 'Immobilier', 'okay', '2023-01-27T10:51', 'Cv NGA61.pdf', '2023-01-27 10:51:53', '2023-01-27 10:51:53');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `categories` enum('Archivage Numérique','Archivage Physique','Autres') NOT NULL,
  `name` varchar(170) NOT NULL,
  `function` varchar(250) NOT NULL,
  `society` varchar(250) NOT NULL,
  `telephone` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `object` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `categories`, `name`, `function`, `society`, `telephone`, `email`, `object`) VALUES
(0000000003, 'Archivage Numérique', 'ok', 'ok', 'ok', '+229 22242628', '123@gmail.com', 'ok');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `rule` enum('User','Authentifié','Admin') NOT NULL DEFAULT 'User',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `rule`, `created_at`, `updated_at`) VALUES
(0004, 'oko', '123@gmail.com', '$2y$10$XYbzAPVhwpvyZnkQagbtcODKkMuBFCejLMcNvO/F.4J5qCH0HhIRy', 'User', '2023-01-27 10:46:05', '2023-01-27 10:46:05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
