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
  `taille` varchar(80),
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
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `taille` varchar(80),
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
  `categorie` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL CHECK ( `type` = 'neuf' or `type` = 'utilisé' ),
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `libelle`, `prix`, `quantite`, `image`,`categorie`,`type`, `description`) VALUES
(1, 'Short en jeans taille S', 190, 20, 'Short_jeans.jpg','Short','neuf', 'short en jeans nouveau taille S'),
(2, 'Casquette rouge', 289, 10, 'Casquette.jpg','Casquette','neuf', 'Casquette rouge Porte quelques fois'),
(3, 'CHEMISE  Ralph Lauren vert olive ', 199, 3, 'Chemise-polo.jpg', 'CHEMISE','utilisé','Chemise Ralph Lauren taille L slimfit Excelent état porté une seule fois a un mariage. 100% cotton.'),
(4, 'T-shirt noir hiboux', 299, 13, 't-shirtBlack.jpg','T-shirt','neuf', 't-shirt neuf jamais porté'),
(5, 'Jean homme guess', 389, 5, 'jean.jpg','Jean','utilisé', 'jean foncématière un peu abîmé mais portabletaille US 32taille EU 42'),
(6, 'Chaussures football PUMA', 149, 4, 'product-5.jpg','T-shirt','utilisé', 't-shirt Polo .'),
(7, 'T-shirt Black ', 300, 7, 'product-1.jpg','T-shirt','neuf',  't-shirt neuf jamais porté .'),
(8, 'Blouson moto furygan', 400, 3, 'BlousonMoto_furygan.jpg','Veste','utilisé', 'Bonjour je vend mon blouson de moto furygan très bonne état protection dorsale et coques épaules , vendu avec la doublure hiver .'),
(9, 'Veste Puma', 189, 2, 'Veste-Puma.jpg','Veste','utilisé', 'Veste Puma noir et orange en bon état 14ans .');

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
