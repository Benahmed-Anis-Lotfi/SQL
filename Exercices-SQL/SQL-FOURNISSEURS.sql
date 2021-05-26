-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 25 mai 2021 à 12:11
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `papyrus`
--

DROP DATABASE IF EXISTS papyrus;

CREATE DATABASE papyrus;

USE papyrus;
-- --------------------------------------------------------

--
-- Structure de la table `entcom`
--

CREATE TABLE entcom (
  `numcom` int(11) NOT NULL,
  `obscom` varchar(50) DEFAULT NULL,
  `datcom` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numfou` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70010', '', CURRENT_TIMESTAMP, '120');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70011', 'Commande urgente', CURRENT_TIMESTAMP, '540');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70020', '', CURRENT_TIMESTAMP, '9120');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70025', 'Commande urgente', CURRENT_TIMESTAMP, '9150');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70210', 'Commande cadencée', CURRENT_TIMESTAMP, '120');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70250', 'Commande cadencée', CURRENT_TIMESTAMP, '8700');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70300', '', CURRENT_TIMESTAMP, '9120');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70620', '', CURRENT_TIMESTAMP, '540');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70625', '', CURRENT_TIMESTAMP, '120');
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) VALUES ('70629', '', CURRENT_TIMESTAMP, '9180');



-- --------------------------------------------------------

--
-- Structure de la table `fournis`
--

CREATE TABLE fournis (
  `numfou` int(11) NOT NULL,
  `nomfou` varchar(25) NOT NULL,
  `ruefou` varchar(50) NOT NULL,
  `posfou` char(5) NOT NULL,
  `vilfou` varchar(30) NOT NULL,
  `confou` varchar(15) NOT NULL,
  `satisf` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('120', 'GROBRIGAN', '20 rue du papier', '92200', 'Papercity', 'Georges', '8');
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('540', 'ECLIPSE', '53 rue laisse flotter les rubans', '78250', 'Bugbugville', 'Nestor', '7');
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('8700', 'MEDICIS', '120 rue des plantes', '75014', 'Paris', 'Lison', '0');
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('9120', 'DISCOBOL', '11 rue des sports', '85100', 'La roche sur Yon', 'Hercule', '8');
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('9150', 'DEPANPAP', '26 avenue des locomotives', '59987', 'Coroncountry', 'Pollux', '5');
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES ('9180', 'HURRYTAPE', '68 boulevard des octets', '4044', 'Dumpville', 'Track', '0');

-- --------------------------------------------------------

--
-- Structure de la table `ligcom`
--

CREATE TABLE ligcom (
  `numcom` int(11) NOT NULL,
  `numlig` tinyint(4) NOT NULL,
  `codart` char(4) NOT NULL,
  `qtecde` int(11) NOT NULL,
  `priuni` decimal(5,0) NOT NULL,
  `qteliv` int(11) DEFAULT NULL,
  `derliv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '1', 'I100', '3000', '470', '3000', '2007-03-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '2', 'I105', '2000', '485', '2000', '2007-07-05');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '3', 'I108', '1000', '680', '1000', '2007-08-20');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '4', 'D035', '200', '40', '250', '2007-02-20');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '5', 'P220', '6000', '3500', '6000', '2007-03-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70010', '6', 'P240', '6000', '2000', '2000', '2007-03-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70011', '1', 'I105', '1000', '600', '1000', '2007-05-16');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70011', '2', 'P220', '10000', '3500', '10000', '2007-08-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70020', '1', 'B001', '200', '140', '0', '2007-12-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70020', '2', 'B002', '200', '140', '0', '2007-12-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70025', '1', 'I100', '1000', '590', '1000', '2007-05-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70025', '2', 'I105', '500', '590', '500', '2007-03-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70210', '1', 'I100', '1000', '470', '1000', '2007-07-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70250', '1', 'P230', '15000', '4900', '12000', '2007-12-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70250', '2', 'P220', '10000', '3350', '10000', '2007-11-10');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70300', '1', 'I100', '50', '790', '50', '2007-10-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70620', '1', 'I105', '200', '600', '200', '2007-11-01');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70625', '1', 'I100', '1000', '470', '1000', '2007-10-15');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70625', '2', 'P220', '10000', '3500', '10000', '2007-10-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70629', '1', 'B001', '200', '140', '0', '2007-12-31');
INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv` ) VALUES ('70629', '2', 'B002', '200', '140', '0', '2007-12-31');




-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE produit (
  `codart` char(4) NOT NULL,
  `libart` varchar(30) NOT NULL,
  `stkale` int(11) NOT NULL,
  `stkphy` int(11) NOT NULL,
  `qteann` int(11) NOT NULL,
  `unimes` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('B001', 'Bande magnétique', '20', '87', '240', 'unité');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('B002', 'Bande magnétique', '20', '12', '410', 'unite');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('D035', 'CD R slim 80mm', '40', '42', '150', 'B010');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('D050', 'CD R-W slim 80mm', '50', '4', '0', 'B010');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('I100', 'Papier 1 ex', '100', '557', '3500', 'B1000');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('I105', 'Papier 2 ex', '75', '5', '2300', 'B1000');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('I108', 'Papier 3 ex', '200', '557', '3500', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('I110', 'Papier 4 ex', '10', '12', '63', 'B400');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('P220', 'Pré-imprimé', '500', '2500', '24500', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('P230', 'Pré-imprimé', '500', '250', '12500', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('P240', 'Pré-imprimé', '500', '3000', '6250', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('P250', 'Pré-imprimé', '500', '2500', '24500', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('P270', 'Pré-imprimé', '500', '2500', '24500', 'B500');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('R080', 'Ruban Epson', '10', '2', '120', 'unite');
INSERT INTO produit (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES ('R132', 'Ruban impl', '25', '200', '182', 'unite');
-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE vente (
  `codart` char(4) NOT NULL,
  `numfou` int(11) NOT NULL,
  `delliv` smallint(6) NOT NULL,
  `qte1` int(11) NOT NULL,
  `prix1` decimal(5,0) NOT NULL,
  `qte2` int(11) DEFAULT NULL,
  `prix2` decimal(5,0) DEFAULT NULL,
  `qte3` int(11) DEFAULT NULL,
  `prix3` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('B001', '8700', '15', '0', '150', '50', '145', '11', '140');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('B002', '8700', '15', '0', '210', '50', '200', '100', '185');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('D035', '120', '0', '0', '40', '0', '0', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('D035', '9120', '5', '0', '40', '100', '30', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I100', '120', '90', '0', '700', '50', '600', '120', '500');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I100', '540', '70', '0', '710', '60', '630', '100', '600');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I100', '9120', '60', '0', '800', '70', '600', '90', '500');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I100', '9150', '90', '0', '650', '90', '600', '200', '590');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I100', '9180', '30', '0', '720', '50', '670', '100', '490');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I105', '120', '90', '10', '705', '50', '630', '120', '500');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I105', '540', '70', '0', '810', '60', '645', '100', '600');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I105', '8700', '30', '0', '720', '50', '670', '100', '510');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I105', '9120', '60', '0', '920', '70', '900', '90', '700');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I105', '9150', '90', '0', '685', '90', '600', '200', '590');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I108', '120', '90', '5', '795', '30', '720', '100', '680');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I108', '9120', '60', '0', '920', '70', '820', '100', '780');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I110', '9120', '60', '0', '950', '70', '850', '90', '790');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('I110', '9180', '90', '0', '900', '70', '870', '90', '835');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P220', '120', '15', '0', '3700', '100', '3500', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P220', '8700', '20', '50', '3500', '100', '3350', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P230', '120', '30', '0', '5200', '100', '5000', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P230', '8700', '60', '0', '5000', '50', '4900', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P240', '120', '15', '0', '2200', '100', '2000', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P250', '120', '30', '0', '1500', '100', '1400', '500', '1200');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('P250', '9120', '30', '0', '1500', '100', '1400', '500', '1200');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('R080', '9120', '10', '0', '120', '100', '100', '0', '0');
INSERT INTO vente (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES ('R132', '9120', '5', '0', '275', '0', '0', '0', '0');


-- ----------------------------------------------------------


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD PRIMARY KEY (`numcom`),
  ADD KEY `numfou` (`numfou`);

--
-- Index pour la table `fournis`
--
ALTER TABLE `fournis`
  ADD PRIMARY KEY (`numfou`);

--
-- Index pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD PRIMARY KEY (`numcom`,`numlig`),
  ADD KEY `codart` (`codart`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`codart`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`codart`,`numfou`),
  ADD KEY `numfou` (`numfou`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entcom`
--
ALTER TABLE `entcom`
  MODIFY `numcom` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD CONSTRAINT `entcom_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`);

--
-- Contraintes pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD CONSTRAINT `ligcom_ibfk_1` FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`),
  ADD CONSTRAINT `ligcom_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`);
--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`),
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;