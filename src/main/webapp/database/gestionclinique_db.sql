-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 08 juin 2024 à 17:39
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionclinique_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `comptehopital`
--

DROP TABLE IF EXISTS `comptehopital`;
CREATE TABLE IF NOT EXISTS `comptehopital` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comptehopital`
--

INSERT INTO `comptehopital` (`id`, `nom`, `adresse`, `id_utilisateur`) VALUES
(7, 'Fann', 'Dakar', 0);

-- --------------------------------------------------------

--
-- Structure de la table `comptemedecin`
--

DROP TABLE IF EXISTS `comptemedecin`;
CREATE TABLE IF NOT EXISTS `comptemedecin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` text NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `specialite` varchar(60) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comptemedecin`
--

INSERT INTO `comptemedecin` (`id`, `email`, `password`, `type`, `nom`, `prenom`, `tel`, `adress`, `specialite`, `id_utilisateur`) VALUES
(1, '', '', '', 'BADIANE', 'Mouhameth', '775402136', '', 'G?n?raliste', 0);

-- --------------------------------------------------------

--
-- Structure de la table `comptepatient`
--

DROP TABLE IF EXISTS `comptepatient`;
CREATE TABLE IF NOT EXISTS `comptepatient` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comptepatient`
--

INSERT INTO `comptepatient` (`id`, `nom`, `prenom`, `id_utilisateur`) VALUES
(3, 'Fall', 'Malick', 0),
(4, 'test', 'test', 0),
(5, 'Ndiaye', 'Ablaye', 0),
(8, 'Diouf', 'Ibou', 0),
(9, 'Niang', 'Haicha', 0),
(10, 'Cisse', 'fatou', 13),
(11, 'diouf', 'pape', 15),
(12, 'Sy', 'Laye', 16),
(13, 'Sarr', 'Momo', 17),
(14, 'Sarr', 'Momo', 18),
(15, 'Cisse', 'Aicha', 19),
(16, 'Tall', 'Malick', 20);

-- --------------------------------------------------------

--
-- Structure de la table `dossierpatient`
--

DROP TABLE IF EXISTS `dossierpatient`;
CREATE TABLE IF NOT EXISTS `dossierpatient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numerodossier` varchar(80) NOT NULL,
  `prenom` varchar(70) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `datenaissance` varchar(80) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `sexe` varchar(30) NOT NULL,
  `profession` varchar(60) NOT NULL,
  `numss` varchar(60) NOT NULL,
  `tel` varchar(40) NOT NULL,
  `groupesanguin` varchar(20) NOT NULL,
  `traitement` varchar(50) NOT NULL,
  `medecin` varchar(70) NOT NULL,
  `allergies` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dossierpatient`
--

INSERT INTO `dossierpatient` (`id`, `numerodossier`, `prenom`, `nom`, `datenaissance`, `adresse`, `sexe`, `profession`, `numss`, `tel`, `groupesanguin`, `traitement`, `medecin`, `allergies`) VALUES
(1, '124720', 'Moussa', 'Kane', '2021-06-23', 'Keur Massar', 'Homme', 'Etudiant', '009875025', '788121324', 'B', 'dialise', 'Dr.Sow', 'Crevette'),
(2, '174320', 'Malick', 'Fall', '2021-06-02', 'Rufisque', 'Homme', 'Etudiant', '0022154786', '778904564', 'O', 'Repos', 'Dr.Diagne', 'Citron'),
(3, '127846', 'Mame Libasse Laye', 'Basse', '2003-10-10', 'Dakar', 'Homme', 'Etudiant', '2214598632', '774563218', 'AB', 'Chimyothérapie', 'Dr.Ba', 'avocat'),
(4, '127847', 'Laye', 'Diarra', '2021-08-09', 'DAKAR', 'Homme', 'Etudiant', '110', '778459626', 'A', 'dialise', 'Dr.Faye', 'huitre'),
(5, '', 'Mouhamed', 'Sow', '1998-07-11', 'Pikine', 'Homme', 'Etudiant', '2218456329', '781452291', 'B', 'Chimyoth�rapie', 'Doctor/Medecin Traitant', 'Crevette , Fruit de Mer'),
(6, '', 'Bamba', 'Gueye', '2004-12-13', 'Grand Dakar, Zone A Villa 258', 'Homme', 'Lyc�en', '', '704218926', 'AB', '', 'Doctor/Medecin Traitant', 'Fruit de Mer');

-- --------------------------------------------------------

--
-- Structure de la table `gestionanalyse`
--

