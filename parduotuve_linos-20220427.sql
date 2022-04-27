-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 01:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parduotuve_linos`
--

-- --------------------------------------------------------

--
-- Table structure for table `atstumai`
--

CREATE TABLE `atstumai` (
  `id` int(10) UNSIGNED NOT NULL,
  `miestas_1_id` int(11) UNSIGNED NOT NULL,
  `miestas_2_id` int(11) UNSIGNED NOT NULL,
  `atstumas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `atstumai`
--

INSERT INTO `atstumai` (`id`, `miestas_1_id`, `miestas_2_id`, `atstumas`) VALUES
(1, 1, 2, 35),
(2, 1, 3, 55),
(3, 1, 4, 51),
(4, 1, 5, 48),
(5, 1, 6, 85),
(6, 2, 3, 70),
(7, 2, 4, 80),
(8, 2, 5, 65),
(9, 2, 6, 110),
(10, 3, 4, 5),
(11, 3, 5, 7),
(12, 3, 6, 24),
(13, 4, 5, 35),
(14, 4, 6, 48),
(15, 5, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `automobiliai`
--

CREATE TABLE `automobiliai` (
  `id` int(10) UNSIGNED NOT NULL,
  `talpa` float NOT NULL,
  `numeris` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pakrautas` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `automobiliai`
--

INSERT INTO `automobiliai` (`id`, `talpa`, `numeris`, `pakrautas`) VALUES
(1, 34, '', 0),
(2, 34, '', 0),
(3, 35, '', 0),
(4, 45, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `miestai`
--

CREATE TABLE `miestai` (
  `id` int(10) UNSIGNED NOT NULL,
  `miestas` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `id_miestai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `miestai`
--

INSERT INTO `miestai` (`id`, `miestas`, `id_miestai`) VALUES
(1, 'Vilnius', NULL),
(2, 'Kaunas', NULL),
(3, 'C', NULL),
(4, 'D', NULL),
(5, 'E', NULL),
(6, 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pirkejai`
--

CREATE TABLE `pirkejai` (
  `id` int(11) UNSIGNED NOT NULL,
  `vardas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pavarde` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `miestai_id` int(10) UNSIGNED DEFAULT NULL,
  `miestas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `pirkejai`
--

INSERT INTO `pirkejai` (`id`, `vardas`, `pavarde`, `miestai_id`, `miestas_id`) VALUES
(1, 'Jonas', 'Jonaitis', 2, NULL),
(2, 'Petras', 'Petraitis', 3, NULL),
(3, 'Petras', 'Petraitis', 4, NULL),
(4, 'Petras', 'Petraitis', 5, NULL),
(5, 'Jonas', 'Jonaitis', 5, NULL),
(6, 'Petras', 'Petraitis', 6, NULL),
(11, 'Antanas', 'Antanaitis', 4, NULL),
(12, 'Aloyzas', 'Aloizovaitis', 1, NULL),
(13, 'Dovydas', 'Dovydaitis', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prekes`
--

CREATE TABLE `prekes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nr` int(11) NOT NULL,
  `barkodas` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `kaina` decimal(10,2) NOT NULL,
  `turis` float NOT NULL DEFAULT 5.5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `prekes`
--

INSERT INTO `prekes` (`id`, `nr`, `barkodas`, `pavadinimas`, `kaina`, `turis`) VALUES
(2, 1, 1001, ' Prekė A', '0.99', 5.5),
(3, 2, 1002, ' Prekė B', '1.99', 5.5),
(4, 3, 1003, ' Prekė C', '2.95', 5.5),
(5, 4, 1004, ' Prekė D', '8.00', 5.5),
(6, 5, 1005, ' Prekė E', '110.19', 5.5),
(7, 6, 1006, ' Prekė F', '14.45', 5.5),
(8, 7, 1007, ' Prekė G', '7.40', 5.5),
(9, 8, 1008, ' Prekė H', '9.50', 5.5),
(10, 9, 1009, ' Prekė I', '11.11', 5.5),
(20, 10, 1010, 'Preke J', '4.44', 5.5);

-- --------------------------------------------------------

--
-- Table structure for table `prekes_uzsakymai`
--

CREATE TABLE `prekes_uzsakymai` (
  `id` int(10) UNSIGNED NOT NULL,
  `preke_id` int(10) UNSIGNED DEFAULT NULL,
  `uzsakymas_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `prekes_uzsakymai`
--

INSERT INTO `prekes_uzsakymai` (`id`, `preke_id`, `uzsakymas_id`) VALUES
(1, 3, 1),
(2, 3, 1),
(3, 5, 1),
(4, 5, 1),
(5, 5, 1),
(6, 5, 1),
(7, 5, 1),
(8, 6, 2),
(9, 8, 2),
(10, 8, 2),
(11, 2, 3),
(12, 2, 3),
(13, 2, 3),
(14, 8, 3),
(15, 8, 3),
(16, 8, 3),
(17, 7, 4),
(18, 7, 5),
(19, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `uzsakymai`
--

CREATE TABLE `uzsakymai` (
  `id` int(10) UNSIGNED NOT NULL,
  `uzsakymo_laikas` datetime NOT NULL,
  `pakrautas` tinyint(1) NOT NULL DEFAULT 0,
  `pristatymo_laikas` int(11) DEFAULT NULL,
  `automobilis_id` int(10) UNSIGNED DEFAULT NULL,
  `pirkejas_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `uzsakymai`
--

INSERT INTO `uzsakymai` (`id`, `uzsakymo_laikas`, `pakrautas`, `pristatymo_laikas`, `automobilis_id`, `pirkejas_id`) VALUES
(1, '2022-01-06 08:30:30', 0, NULL, NULL, 1),
(2, '2022-01-06 14:22:05', 0, NULL, NULL, 2),
(3, '2022-01-10 13:22:05', 0, NULL, NULL, 3),
(4, '2022-01-10 12:22:05', 0, NULL, NULL, 4),
(5, '2022-01-09 12:22:30', 0, NULL, NULL, 5),
(6, '2022-01-10 12:12:10', 0, NULL, NULL, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atstumai`
--
ALTER TABLE `atstumai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `miestas_1_id` (`miestas_1_id`),
  ADD KEY `miestas_2_id` (`miestas_2_id`);

--
-- Indexes for table `automobiliai`
--
ALTER TABLE `automobiliai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miestai`
--
ALTER TABLE `miestai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pirkejai`
--
ALTER TABLE `pirkejai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `miestai_id` (`miestai_id`);

--
-- Indexes for table `prekes`
--
ALTER TABLE `prekes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barkodas` (`barkodas`),
  ADD UNIQUE KEY `nr` (`nr`);

--
-- Indexes for table `prekes_uzsakymai`
--
ALTER TABLE `prekes_uzsakymai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prekes_uzsakymai_ibfk_1` (`preke_id`),
  ADD KEY `prekes_uzsakymai_ibfk_2` (`uzsakymas_id`);

--
-- Indexes for table `uzsakymai`
--
ALTER TABLE `uzsakymai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzsakymai_ibfk_1` (`automobilis_id`),
  ADD KEY `pirkejas_id` (`pirkejas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atstumai`
--
ALTER TABLE `atstumai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `automobiliai`
--
ALTER TABLE `automobiliai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `miestai`
--
ALTER TABLE `miestai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pirkejai`
--
ALTER TABLE `pirkejai`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `prekes`
--
ALTER TABLE `prekes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `prekes_uzsakymai`
--
ALTER TABLE `prekes_uzsakymai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `uzsakymai`
--
ALTER TABLE `uzsakymai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atstumai`
--
ALTER TABLE `atstumai`
  ADD CONSTRAINT `atstumai_ibfk_1` FOREIGN KEY (`miestas_1_id`) REFERENCES `miestai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `atstumai_ibfk_2` FOREIGN KEY (`miestas_2_id`) REFERENCES `miestai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pirkejai`
--
ALTER TABLE `pirkejai`
  ADD CONSTRAINT `pirkejai_ibfk_1` FOREIGN KEY (`miestai_id`) REFERENCES `miestai` (`id`);

--
-- Constraints for table `prekes_uzsakymai`
--
ALTER TABLE `prekes_uzsakymai`
  ADD CONSTRAINT `prekes_uzsakymai_ibfk_1` FOREIGN KEY (`preke_id`) REFERENCES `prekes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `prekes_uzsakymai_ibfk_2` FOREIGN KEY (`uzsakymas_id`) REFERENCES `uzsakymai` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `uzsakymai`
--
ALTER TABLE `uzsakymai`
  ADD CONSTRAINT `uzsakymai_ibfk_1` FOREIGN KEY (`automobilis_id`) REFERENCES `automobiliai` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `uzsakymai_ibfk_2` FOREIGN KEY (`pirkejas_id`) REFERENCES `pirkejai` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
