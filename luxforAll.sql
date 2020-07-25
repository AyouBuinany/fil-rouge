-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 juil. 2020 à 20:22
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `luxforall`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `email`, `password`, `telephone`) VALUES
(1, 'ayoub', 'kamal', 'ayoub.admin@gmail.com', '$2y$10$VEsJM84P4dKx7p23.9xQm.1m0aOiACQ6k/mIJi5tQBvGSbXCDT67a', '0612890680');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `date` date NOT NULL,
  `prixTotal` int(11) NOT NULL,
  `adresse` text NOT NULL,
  `ville` varchar(120) NOT NULL,
  `codePostal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `idProduit` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `details_commandes`
--

CREATE TABLE `details_commandes` (
  `id` int(11) NOT NULL,
  `idCommande` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `quantite` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `quantite` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `libelle` varchar(300) NOT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `libelle`, `prix`, `quantite`, `image`, `description`) VALUES
(1, 'T-Shirt', 190, 20, 'product-1.jpg', 'T-Shirt : 189 cm'),
(2, 'Sac Femme', 289, 10, 'product-2.jpg', 'Sac Femme <br><br>Mini sac besace carré Pénélope Piñatex™ crispé'),
(3, 'CHEMISE STRUCTURÉE ', 199, 15, 'product-3.jpg', 'MARRON CLAIR<br><br>Surchemise coupe décontractée avec col à revers, manches longues et poignets boutonnés. Poches poitrine plaquées à rabat. Effet délavé. Fermeture sur le devant par boutons.\r\n<br><br>\r\nLE MANNEQUIN MESURE : 189 cm'),
(4, 'T-Shirt Simple', 299, 3, 'product-4.jpg', 'T-Shirt Simple<br><br>T-Shirt coupe décontractée avec col à revers'),
(5, 'T-Shirt Polo', 389, 5, 'product-5.jpg', 'T-Shirt Polo<br><br>T-Shirt coupe décontractée avec col à revers, manches longues et poignets boutonnés. Poches poitrine plaquées à rabat. Effet délavé. Fermeture sur le devant par boutons.'),
(6, 'basket nike', 149, 7, 'product-6.jpg', 'basket nike usa'),
(7, 'Complet', 189, 13, 'product-13.jpg', 'complet <br><br> Un complet est un vêtement masculin composé dune veste souvent appelée veston, d\n pantalon et parfois dun gilet.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details_commandes`
--
ALTER TABLE `details_commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `details_commandes`
--
ALTER TABLE `details_commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
