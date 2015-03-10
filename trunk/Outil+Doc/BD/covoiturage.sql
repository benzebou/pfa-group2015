-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 11 Mars 2015 à 00:05
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `covoiturage`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE IF NOT EXISTS `authentification` (
`id_authentification` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `Jour` int(11) NOT NULL,
  `Mois` int(11) NOT NULL,
  `Annee` int(11) NOT NULL,
  `sexe` varchar(30) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `visibilite_tel` tinyint(1) NOT NULL,
  `photo` varchar(60) NOT NULL,
  `code_activation` varchar(100) NOT NULL,
  `compte_active` tinyint(1) NOT NULL,
  `date_inscription` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id_message` int(11) NOT NULL,
  `sujet` varchar(500) NOT NULL,
  `time_sending` date NOT NULL,
  `statut` varchar(30) NOT NULL,
  `id_expediteur` int(11) NOT NULL,
  `id_destinataire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
`id_profil` int(11) NOT NULL,
  `musique` tinyint(1) NOT NULL,
  `fumeur` tinyint(1) NOT NULL,
  `discussion` tinyint(1) NOT NULL,
  `detour` tinyint(1) NOT NULL,
  `adresse_1` varchar(50) NOT NULL,
  `adresse_2` varchar(50) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `marque_voiture` varchar(50) NOT NULL,
  `model_voiture` varchar(50) NOT NULL,
  `confort_voiture` tinyint(1) NOT NULL,
  `nombre_place` int(11) NOT NULL,
  `pas_de_voiture` tinyint(1) NOT NULL,
  `id_authentification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
`id_reservation` int(11) NOT NULL,
  `id_authentification` int(11) NOT NULL,
  `id_trajet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trajet`
--

CREATE TABLE IF NOT EXISTS `trajet` (
`id_trajet` int(11) NOT NULL,
  `type_utilisateur` varchar(50) NOT NULL,
  `ville_depart` varchar(50) NOT NULL,
  `lieux_d` varchar(50) NOT NULL,
  `ville_arrivee` varchar(50) NOT NULL,
  `lieux_a` varchar(50) NOT NULL,
  `date_voyage` varchar(50) NOT NULL,
  `heure` varchar(50) NOT NULL,
  `nbr_palce_dispo` int(11) NOT NULL,
  `nbr_place_reservation` int(11) NOT NULL,
  `homme` int(11) NOT NULL,
  `femme` int(11) NOT NULL,
  `bagage` tinyint(1) NOT NULL,
  `fumeur` tinyint(1) NOT NULL,
  `prix` varchar(30) NOT NULL,
  `date_jour` varchar(30) NOT NULL,
  `id_authentification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
 ADD PRIMARY KEY (`id_authentification`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
 ADD PRIMARY KEY (`id_profil`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
 ADD PRIMARY KEY (`id_reservation`);

--
-- Index pour la table `trajet`
--
ALTER TABLE `trajet`
 ADD PRIMARY KEY (`id_trajet`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `authentification`
--
ALTER TABLE `authentification`
MODIFY `id_authentification` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `trajet`
--
ALTER TABLE `trajet`
MODIFY `id_trajet` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