DROP TABLE IF EXISTS `gestionanalyse`;
CREATE TABLE IF NOT EXISTS `gestionanalyse` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `age` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `service` varchar(50) NOT NULL,
  `medecin` text NOT NULL,
  `pre1` varchar(40) NOT NULL,
  `par1` varchar(40) NOT NULL,
  `val1` varchar(40) NOT NULL,
  `ref1` varchar(50) NOT NULL,
  `unit1` varchar(40) NOT NULL,
  `obs1` text NOT NULL,
  `pre2` varchar(40) NOT NULL,
  `par2` varchar(40) NOT NULL,
  `val2` varchar(40) NOT NULL,
  `ref2` varchar(50) NOT NULL,
  `unit2` varchar(40) NOT NULL,
  `obs2` text NOT NULL,
  `pre3` varchar(40) NOT NULL,
  `par3` varchar(40) NOT NULL,
  `val3` varchar(40) NOT NULL,
  `ref3` varchar(50) NOT NULL,
  `unit3` varchar(40) NOT NULL,
  `obs3` text NOT NULL,
  `pre4` varchar(40) NOT NULL,
  `par4` varchar(40) NOT NULL,
  `val4` varchar(40) NOT NULL,
  `ref4` varchar(50) NOT NULL,
  `unit4` varchar(40) NOT NULL,
  `obs4` text NOT NULL,
  `interpretation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gestionanalyse`
--

INSERT INTO `gestionanalyse` (`id`, `nom`, `prenom`, `age`, `date`, `service`, `medecin`, `pre1`, `par1`, `val1`, `ref1`, `unit1`, `obs1`, `pre2`, `par2`, `val2`, `ref2`, `unit2`, `obs2`, `pre3`, `par3`, `val3`, `ref3`, `unit3`, `obs3`, `pre4`, `par4`, `val4`, `ref4`, `unit4`, `obs4`, `interpretation`) VALUES
(1, 'Fall', 'Khalifa', '23', '19/06/2021', 'Choose...', 'Dr.Sarr', '', '', '', '', '', '-', '', '', '', '', '', '-', '', '', '', '', '', '-', '', '', '', '', '', '-', 'exemple');

-- --------------------------------------------------------

--
-- Structure de la table `gestionordonnance`
--

DROP TABLE IF EXISTS `gestionordonnance`;
CREATE TABLE IF NOT EXISTS `gestionordonnance` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `age` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `service` varchar(60) NOT NULL,
  `medecin` varchar(40) NOT NULL,
  `ordonnance` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gestionordonnance`
--

INSERT INTO `gestionordonnance` (`id`, `nom`, `prenom`, `age`, `date`, `service`, `medecin`, `ordonnance`) VALUES
(1, 'Kane', 'Moussa', '22', '19/06/2021', 'G?n?ral', 'Dr.Diagne', '-paracetamol\r\n-cetamil\r\n-fervex');

-- --------------------------------------------------------

--
-- Structure de la table `hospitalisation`
--

DROP TABLE IF EXISTS `hospitalisation`;
CREATE TABLE IF NOT EXISTS `hospitalisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` varchar(40) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `typeRDV` varchar(60) NOT NULL,
  `profession` varchar(80) NOT NULL,
  `lit` varchar(20) NOT NULL,
  `chambre` varchar(20) NOT NULL,
  `maladie` varchar(80) NOT NULL,
  `hopital` varchar(80) NOT NULL,
  `service` varchar(60) NOT NULL,
  `validation` varchar(30) NOT NULL,
  `date1` varchar(30) NOT NULL,
  `heure1` time(6) NOT NULL,
  `date2` varchar(30) NOT NULL,
  `heure2` time(6) NOT NULL,
  `medecin` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hospitalisation`
--

INSERT INTO `hospitalisation` (`id`, `nom`, `prenom`, `tel`, `adress`, `sexe`, `age`, `typeRDV`, `profession`, `lit`, `chambre`, `maladie`, `hopital`, `service`, `validation`, `date1`, `heure1`, `date2`, `heure2`, `medecin`) VALUES
(1, 'Ndiaye', 'Astou', '778452136', 'Parcelles Assainies, Unite 15, Villa 154', 'Femme', 21, 'Hospitalisation', 'Etudiante', '-', '-', 'Arhytmie Cardiaque', 'Hopital Dantec', 'Cardiologie', 'En Attente', '', '00:00:00.000000', '', '00:00:00.000000', 'En Attente');

-- --------------------------------------------------------

--
-- Structure de la table `patient_rdv`
--

DROP TABLE IF EXISTS `patient_rdv`;
CREATE TABLE IF NOT EXISTS `patient_rdv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` int(15) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `sexe` text NOT NULL,
  `age` int(10) NOT NULL,
  `typeRDV` text NOT NULL,
  `hopital` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `date` varchar(15) NOT NULL,
  `heure` varchar(10) NOT NULL,
  `validation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patient_rdv`
--

