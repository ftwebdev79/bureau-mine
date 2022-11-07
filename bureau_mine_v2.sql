-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 07 nov. 2022 à 06:20
-- Version du serveur : 8.0.30
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bureau_mine_v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `created_at`, `image`, `active`) VALUES
(39, 'Haut Conseil Pour le Climat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lorem egestas luctus. Nulla fermentum blandit dolor, et iaculis sem faucibus vitae. Vestibulum leo lectus, dictum et diam at, condimentum hendrerit felis. Maecenas et pharetra mi. Vivamus feugiat enim id libero venenatis pharetra. Phasellus et arcu elementum, vehicula magna id, mollis lacus. Donec tincidunt eget mi sit amet euismod.  In ac urna quam. Quisque porttitor blandit eleifend. Proin et tempus nisi. Nam suscipit ut nibh eget finibus. Sed ultricies elit at massa lobortis, sed ullamcorper velit mattis. Sed lacinia viverra nisl nec tristique. Nullam ut quam ac turpis ultricies ultricies. Nunc volutpat justo non sapien volutpat facilisis. Vivamus pharetra lobortis urna, vitae finibus ligula egestas mollis. Praesent et nulla ut ipsum imperdiet faucibus. Maecenas vel nisi mattis, eleifend dolor in, semper ligula.', '2022-11-04 07:39:01', 'HCC.png', 0),
(40, 'Sugar Crabs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 08:22:07', 'SUGAR_CRABS_1_IDENTITE_VISUELLE_GRAPHIC_DESIGN_BUREAU_MINE_GRAPHISME_GRAPHISTE_PARIS.jpg', 0),
(41, 'Electro Corp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 08:24:40', 'ELECTROCORP_2_AFFICHE_MONTE_LOGOTYPE_IDENTITE_VISUELLE_GRAPHIC_DESIGN_BUREAU_MINE_GRAPHISME_GRAPHISTE_PARIS.png', 0),
(42, 'Miel de ruches', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 08:25:09', 'Miel_des_collines_photos_3.jpg', 0),
(43, 'Poissonnerie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 08:25:36', 'ILLUSTRATION_BOTANIQUE_HOMARD.jpg', 0),
(44, 'TerraRoma', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 08:25:53', 'TERRAROMA_LAVANDE_VISAGE_ETUI_FI_B.jpg', 0),
(47, 'Test cat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus sapien nec bibendum tristique. Quisque sodales purus quam, at posuere dolor mattis eu. Sed mattis arcu nec mi tincidunt sagittis nec blandit risus. Nam ipsum magna, egestas ac tortor non, aliquam varius urna. Ut odio nulla, luctus sit amet lectus sit amet, tincidunt scelerisque risus. In pharetra imperdiet tortor in suscipit. Vestibulum eu porta dui, vitae fermentum velit. Morbi egestas tristique erat ac dictum. Phasellus consectetur, est id convallis pretium, quam felis placerat lectus, non aliquam augue arcu vitae dolor. Nunc ac sem porta, laoreet justo nec, venenatis tortor.  Proin augue nunc, viverra ac venenatis eu, sodales ut ipsum. Pellentesque feugiat odio tincidunt luctus iaculis. Morbi eu finibus augue. Suspendisse potenti. Aenean nisl erat, luctus vitae diam sed, finibus scelerisque quam. Sed vel finibus mi, varius molestie urna. Pellentesque fringilla bibendum risus, vel tincidunt augue pretium ac. Nullam feugiat purus eu lor', '2022-11-04 16:52:40', 'LogoIntro.png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `active`, `color`, `created_at`, `updated_at`) VALUES
(10, 'Identité Visuelle', NULL, '#cf77f8', '2022-11-05 11:12:52', NULL),
(11, 'Illustration', NULL, '#2ebd5d', '2022-11-05 11:13:10', NULL),
(12, 'Webdesign', NULL, '#fd5858', '2022-11-05 11:13:30', NULL),
(13, 'Typographie', NULL, '#fd8b21', '2022-11-05 11:13:51', NULL),
(14, 'Motion Design', NULL, '#38ffa9', '2022-11-05 11:14:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE IF NOT EXISTS `category_article` (
  `category_id` int NOT NULL,
  `article_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`article_id`),
  KEY `IDX_C5E24E1812469DE2` (`category_id`),
  KEY `IDX_C5E24E187294869C` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_article`
--

INSERT INTO `category_article` (`category_id`, `article_id`) VALUES
(10, 39),
(10, 40),
(10, 42),
(10, 44),
(11, 39),
(11, 41),
(11, 42),
(11, 44),
(12, 40),
(12, 44),
(12, 47),
(13, 40),
(13, 44),
(13, 47),
(14, 40),
(14, 44),
(14, 47);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221031104604', '2022-10-31 10:46:10', 52),
('DoctrineMigrations\\Version20221031122549', '2022-10-31 12:25:54', 141),
('DoctrineMigrations\\Version20221031123208', '2022-10-31 12:32:15', 36),
('DoctrineMigrations\\Version20221031123255', '2022-10-31 12:32:59', 37),
('DoctrineMigrations\\Version20221031142549', '2022-10-31 14:26:04', 43),
('DoctrineMigrations\\Version20221031143522', '2022-10-31 14:35:26', 43),
('DoctrineMigrations\\Version20221031151950', '2022-10-31 15:19:57', 40),
('DoctrineMigrations\\Version20221102093941', '2022-11-02 09:39:44', 98),
('DoctrineMigrations\\Version20221102101012', '2022-11-02 10:10:19', 47);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045F7294869C` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`) VALUES
(1, 'admin@admin.com', '$2y$13$/uwswOxtoyOu0fvKhUksLeJzlsdc9.Lf9h1/3Q6HD/LccSSkqqNfm', '[\"ROLE_ADMIN\"]'),
(2, 'pppbigbud@gmail.com', '$2y$13$99lcoeVE7TJrK1YGHnAj2.maNB2TBLbfe0XKW9NrLeFcjwOZeSgwm', '[\"ROLE_ADMIN\"]');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_article`
--
ALTER TABLE `category_article`
  ADD CONSTRAINT `FK_C5E24E1812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C5E24E187294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
