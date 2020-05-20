-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 20 mai 2020 à 18:30
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gest_malades`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `NumChambre` int(11) NOT NULL,
  `Categorie` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `NumDept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`NumChambre`, `Categorie`, `Type`, `NumDept`) VALUES
(1, 'C1', 'T1', 1),
(2, 'C2', 'T2', 2),
(3, 'C3', 'T3', 3),
(4, 'C4', 'T4', 4);

-- --------------------------------------------------------

--
-- Structure de la table `deptmedical`
--

CREATE TABLE `deptmedical` (
  `NumDept` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `deptmedical`
--

INSERT INTO `deptmedical` (`NumDept`, `Nom`) VALUES
(1, 'D1'),
(2, 'D2'),
(3, 'D3'),
(4, 'D4');

-- --------------------------------------------------------

--
-- Structure de la table `feuille_devolution`
--

CREATE TABLE `feuille_devolution` (
  `NumFeuille` int(11) NOT NULL,
  `Date` date NOT NULL,
  `NumMalade` int(11) NOT NULL,
  `Etat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `feuille_devolution`
--

INSERT INTO `feuille_devolution` (`NumFeuille`, `Date`, `NumMalade`, `Etat`) VALUES
(1, '2020-05-06', 1, 'assez bien'),
(2, '2018-05-27', 1, 'bien'),
(3, '2020-05-12', 3, 'mal'),
(4, '2020-05-05', 4, 'assez bien'),
(5, '2019-05-07', 1, 'excellent'),
(6, '2020-05-30', 3, 'bien'),
(7, '2020-05-07', 7, 'mal'),
(8, '2020-05-31', 1, 'excellent'),
(9, '2020-05-22', 9, 'bien'),
(10, '2020-05-15', 10, 'assez bien'),
(11, '2020-05-20', 11, 'assez bien'),
(12, '2020-05-03', 12, 'bien');

-- --------------------------------------------------------

--
-- Structure de la table `interner`
--

CREATE TABLE `interner` (
  `NumDept` int(11) NOT NULL,
  `NumMalade` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `interner`
--

INSERT INTO `interner` (`NumDept`, `NumMalade`, `Date`) VALUES
(1, 1, '2020-06-29'),
(2, 2, '2020-06-04'),
(2, 4, '2020-06-16'),
(3, 6, '2020-03-11');

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE `intervenir` (
  `NumDept` int(11) NOT NULL,
  `NumMedec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `intervenir`
--

INSERT INTO `intervenir` (`NumDept`, `NumMedec`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `lit`
--

CREATE TABLE `lit` (
  `NumLit` int(11) NOT NULL,
  `NumChambre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lit`
--

INSERT INTO `lit` (`NumLit`, `NumChambre`) VALUES
(1, 1),
(2, 1),
(3, 1),
(13, 1),
(14, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(10, 2),
(15, 2),
(16, 2),
(17, 2),
(8, 3),
(9, 3),
(18, 3),
(19, 3),
(11, 4),
(12, 4),
(20, 4),
(21, 4),
(22, 4);

-- --------------------------------------------------------

--
-- Structure de la table `malade`
--

CREATE TABLE `malade` (
  `NumMalade` int(11) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `DatNaiss` date NOT NULL,
  `LieuNaiss` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `malade`
--

INSERT INTO `malade` (`NumMalade`, `Adresse`, `Sexe`, `DatNaiss`, `LieuNaiss`, `Nom`) VALUES
(1, 'Parcelles', 'F', '2012-05-12', 'L1', 'Amina'),
(2, 'Add2', 'M', '2020-05-19', 'L2', 'Omar'),
(3, 'Pikine', 'F', '2014-05-21', 'L3', 'Absa'),
(4, 'Add4', 'M', '2012-04-22', 'L4', 'CBAG'),
(5, 'Dakar', 'F', '2020-05-10', 'L5', 'Mami'),
(6, 'PA', 'M', '2020-05-11', 'L6', 'BABA'),
(7, 'DAKAR', 'M', '2020-07-16', 'L7', 'BABACAR'),
(8, 'Pikine', 'F', '2019-09-16', 'L8', 'AMINTA'),
(9, 'THIAROYE', 'M', '2020-05-31', 'DAKAR', 'EL'),
(10, 'Pikine', 'F', '2020-01-03', 'L10', 'RACKY'),
(11, 'Pikine', 'M', '2019-09-13', 'L11', 'ABA'),
(12, 'Pikine', 'M', '2019-09-13', 'L12', 'AMA'),
(13, 'Pikine', 'M', '2019-09-13', 'L13', 'ABIB'),
(14, 'Pikine', 'F', '2019-09-13', 'L14', 'NENE'),
(15, 'Pikine', 'M', '2019-09-13', 'L15', 'BABOU'),
(16, 'Pikine', 'F', '2019-09-13', 'L16', 'MAREME'),
(17, 'Pikine', 'M', '2019-09-13', 'L17', 'OMARO'),
(18, 'Pikine', 'F', '2019-09-13', 'L18', 'NENEMA'),
(19, 'Pikine', 'M', '2019-09-13', 'L19', 'ABDOULAYE NDIAYE'),
(20, 'Pikine', 'M', '2019-09-13', 'L12', 'FALLOU'),
(21, 'Pikine', 'M', '2019-09-13', 'L13', 'CHEIKHOU'),
(22, 'Pikine', 'F', '2019-09-13', 'L14', 'NENE'),
(23, 'Pikine', 'M', '2019-09-13', 'L15', 'ISSA');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `NumMedec` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`NumMedec`, `Nom`) VALUES
(1, 'M1'),
(2, 'M2'),
(3, 'M3'),
(4, 'M4');

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

CREATE TABLE `occuper` (
  `NumLit` int(11) NOT NULL,
  `NumMalade` int(11) NOT NULL,
  `Date_doccupation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `occuper`
--

INSERT INTO `occuper` (`NumLit`, `NumMalade`, `Date_doccupation`) VALUES
(1, 1, '2020-03-09'),
(1, 12, '2020-04-14'),
(2, 2, '2020-07-08'),
(3, 2, '2019-03-05'),
(4, 4, '2020-07-15'),
(5, 5, '2020-03-10'),
(6, 6, '2020-05-15'),
(7, 7, '2020-08-18'),
(8, 8, '2019-03-25'),
(9, 9, '2020-03-31'),
(10, 10, '2020-04-20'),
(11, 11, '2020-05-01'),
(12, 12, '2020-03-16'),
(13, 13, '2020-02-27'),
(14, 14, '2020-05-08'),
(15, 15, '2020-03-12'),
(16, 16, '2020-09-24'),
(17, 17, '2020-05-28'),
(19, 19, '2018-03-20'),
(20, 20, '2018-10-28'),
(21, 21, '2020-05-10'),
(22, 22, '2020-01-28');

-- --------------------------------------------------------

--
-- Structure de la table `specialiser`
--

CREATE TABLE `specialiser` (
  `NumSpec` int(11) NOT NULL,
  `NumMedec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialiser`
--

INSERT INTO `specialiser` (`NumSpec`, `NumMedec`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `NumSpec` int(11) NOT NULL,
  `Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`NumSpec`, `Libelle`) VALUES
(1, 'S1'),
(3, 'S1'),
(2, 'S2'),
(4, 'S4');

-- --------------------------------------------------------

--
-- Structure de la table `suivre`
--

CREATE TABLE `suivre` (
  `NumMalade` int(11) NOT NULL,
  `NumMedec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suivre`
--

INSERT INTO `suivre` (`NumMalade`, `NumMedec`) VALUES
(1, 1),
(2, 1),
(3, 1),
(14, 1),
(17, 1),
(18, 1),
(23, 1),
(5, 2),
(9, 2),
(12, 2),
(16, 2),
(19, 2),
(4, 3),
(6, 3),
(8, 3),
(10, 3),
(13, 3),
(20, 3),
(21, 3),
(7, 4),
(11, 4),
(15, 4),
(22, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`NumChambre`),
  ADD KEY `NumDept` (`NumDept`);

--
-- Index pour la table `deptmedical`
--
ALTER TABLE `deptmedical`
  ADD PRIMARY KEY (`NumDept`),
  ADD KEY `Nom` (`Nom`);

--
-- Index pour la table `feuille_devolution`
--
ALTER TABLE `feuille_devolution`
  ADD PRIMARY KEY (`NumFeuille`),
  ADD KEY `Feuille_Devolution_Malade_FK` (`NumMalade`);

--
-- Index pour la table `interner`
--
ALTER TABLE `interner`
  ADD PRIMARY KEY (`NumDept`,`NumMalade`),
  ADD KEY `interner_malade_fk` (`NumMalade`);

--
-- Index pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD PRIMARY KEY (`NumDept`,`NumMedec`),
  ADD KEY `intervenir_Medecin0_FK` (`NumMedec`);

--
-- Index pour la table `lit`
--
ALTER TABLE `lit`
  ADD PRIMARY KEY (`NumLit`),
  ADD KEY `Lit_Chambre_FK` (`NumChambre`);

--
-- Index pour la table `malade`
--
ALTER TABLE `malade`
  ADD PRIMARY KEY (`NumMalade`),
  ADD KEY `Nom` (`Nom`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`NumMedec`),
  ADD KEY `Nom` (`Nom`);

--
-- Index pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD PRIMARY KEY (`NumLit`,`NumMalade`),
  ADD KEY `occuper_Malade0_FK` (`NumMalade`);

--
-- Index pour la table `specialiser`
--
ALTER TABLE `specialiser`
  ADD PRIMARY KEY (`NumSpec`,`NumMedec`),
  ADD KEY `specialiser_Medecin0` (`NumMedec`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`NumSpec`),
  ADD KEY `Libelle` (`Libelle`);

--
-- Index pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`NumMalade`),
  ADD KEY `suivre_Medecin0_FK` (`NumMedec`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `NumChambre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `deptmedical`
--
ALTER TABLE `deptmedical`
  MODIFY `NumDept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `feuille_devolution`
--
ALTER TABLE `feuille_devolution`
  MODIFY `NumFeuille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `lit`
--
ALTER TABLE `lit`
  MODIFY `NumLit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `NumSpec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `Chambre_DeptMedical_FK` FOREIGN KEY (`NumDept`) REFERENCES `deptmedical` (`NumDept`);

--
-- Contraintes pour la table `feuille_devolution`
--
ALTER TABLE `feuille_devolution`
  ADD CONSTRAINT `Feuille_Devolution_Malade_FK` FOREIGN KEY (`NumMalade`) REFERENCES `malade` (`NumMalade`);

--
-- Contraintes pour la table `interner`
--
ALTER TABLE `interner`
  ADD CONSTRAINT `interner_malade_fk` FOREIGN KEY (`NumMalade`) REFERENCES `malade` (`NumMalade`),
  ADD CONSTRAINT `interner_numdept_fk` FOREIGN KEY (`NumDept`) REFERENCES `deptmedical` (`NumDept`);

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_DeptMedical_FK` FOREIGN KEY (`NumDept`) REFERENCES `deptmedical` (`NumDept`),
  ADD CONSTRAINT `intervenir_Medecin0_FK` FOREIGN KEY (`NumMedec`) REFERENCES `medecin` (`NumMedec`);

--
-- Contraintes pour la table `lit`
--
ALTER TABLE `lit`
  ADD CONSTRAINT `Lit_Chambre_FK` FOREIGN KEY (`NumChambre`) REFERENCES `chambre` (`NumChambre`);

--
-- Contraintes pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD CONSTRAINT `occuper_Lit_FK` FOREIGN KEY (`NumLit`) REFERENCES `lit` (`NumLit`),
  ADD CONSTRAINT `occuper_Malade0_FK` FOREIGN KEY (`NumMalade`) REFERENCES `malade` (`NumMalade`);

--
-- Contraintes pour la table `specialiser`
--
ALTER TABLE `specialiser`
  ADD CONSTRAINT `specialiser_Medecin0` FOREIGN KEY (`NumMedec`) REFERENCES `medecin` (`NumMedec`),
  ADD CONSTRAINT `specialiser_Specialite_FK` FOREIGN KEY (`NumSpec`) REFERENCES `specialite` (`NumSpec`);

--
-- Contraintes pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD CONSTRAINT `suivre_Malade_FK` FOREIGN KEY (`NumMalade`) REFERENCES `malade` (`NumMalade`),
  ADD CONSTRAINT `suivre_Medecin0_FK` FOREIGN KEY (`NumMedec`) REFERENCES `medecin` (`NumMedec`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
