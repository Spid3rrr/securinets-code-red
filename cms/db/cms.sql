-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 01:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `cms`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `admin`
--
 
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `admin`
--
 
INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '30-05-2023 07:12:59 PM');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `category`
--
 
CREATE TABLE `category` (
  `id` int(50) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `category`
--
 
INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'logistique', 'un probleme au niveau de ....', '2023-05-30 13:52:32', ''),
(2, 'panne electrique', '', '2023-05-31 08:58:53', ''),
(3, 'Panne informatique', '', '2023-06-01 13:20:30', ''),
(4, 'Climatisation', '', '2023-06-01 13:20:53', ''),
(5, 'Hygiene', '', '2023-06-01 13:21:05', ''),
(6, 'Sécurité', '', '2023-06-01 13:21:21', ''),
(7, 'Autres', '', '2023-06-01 13:21:29', ''),
(8, 'Sauvegarde non effectué', '', '2023-06-14 10:48:10', ''),
(9, 'Problème de réception des e-mails problème de connexion internet MPLS annexe Lac 1 ', '', '2023-06-14 10:48:29', '14-06-2023 04:18:53 PM'),
(10, 'Authentification active value non sécurisé', '', '2023-06-14 10:49:29', ''),
(11, 'Authentifiaction Prolease  ', '', '2023-06-14 10:49:43', '14-06-2023 04:24:28 PM'),
(12, 'Connexion réseau indisponible dans l\'annexe', '', '2023-06-14 11:14:00', ''),
(13, 'Document Dossier de Financement non lisible', '', '2023-06-14 11:18:57', ''),
(14, 'Tva sur achat non reversé coupure Electricité', '', '2023-06-14 11:29:46', ''),
(15, 'Ouverture impossible des ancien données office', '', '2023-06-14 11:29:46', ''),
(16, 'test d\'active value saving areal ', '', '2023-06-14 11:29:46', ''),
(17, 'un incident au niveau d\'active value', '', '2023-06-14 11:29:46', ''),
(18, 'test affichage opérationnel', '', '2023-06-14 11:29:46', ''),
(19, 'problème d\'affichage op\r\n', '', '2023-06-14 11:29:46', ''),
(20, 'Réception des appels impossible', '', '2023-06-14 11:29:46', ''),
(21, 'Sauvegarde Hebdomadaire d\'externalisation échouée', '', '2023-06-14 11:29:46', ''),
(22, 'Réception et émission d\'appel impossible', '', '2023-06-14 11:29:46', ''),
(23, 'Réseau non connecté aux bureaux du service d\'Analyse', '', '2023-06-14 11:29:46', ''),
(24, 'Sauvegarde en attente', '', '2023-06-14 11:29:46', ''),
(25, 'Problème de Connexion OUTLOOK', '', '2023-06-14 11:29:46', ''),
(26, 'Problème d\'accès au compte CITY bank', '', '2023-06-14 11:29:46', ''),
(27, 'Disque défectueux sur la baie de stockage', '', '2023-06-14 11:29:46', ''),
(28, 'Problème de démarrage pc', '', '2023-06-14 11:29:46', ''),
(29, 'Impression impossible', '', '2023-06-14 11:29:46', ''),
(30, 'Problème d\'accès au serveur', '', '2023-06-14 11:34:00', ''),
(31, 'Sauvegarde de base de donnée impossible', '', '2023-06-14 11:34:00', ''),
(32, 'Problème d\'ouverture de Session', '', '2023-06-14 11:43:48', ''),
(33, 'Problème de connexion PROLEASE', '', '2023-06-14 11:43:48', ''),
(34, 'Problème d\'accès à l\'interface du module recouvrement ', '', '2023-06-14 11:43:48', ''),
(35, 'Déficit de caisse', '', '2023-06-14 11:43:48', ''),
(36, 'Problème de climatisation au niveau de la salle des serveurs', '', '2023-06-14 11:43:48', ''),
(37, 'Lenteur du poste de travail', '', '2023-06-14 11:43:48', ''),
(38, 'Console du serveur Antivirus inaccessible', '', '2023-06-14 11:43:48', ''),
(39, 'Interface d\'administration des onduleurs est inaccessible', '', '2023-06-14 11:43:48', ''),
(40, 'Erreur de communication entre l\'onduleur et le serveur HV02', '', '2023-06-14 11:43:48', ''),
(41, 'MISE À JOUR DU MANUEL DE PROCÉDURE ', '', '2023-06-14 11:43:48', ''),
(42, 'produit active value test mail incident notification par mail', '', '2023-06-14 11:43:48', ''),
(43, 'Téléphonie en panne', '', '2023-06-14 11:43:48', ''),
(44, 'SYSTÈME DE NOTATION INTERNE', '', '2023-06-14 11:43:48', ''),
(45, 'ARCHIVAGE DES DOSSIERS', '', '2023-06-14 11:43:48', '');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `complaintremark`
--
 
CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `complaintremark`
--
 
INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'En cours', 'hfwdhcwnx', '2023-05-30 14:52:04'),
(2, 2, 'Fermé', 'your imprimante bech tetsalah', '2023-05-31 08:58:05'),
(3, 4, 'in process', 'i m working on it sir', '2023-06-04 18:25:42'),
(4, 7, 'closed', 'votre commznde a ete traite', '2023-06-09 09:29:02'),
(5, 8, 'Fermé', 'c bon', '2023-06-12 10:13:00'),
(6, 9, 'closed', 'votre probleme sera reglé dans un instant', '2023-06-15 09:12:32'),
(7, 9, 'in process', 'votre ticket est en coursde traitement', '2023-06-15 09:14:52'),
(8, 10, 'closed', 'on arrive', '2023-06-15 09:28:02'),
(9, 10, 'in process', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2023-06-15 09:28:30'),
(10, 10, 'in process', 'ckdchsdvihsvsdhcisdjciqcjsicdscscdschdcjjscsdhcdscsqcbduchqschuicnsqcihqsciqsjsugcsqhcsqucgscsqcgdschscidgcidscbsdiuchsdochuisgcosdhcsochdsccndscuohqscnsdbcouqcsqc', '2023-06-15 09:28:45'),
(11, 10, 'closed', 'c bon votre imprimante fonctionne a merveille', '2023-06-15 09:30:47');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `state`
--
 
CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `state`
--
 
INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'urgente', 'a traiter le plus tot possible', '2023-05-30 13:54:38', ''),
(2, 'Peut attendre', 'Pas tres urgente', '2023-06-14 12:00:11', '14-06-2023 05:31:40 PM');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `subcategory`
--
 
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `subcategory`
--
 
INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'imprimantes', '2023-05-30 13:52:43', ''),
(2, 1, 'Autres', '2023-06-01 13:21:52', ''),
(3, 2, 'Autres', '2023-06-01 13:21:59', ''),
(4, 3, 'Autres', '2023-06-01 13:22:11', ''),
(5, 4, 'Autres', '2023-06-01 13:22:17', ''),
(6, 4, 'Autres', '2023-06-01 13:22:27', ''),
(7, 5, 'Autres', '2023-06-01 13:22:34', ''),
(8, 6, 'Autres', '2023-06-01 13:22:41', ''),
(9, 7, 'Autres', '2023-06-01 13:22:48', ''),
(10, 8, 'Autres', '2023-06-14 11:47:20', ''),
(11, 9, 'Autres', '2023-06-14 11:47:26', ''),
(12, 10, 'Autres', '2023-06-14 11:47:31', ''),
(13, 10, 'Autres', '2023-06-14 11:47:37', ''),
(14, 11, 'Autres', '2023-06-14 11:47:43', ''),
(15, 12, 'Autres', '2023-06-14 11:47:47', ''),
(16, 12, 'Autres', '2023-06-14 11:47:55', ''),
(17, 12, 'Autres', '2023-06-14 11:48:00', ''),
(18, 13, 'Autres', '2023-06-14 11:48:08', ''),
(19, 13, 'Autres', '2023-06-14 11:48:13', ''),
(20, 14, 'Autres', '2023-06-14 11:48:17', ''),
(21, 14, 'Autres', '2023-06-14 11:48:24', ''),
(22, 15, 'Autres', '2023-06-14 11:48:30', ''),
(23, 16, 'Autres', '2023-06-14 11:48:37', ''),
(24, 17, 'Autres', '2023-06-14 11:48:45', ''),
(25, 18, 'Autres', '2023-06-14 11:49:05', ''),
(26, 19, 'Autres', '2023-06-14 11:49:12', ''),
(27, 20, 'Autres', '2023-06-14 11:49:17', ''),
(28, 21, 'Autres', '2023-06-14 11:50:14', ''),
(29, 22, 'Autres', '2023-06-14 11:50:30', ''),
(30, 23, 'Autres', '2023-06-14 11:50:36', ''),
(31, 23, 'Autres', '2023-06-14 11:50:45', ''),
(32, 24, 'Autres', '2023-06-14 11:50:55', ''),
(33, 25, 'Autres', '2023-06-14 11:51:50', ''),
(34, 26, 'Autres', '2023-06-14 11:52:10', ''),
(35, 27, 'Autres', '2023-06-14 11:52:15', ''),
(36, 27, 'Autres', '2023-06-14 11:52:28', ''),
(37, 27, 'Autres', '2023-06-14 11:52:38', ''),
(38, 28, 'Autres', '2023-06-14 11:52:46', ''),
(39, 29, 'Autres', '2023-06-14 11:53:24', ''),
(40, 30, 'Autres', '2023-06-14 11:53:37', ''),
(41, 31, 'Autres', '2023-06-14 11:53:44', ''),
(42, 32, 'Autres', '2023-06-14 11:54:46', ''),
(43, 33, 'Autres', '2023-06-14 11:56:05', ''),
(44, 33, 'Autres', '2023-06-14 11:56:15', ''),
(45, 33, 'Autres', '2023-06-14 11:56:23', ''),
(46, 34, 'Autres', '2023-06-14 11:56:32', ''),
(47, 34, 'Autres', '2023-06-14 11:56:43', ''),
(48, 35, 'Autres', '2023-06-14 11:56:49', ''),
(49, 36, 'Autres', '2023-06-14 11:57:28', ''),
(50, 37, 'Autres', '2023-06-14 11:57:37', ''),
(51, 38, 'Autres', '2023-06-14 11:57:42', ''),
(52, 38, 'Autres', '2023-06-14 11:57:50', ''),
(53, 39, 'Autres', '2023-06-14 11:57:56', ''),
(54, 40, 'Autres', '2023-06-14 11:58:02', ''),
(55, 40, 'Autres', '2023-06-14 11:58:11', ''),
(56, 41, 'Autres', '2023-06-14 11:58:18', ''),
(57, 42, 'Autres', '2023-06-14 11:58:30', ''),
(58, 43, 'Autres', '2023-06-14 11:58:38', ''),
(59, 44, 'Autres', '2023-06-14 11:58:57', ''),
(60, 45, 'Autres', '2023-06-14 11:59:03', '');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `tblcomplaints`
--
 
CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `tblcomplaints`
--
 
INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(2, 2, 1, 'imprimantes', ' Complaint', 'urgente', 'logistique', 'kxckcn', 'R (1).png', '2023-05-30 14:54:30', 'closed', '2023-05-31 08:58:05'),
(3, 3, 1, 'imprimantes', 'General Query', 'urgente', 'un beug a l imprimante', 'urgent hier j ai eu kathe kathe kathe', '', '2023-05-31 08:57:01', NULL, '0000-00-00 00:00:00'),
(4, 2, 1, 'imprimantes', ' Complaint', 'urgente', 'logistique', 'qskodndondvx,vmcx, x', '', '2023-06-04 18:24:42', 'in process', '2023-06-04 18:25:42'),
(5, 2, 2, 'Selectionner sous categorie', ' Complaint', 'urgente', 'Gshshs', 'Hehshshshs', '', '2023-06-06 09:57:02', NULL, '0000-00-00 00:00:00'),
(6, 4, 1, 'imprimantes', ' Complaint', 'urgente', 'Panne technique', 'Imprimante ne marche pas\r\nDemande de toner ', '16863001779568738683705196137742.jpg', '2023-06-09 08:43:16', NULL, '0000-00-00 00:00:00'),
(7, 2, 1, 'imprimantes', 'General Query', 'urgente', 'logistique', 'marhbe bik si annabi', '', '2023-06-09 09:27:48', 'closed', '2023-06-09 09:29:02'),
(8, 2, 1, 'imprimantes', ' Complaint', 'urgente', 'logistique', 'ilyes', '', '2023-06-12 10:12:09', 'closed', '2023-06-12 10:13:00'),
(9, 6, 3, 'Autres', ' Complaint', 'urgente', 'Imprimante', 'L imprimante est toujours en état de déconnexion ou aboutit à un échec d impression', '', '2023-06-15 09:09:19', 'in process', '2023-06-15 09:14:52'),
(10, 6, 3, 'Autres', ' Complaint', 'urgente', 'Imprimante', 'Le.probleme persiste et n à pas été résolu ', '20230615_101544.jpg', '2023-06-15 09:15:58', 'closed', '2023-06-15 09:30:47'),
(11, 2, 1, 'imprimantes', 'General Query', 'urgente', 'un beug a l imprimante', 'zxhsjxbsxbasxh', '', '2023-09-24 17:56:44', NULL, '0000-00-00 00:00:00');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `userlog`
--
 
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `userlog`
--
 
INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1),
(4, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 13:49:35', '', 1),
(5, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 13:53:02', '', 1),
(6, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 14:53:13', '', 1),
(7, 3, 'ilyes5@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 08:55:42', '31-05-2023 02:27:11 PM', 1),
(8, 3, 'ilyes5@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 09:42:35', '31-05-2023 03:30:29 PM', 1),
(9, 3, 'ilyes5@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:14:06', '', 1),
(10, 3, 'ilyes5@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:16:01', '', 1),
(11, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:19:02', '', 1),
(12, 0, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:25:59', '', 0),
(13, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:26:09', '', 1),
(14, 0, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:29:26', '', 0),
(15, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:29:38', '', 1),
(16, 0, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:34:25', '', 0),
(17, 0, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:34:34', '', 0),
(18, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 11:34:43', '31-05-2023 05:50:38 PM', 1),
(19, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 08:11:37', '', 1),
(20, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 09:57:03', '01-06-2023 03:55:18 PM', 1),
(21, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 10:27:26', '', 1),
(22, 0, 'admin', 0x3a3a3100000000000000000000000000, '2023-06-01 10:31:40', '01-06-2023 04:01:51 PM', 0),
(23, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 10:58:03', '01-06-2023 04:31:13 PM', 1),
(24, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 13:14:46', '01-06-2023 06:54:44 PM', 1),
(25, 0, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 13:25:34', '', 0),
(26, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 13:25:49', '', 1),
(27, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 13:31:20', '', 1),
(28, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:51:47', '', 1),
(29, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-04 18:23:16', '04-06-2023 11:54:53 PM', 1),
(30, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-04 18:26:11', '', 1),
(31, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-05 08:14:29', '05-06-2023 01:44:31 PM', 1),
(32, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-05 11:02:53', '05-06-2023 04:33:15 PM', 1),
(33, 2, 'ilyes@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-05 12:22:26', '', 1),
(34, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-06 09:41:05', '', 1),
(35, 2, 'Ilyes@gmail.com', 0x3137322e31362e35302e353800000000, '2023-06-06 09:42:04', '06-06-2023 03:12:21 PM', 1),
(36, 2, 'Ilyes@gmail.com', 0x3137322e31362e35302e353800000000, '2023-06-06 09:55:11', '06-06-2023 03:52:03 PM', 1),
(37, 4, 'toubalrania9@gmail.com', 0x3137322e31362e35302e313633000000, '2023-06-09 08:41:32', '09-06-2023 02:14:28 PM', 1),
(38, 4, 'toubalrania9@gmail.com', 0x3137322e31362e35302e313633000000, '2023-06-09 08:44:42', '', 1),
(39, 5, 'joeannabi599@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-09 09:24:52', '09-06-2023 02:55:44 PM', 1),
(40, 0, 'joeannabi@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-09 09:26:01', '', 0),
(41, 0, 'joeannabi@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-09 09:26:21', '', 0),
(42, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-09 09:27:18', '09-06-2023 02:57:56 PM', 1),
(43, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-12 09:10:21', '12-06-2023 02:43:06 PM', 1),
(44, 0, 'ilyes', 0x3137322e31362e35302e313636000000, '2023-06-12 09:15:29', '', 0),
(45, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-12 09:15:32', '12-06-2023 03:36:17 PM', 1),
(46, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-12 10:08:54', '12-06-2023 03:42:14 PM', 1),
(47, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-12 10:13:32', '12-06-2023 04:41:35 PM', 1),
(48, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-12 13:08:28', '', 1),
(49, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 08:17:19', '13-06-2023 02:40:05 PM', 1),
(50, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 09:10:22', '', 1),
(51, 0, 'il', 0x3137322e31362e35302e313636000000, '2023-06-13 11:04:59', '', 0),
(52, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 11:05:02', '13-06-2023 04:42:27 PM', 1),
(53, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 11:17:48', '13-06-2023 05:14:55 PM', 1),
(54, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 11:45:27', '', 1),
(55, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-13 11:45:48', '13-06-2023 05:16:04 PM', 1),
(56, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-14 08:49:28', '14-06-2023 02:19:32 PM', 1),
(57, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-14 08:50:09', '', 1),
(58, 6, 'imenehk78@gmail.com', 0x3137322e31362e35302e353600000000, '2023-06-15 09:06:38', '', 1),
(59, 6, 'imenehk78@gmail.com', 0x3137322e31362e35302e353600000000, '2023-06-15 09:13:03', '', 1),
(60, 6, 'imenehk78@gmail.com', 0x3137322e31362e35302e353600000000, '2023-06-15 09:14:01', '', 1),
(61, 6, 'imenehk78@gmail.com', 0x3137322e31362e35302e353600000000, '2023-06-15 09:32:21', '', 1),
(62, 0, 'ilyes', 0x3137322e31362e35302e313636000000, '2023-06-15 09:32:34', '', 0),
(63, 2, 'ilyes@gmail.com', 0x3137322e31362e35302e313636000000, '2023-06-15 09:33:16', '', 1),
(64, 2, 'ilyes@gmail.com', 0x3139322e3136382e3130302e31383300, '2023-09-24 17:54:45', '24-09-2023 11:25:18 PM', 1),
(65, 2, 'ilyes@gmail.com', 0x3139322e3136382e3130302e31383300, '2023-09-24 17:56:18', '24-09-2023 11:26:53 PM', 1),
(66, 0, 'hassenkamoun215@gmail.com', 0x3139322e3136382e3130302e32323700, '2023-09-24 18:02:14', '', 0),
(67, 0, 'hassenkamoun215@gmail.com', 0x3139322e3136382e3130302e32323700, '2023-09-24 18:02:29', '', 0),
(68, 0, 'hassenkamoun215@gmail.com', 0x3139322e3136382e3130302e32323700, '2023-09-24 18:02:43', '', 0),
(69, 2, 'ilyes@gmail.com', 0x3139322e3136382e3130302e31383300, '2023-09-24 19:40:12', '25-09-2023 01:43:51 AM', 1),
(70, 2, 'ilyes@gmail.com', 0x3139322e3136382e31362e3138320000, '2024-01-08 14:07:53', '', 1),
(71, 2, 'ilyes@gmail.com', 0x3139322e3136382e31382e3538000000, '2024-02-28 14:12:32', '', 1),
(72, 2, 'ilyes@gmail.com', 0x3139322e3136382e31382e3538000000, '2024-02-28 15:18:51', '28-02-2024 09:05:01 PM', 1);
 
-- --------------------------------------------------------
 
--
-- Table structure for table `users`
--
 
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
 
--
-- Dumping data for table `users`
--
 
INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'John Smith', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', 9999999999, NULL, NULL, NULL, NULL, NULL, '2020-05-08 14:10:50', '2020-05-08 14:16:22', 1),
(2, 'ilyes', 'ilyes@gmail.com', 'eb63e4d3bb78686c0886496150468759', 545555555, '16rue', 'urgente', 'Tunisie', 123456, NULL, '2023-05-30 13:49:17', '0000-00-00 00:00:00', 1),
(3, 'ilyes5', 'ilyes5@gmail.com', '2557d3311daf58f80ae6f0f2b6e07244', 5411111, NULL, NULL, NULL, NULL, NULL, '2023-05-31 08:55:25', '0000-00-00 00:00:00', 1),
(4, 'Rania', 'toubalrania9@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12345678, NULL, NULL, NULL, NULL, NULL, '2023-06-09 08:39:56', '0000-00-00 00:00:00', 1),
(5, 'ali', 'joeannabi599@gmail.com', '6e390d9847adeb14ccbb899716fe3d2f', 5411111, NULL, NULL, NULL, NULL, NULL, '2023-06-09 09:24:23', '0000-00-00 00:00:00', 1),
(6, 'Imen', 'Imenehk78@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 27327397, NULL, NULL, NULL, NULL, NULL, '2023-06-15 09:06:18', '2023-06-15 09:06:18', 1),
(7, 'HASSEN', 'hassenkamoun215@gmail.com', '7c05e5f414f8dc5425f4e2fad3a8dda9', 2220, NULL, NULL, NULL, NULL, NULL, '2023-09-24 18:01:49', '2023-09-24 18:01:49', 1);
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);
 
--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
 
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
 
--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
 
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
 
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
 
--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
 
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
 
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
 