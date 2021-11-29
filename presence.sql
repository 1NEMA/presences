-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 27 nov. 2021 à 11:51
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `presence`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `nom_apprenant` varchar(250) DEFAULT NULL,
  `prenom_apprenant` varchar(250) DEFAULT NULL,
  `id_commune` int(11) DEFAULT NULL,
  `email_apprenant` varchar(250) DEFAULT NULL,
  `pass_apprenant` varchar(250) DEFAULT NULL,
  `contact_apprenant` varchar(250) DEFAULT NULL,
  `token_apprenant` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id_apprenant`, `nom_apprenant`, `prenom_apprenant`, `id_commune`, `email_apprenant`, `pass_apprenant`, `contact_apprenant`, `token_apprenant`) VALUES
(1, 'NEMA', 'Sidy Mohamed', 1, 'nema@gmail.com', '1234', '0757235525', '0101010101'),
(2, 'SANOGO', 'Brahima', 3, 'sanogo@gmail.com', '1234', '0102030405', '12345567'),
(5, 'SANGARE', 'Mamadou', 2, 'madess@gmail.com', '$2y$10$O11oG/BMRu9QRo44f9MR.OiPokN2da5j6ooS9DorbXbKTo8mjb/ly', '07334488899', 'c7d1ae61753b4c2e45cf362f38b715b9dd47d7d15979d11a630ac462094a1648f49e8da205d19eb04fefcd55d27dc1ccf7f59ae8386ff8abf0949f2ae5de4b49'),
(4, 'SANGARE', 'Youssouf', 1, 'sangare@gmail.com', '$2y$10$pHGV1Ss0pp9J5nvKu/4TleRZ3VP7TQYs0/WyO/4Ct4mpxN/LQjfjG', '0709088899', '4526835b64c70abf152bda96611a5c24232f69b2e36583444dcb7c5ba7db44e4e676a3eb71785ed28fed119c7258f91472d2f6c9b83adfc7a72ccb2964bd61db');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE `commune` (
  `id_commune` int(11) NOT NULL,
  `commune` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`id_commune`, `commune`) VALUES
(1, 'Abobo'),
(2, 'Cocody'),
(3, 'Bingerville'),
(4, 'Adjame');

-- --------------------------------------------------------

--
-- Structure de la table `emmarger`
--

CREATE TABLE `emmarger` (
  `id_emmarger` int(11) NOT NULL,
  `date_connexion` text DEFAULT NULL,
  `id_apprenant` int(11) DEFAULT NULL,
  `arrivee` text DEFAULT NULL,
  `depart` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emmarger`
--

INSERT INTO `emmarger` (`id_emmarger`, `date_connexion`, `id_apprenant`, `arrivee`, `depart`) VALUES
(81, '2021-11-27', 1, '09:19:57', '09:24:42'),
(80, '2021-11-26', 1, '17:45:17', '17:45:36');

-- --------------------------------------------------------

--
-- Structure de la table `finance`
--

CREATE TABLE `finance` (
  `id_finance` int(11) NOT NULL,
  `id_partenaire` int(11) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `finance`
--

INSERT INTO `finance` (`id_finance`, `id_partenaire`, `id_formation`) VALUES
(1, 1, 2),
(2, 2, 3),
(6, 2, 2),
(4, 1, 3),
(7, 4, 3),
(8, 5, 4),
(9, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `id_formateur` int(11) NOT NULL,
  `nom_formateur` varchar(250) DEFAULT NULL,
  `prenom_formateur` varchar(250) DEFAULT NULL,
  `id_commune` int(11) DEFAULT NULL,
  `email_formateur` varchar(250) DEFAULT NULL,
  `pass_formateur` varchar(250) DEFAULT NULL,
  `contact_formateur` varchar(250) DEFAULT NULL,
  `token_formateur` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`id_formateur`, `nom_formateur`, `prenom_formateur`, `id_commune`, `email_formateur`, `pass_formateur`, `contact_formateur`, `token_formateur`) VALUES
(1, 'NDIAYE', 'Abdoul Aziz', 2, 'abdoul@gmail.com', '1234', '0709080706', '2345567'),
(2, 'SOUMAH', 'Micho', NULL, 'soumah@gmail.com', '1234', '0708090605', '3456789'),
(3, 'NDIAYE', 'Abdoul Aziz', 2, 'abdoul@mtnacademy.com', '$2y$10$T.mcplBYDlViGDZvW5tmAeF7x/X8tECuL0GtHcwxhvC34ssdLOh/i', '0711111111', 'd2c9abca2eb769b31f209f8d948774f4b6b510e47f56d0b3332459259ac074300c29f3519bf52341b597ab7d82530a85e62018e32ffafd5eea52eb9218d517d2');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `formation` varchar(250) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `formation`, `date_debut`, `date_fin`) VALUES
(4, 'Développeur Web & Mobile', '2021-11-24', '2023-09-05'),
(3, 'Développeur data IA', '2021-05-03', '2022-01-03');

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id_partenaire` int(11) NOT NULL,
  `partenaire` varchar(250) DEFAULT NULL,
  `contact_partenaire` varchar(250) DEFAULT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id_partenaire`, `partenaire`, `contact_partenaire`, `photo`) VALUES
(3, 'UNICEF', '0504010203', 'UNICEF.png'),
(4, 'MTN-CI', '0501020304', 'MTN.png'),
(5, 'AUF-CI', '0509080706', '1.png');

-- --------------------------------------------------------

--
-- Structure de la table `type_utilisateurs`
--