INSERT INTO `patient_rdv` (`id`, `nom`, `prenom`, `tel`, `adress`, `sexe`, `age`, `typeRDV`, `hopital`, `service`, `date`, `heure`, `validation`) VALUES
(1, 'Diop', 'Mamadou Lamine', 784451203, 'Keur Massar villa N67 - DAKAR', 'Homme', 36, 'Consultation', 'Hopital Dantec', 'Cardiologie', '11/11/2021', '10:00', 'oui'),
(2, 'Diagne', 'Nafi', 778482604, 'Parcelles Unité 12 villa N48 - DAKAR', 'Femme', 28, 'Suivi', 'Hopital Dantec', 'Cardiologie', '11/11/2021', '10:30', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `patient_rdv_hospitalisation`
--

DROP TABLE IF EXISTS `patient_rdv_hospitalisation`;
CREATE TABLE IF NOT EXISTS `patient_rdv_hospitalisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` int(30) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `sexe` text NOT NULL,
  `age` int(10) NOT NULL,
  `typeRDV` text NOT NULL,
  `profession` varchar(80) NOT NULL,
  `lien` varchar(40) NOT NULL,
  `nomPatient` text NOT NULL,
  `prenomPatient` text NOT NULL,
  `adressPatient` varchar(100) NOT NULL,
  `maladie` varchar(60) NOT NULL,
  `hopital` varchar(60) NOT NULL,
  `service` varchar(40) NOT NULL,
  `validation` text NOT NULL,
  `date1` varchar(30) NOT NULL,
  `heure1` varchar(20) NOT NULL,
  `date2` varchar(30) NOT NULL,
  `heure2` varchar(20) NOT NULL,
  `medecin` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `patient_rdv_medecin`
--

DROP TABLE IF EXISTS `patient_rdv_medecin`;
CREATE TABLE IF NOT EXISTS `patient_rdv_medecin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` int(20) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `sexe` text NOT NULL,
  `age` int(10) NOT NULL,
  `typeRDV` text NOT NULL,
  `hopital` varchar(80) NOT NULL,
  `typeMedecin` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `heure` varchar(20) NOT NULL,
  `validation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patient_rdv_medecin`
--

INSERT INTO `patient_rdv_medecin` (`id`, `nom`, `prenom`, `tel`, `adress`, `sexe`, `age`, `typeRDV`, `hopital`, `typeMedecin`, `date`, `heure`, `validation`) VALUES
(1, 'Sow', 'Mouhamed', 781452291, 'Pikine', 'Homme', 23, 'Rdv avec un medecin', 'Hopital Dantec', 'Generaliste', '01/01/0101', '00:00', '-');

-- --------------------------------------------------------

--
-- Structure de la table `patient_rdv_vaccination`
--

DROP TABLE IF EXISTS `patient_rdv_vaccination`;
CREATE TABLE IF NOT EXISTS `patient_rdv_vaccination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` int(20) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `sexe` text NOT NULL,
  `age` int(10) NOT NULL,
  `typeRDV` text NOT NULL,
  `nomVaccination` varchar(30) NOT NULL,
  `typeVaccination` varchar(20) NOT NULL,
  `hopital` varchar(80) NOT NULL,
  `date` varchar(40) NOT NULL,
  `heure` varchar(20) NOT NULL,
  `validation` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `type` varchar(80) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` varchar(30) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `specialite` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`, `nom`, `prenom`, `tel`, `adress`, `specialite`) VALUES
(1, 'cheikh@gmail.com', 'cheikh', 'medecin', 'Ba', 'Cheikh', '775008134', 'DAKAR', 'Generaliste'),
(2, 'sow@gmail.com', 'sow', 'patient', 'Sow', 'Mouhamed', '781452292', 'Pikine', ''),
(3, 'dantec@gmail.com', 'dantec', 'hopital', 'Hopital DANTEC', '', '338718080', 'DAKAR', ''),
(5, 'Ablaye@gmail.com', 'ablaye', ' patient ', 'Faye', 'Ablaye', '779451282', 'THIES', ''),
(8, 'ibou@gmail.com', 'ibou', 'patient', 'Ndiaye', 'Ibrahima', '', '', ''),
(9, 'haicha@gmail.com', 'niang', 'patient ', 'Niang', 'Haicha Yacine', '', '', ''),
(14, 'admin@admin.com', 'admin', 'admin', '', '', '', '', ''),
(16, 'malick@gmail.com', 'malick', 'medecin', 'Fall', 'Malick', '778459626', 'DAKAR', 'Cardiologue'),
(17, 'diop@gmail.com', 'diop', 'patient', 'Diop', 'Ibrahima', '706402978', 'KAOLACK', ''),
(20, 'malick@gmail.com', 'passer', 'patient', 'Fall', 'Malick', '', '', ''),
(22, 'test@gmail.com', 'test', 'patient', 'TEST', 'test', '778889955', 'DAKAR', '-'),
(23, 'fann@gmail.com', 'fann', 'hopital', 'Hopital FANN', '', '336871919', 'DAKAR', ''),
(24, 'ceteo@gmail.com', 'ceteo', 'hopital', 'Hopital CETEO', '', '338405051', 'DAKAR', ''),
(25, 'bamba@gmail.com', 'bamba', 'patient', 'Gueye', 'Bamba', '704218926', 'Grand Dakar, Zone A Villa 258', '-'),
(26, 'test@gmail.com', 'test', 'patient', 'test', 'test', '778498561', 'dakar', '-');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