CREATE TABLE `type_utilisateurs` (
  `id_type` int(11) NOT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_utilisateurs`
--

INSERT INTO `type_utilisateurs` (`id_type`, `type`) VALUES
(1, 'apprenant'),
(2, 'formateur'),
(5, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateurs` int(11) NOT NULL,
  `pseudo` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `token` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateurs`, `pseudo`, `email`, `password`, `id_type`, `token`) VALUES
(6, 'NEMA Sidy', 'nema@mtnacademy.com', '$2y$10$DV3I3lrdD2pHlsXsIZIGKuhPwG4cEaFqt/k.0Bqg02S7nU2pmuLAK', 1, 'a068666503380bf3b131e5d22939d0ad6cf81c9c5242160e6c4bbdc7be843f40883d3a1cd9aee5f05690b728a6f9a574bac858af6beb1b8f27952ba9abdced29'),
(10, 'Kanga Armand', 'kanga@gmail.com', '$2y$10$O6aeShd9PSDf96Ok7LhFx.65ID.rwh08L10.VW9kLusCkfs9V1n2a', 1, 'f17d2b5b01e53f66d089477a77325d040ef2284a4773e1fab5deaa5f253f8c0b9c1a8a3399a2689be1ff7d319c87c39783a3d9e4e0b2eedcfaf19b77864d4910'),
(11, 'CAMARA Mamadou', 'camara@gmail.com', '$2y$10$vLE62QmYSXhLE5wbLR79OOwKorwbc9.R9E4ZJdMQKe0zc2zK8x/0u', 1, '9830f89a38e2087da7c6c7dafbb5bc219eee09ba061240a5934afce870ca98a24844895cf59135df2a8ddce199e336d9fced71f2c57a3521e60b677bb318ab1d'),
(7, 'N\'Diaye Abdoul', 'abdoul@mtnacademy.com', '$2y$10$56Nnnn8h32tV/uvtuxNeL.khKuIPsiMIlnv1WHSeUQtPfSGJbnnV.', 2, 'f0f47c1d56b66d4e3a5a31c28373558e8fbaa70f5e101ac8317160e2b56fd1a8307bf9bd0f5f60297b4d2ceed043c078801366044225e6c9f190dbfb9b9b7342'),
(8, 'KONATE Yaya', 'ben@gmail.com', '$2y$10$LAUXVTiNTMumW9FEzViO3u10uuJeOZqXuNje5JBcMrmxfGfN6W3Kq', 1, '4cebeb4930d5328a35121c8e1a82e50c594b0eae9559e7cb2aaf894d942af1b761cd4ffc090acb1caf3127a010953b1a647211d657f2529a3445fe0489807543'),
(9, 'KONATE Mamadou', 'mamadou@gmail.com', '$2y$10$OhACbOghP/XiDXmnXB8Z5OB/KpNQBZoVRO8o7.nwXweQ2bp5NCdfG', 1, '7a9e08dd1176c1b31595b2058aff43d4dbe402234dbd58e007312bc9b84ad8eff98710b2a2cbe12de42571bf58865aa8be8e627ebe7fdabe47a3b3c3fa6ed56e'),
(12, 'SOUMAH Ibrahim', 'soumah@gmail.com', '$2y$10$mFKcB7VMxkwz2W6YYiYFKO1N.mB9NRhYRaRRSa1DPQtitzVkGRvdy', 2, '4bec9cba97e7bf26f979632bf30eaeb35bcd4945d3a1c371d280b63a67282ba858ea6959b36c4d409f3b8c42c38107f6e79247893b151568443bb16e88e1b011'),
(13, 'DAGNOGO Myriam', 'myriam01@gmail.com', '$2y$10$s9AMdDvqXoh/LpJa3bGaLu7bg8v2B3oTBjWub9Pri26BoqgCWt3kW', 1, 'd6bf981d5b56c47195befc5b5fe4409cac108e523b14338098c4a660830a5a49376ee743faa5a8f44eb6c1d1f79c04115cc78e47e386a148c68c5b6ef2080143'),
(14, 'KONATE', 'konate@gmail.com', '$2y$10$I9ArGOfL27Zp1j3hdX364emlqrDuqrbR0d1zY6DdO1A8P3NP9x0qK', 1, 'aecc58874a4eef0491f1153bfdfad1363d7e539b0f5c980c1bc7aa270062f3bf858a45515e468b53c2e052c5d09225f904f598e87895cd2f43727a1cf8c88605');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`),
  ADD KEY `fk_id_commune` (`id_commune`);

--
-- Index pour la table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id_commune`);

--
-- Index pour la table `emmarger`
--
ALTER TABLE `emmarger`
  ADD PRIMARY KEY (`id_emmarger`),
  ADD KEY `fk_id_utilisateurs` (`id_apprenant`);

--
-- Index pour la table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id_finance`),
  ADD KEY `fk_id_partenaire` (`id_partenaire`),
  ADD KEY `fk_id_formation` (`id_formation`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id_formateur`),
  ADD KEY `fk_id_commune` (`id_commune`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id_partenaire`);

--
-- Index pour la table `type_utilisateurs`
--
ALTER TABLE `type_utilisateurs`
  ADD PRIMARY KEY (`id_type`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateurs`),
  ADD KEY `fk_id_type` (`id_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commune`
--
ALTER TABLE `commune`
  MODIFY `id_commune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `emmarger`
--
ALTER TABLE `emmarger`
  MODIFY `id_emmarger` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `finance`
--
ALTER TABLE `finance`
  MODIFY `id_finance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id_partenaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type_utilisateurs`
--
ALTER TABLE `type_utilisateurs`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
