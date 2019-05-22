-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 04:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overwatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--
CREATE DATABASE overwatch;
USE overwatch;
CREATE TABLE `stats` (
  `Player_Name` varchar(12) DEFAULT NULL,
  `Hero` varchar(13) DEFAULT NULL,
  `kills_per_min` decimal(3,2) DEFAULT NULL,
  `Damage_per_min` varchar(8) DEFAULT NULL,
  `Deaths_per_min` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`Player_Name`, `Hero`, `kills_per_min`, `Damage_per_min`, `Deaths_per_min`) VALUES
('Twilight', 'Ana', '1.21', '394.1', '0.41'),
('Munchkin', 'Ana', '1.49', '508.6', '0.41'),
('Jjonak', 'Ana', '1.46', '505.5', '0.38'),
('Diya', 'Ashe', '2.33', '1281', '0.24'),
('Carpe', 'Ashe', '2.26', '1774', '0.46'),
('BQB', 'Ashe', '0.00', '962', '1.03'),
('Rascal', 'Baptiste', '1.41', '612.6', '0.21'),
('Zacharee', 'Baptiste', '1.21', '469.5', '0.55'),
('Agilities', 'Baptiste', '1.14', '552', '0.33'),
('Sinatraa', 'Bastion', '2.57', '1713', '0.23'),
('Krystal', 'Bastion', '3.61', '1560', '0.19'),
('DDing', 'Bastion', '3.41', '1557', '0.35'),
('Haksal', 'Brigitte', '1.99', '568.20', '0.35'),
('Birdring', 'Brigitte', '2.13', '516.60', '0.36'),
('Agilities', 'Brigitte', '1.59', '582.30', '0.55'),
('Fury', 'D. Va', '2.04', '651', '0.31'),
('Void', 'D. Va', '2.08', '721', '0.26'),
('Meko', 'D. Va', '2.08', '649', '0.32'),
('Haksal', 'Doomfist', '2.98', '965', '1.63'),
('Jinmu', 'Doomfist', '3.00', '778', '0.72'),
('Eileen', 'Doomfist', '2.00', '843', '0.42'),
('Decay', 'Genji', '2.96', '716', '0.62'),
('Haksal', 'Genji', '1.98', '857', '0.63'),
('ShadowBurn', 'Genji', '2.23', '695', '0.50'),
('Happy', 'Hanzo', '2.19', '981.5', '0.25'),
('Bdosin', 'Hanzo', '1.38', '1162.2', '0.58'),
('Carpe', 'Hanzo', '2.02', '888', '0.43'),
('Architect', 'Junkrat', '1.64', '1367', '0.21'),
('Hydration', 'Junkrat', '2.26', '907', '0.18'),
('Jake', 'Junkrat', '1.37', '1024', '0.20'),
('Anamo', 'Lucio', '1.78', '488.5', '0.22'),
('Masaa', 'Lucio', '1.53', '543.5', '0.51'),
('Slime', 'Lucio', '1.62', '462.6', '0.33'),
('TviQ', 'McCree', '2.47', '745.9', '0.42'),
('BabyBay', 'McCree', '0.98', '769.6', '0.20'),
('Jinmu', 'McCree', '2.07', '874.5', '0.89'),
('Happy', 'Mei', '2.05', '1491.2', '0.38'),
('BaconJack', 'Mei', '1.66', '1110', '0.48'),
('Stitch', 'Mei', '2.26', '874.9', '0.36'),
('Neptuno', 'Mercy', '0.20', '31.2', '0.43'),
('IDK', 'Mercy', '0.12', '31.8', '0.40'),
('NUS', 'Mercy', '0.05', '9.9', '0.39'),
('Neko', 'Moira', '1.68', '580.4', '0.38'),
('Bdosin', 'Moira', '2.13', '557.7', '0.45'),
('Twilight', 'Moira', '2.14', '513.9', '0.45'),
('Gamsu', 'Orisa', '1.86', '590.2', '0.62'),
('Roar', 'Orisa', '1.85', '463.1', '0.36'),
('Pokpo', 'Orisa', '1.85', '592.6', '0.43'),
('Fleta', 'Pharah', '3.05', '1415.1', '0.24'),
('Jinmu', 'Pharah', '2.11', '1348.6', '0.53'),
('Hotba', 'Pharah', '2.10', '1215.3', '0.52'),
('Elsa', 'Reaper', '4.50', '1206.9', '0.97'),
('Carpe', 'Reaper', '4.60', '958', '0.92'),
('Mano', 'Reaper', '5.36', '622', '0.90'),
('Super', 'Reinhardt', '1.70', '921', '0.46'),
('Bumper', 'Reinhardt', '1.73', '896', '0.59'),
('Mano', 'Reinhardt', '1.68', '788', '0.50'),
('Viol2t', 'Roadhog', '3.01', '826', '0.22'),
('Elsa', 'Roadhog', '2.81', '842', '0.24'),
('Bdosin', 'Roadhog', '2.21', '652', '0.38'),
('Nenne', 'Soldier 76', '2.33', '1145', '0.00'),
('Danye', 'Soldier 76', '1.47', '1500', '0.59'),
('Stitch', 'Soldier 76', '2.51', '1325', '0.21'),
('Sinatraa', 'Sombra', '2.17', '874.9', '0.24'),
('YangXiaoLong', 'Sombra', '2.20', '668', '0.32'),
('DDing', 'Sombra', '2.18', '749.5', '0.29'),
('BQB', 'Symmetra', '2.14', '1404', '0.00'),
('Surefour', 'Symmetra', '1.00', '1034', '0.35'),
('Unkoe', 'Symmetra', '0.00', '491', '0.69'),
('Hotba', 'Torbjorn', '3.15', '1458', '0.45'),
('Ria', 'Torbjorn', '2.94', '1180', '0.59'),
('YoungJin', 'Torbjorn', '0.00', '529', '0.71'),
('Arhan', 'Tracer', '2.15', '844', '0.54'),
('Munchkin', 'Tracer', '2.33', '939', '0.55'),
('BaconJack', 'Tracer', '2.03', '718', '0.49'),
('Linzkr', 'Widowmaker', '2.20', '811.5', '0.43'),
('Stitch', 'Widowmaker', '1.51', '839.8', '0.59'),
('Krystal', 'Widowmaker', '1.92', '725', '0.81'),
('Marve1', 'Winston', '2.67', '1008', '0.33'),
('Fissure', 'Winston', '1.97', '839', '0.42'),
('OGE', 'Winston', '1.78', '826', '0.46'),
('Muma', 'Wrecking Ball', '2.02', '620', '0.50'),
('Ameng', 'Wrecking Ball', '1.78', '802.2', '0.56'),
('Rio', 'Wrecking Ball', '1.69', '663.8', '0.34'),
('Seominsoo', 'Zarya', '2.31', '1,221.60', '0.31'),
('Sinatraa', 'Zarya', '2.12', '1366', '0.32'),
('Profit', 'Zarya', '2.18', '1134', '0.35'),
('Viol2t', 'Zenyatta', '1.63', '921.1', '0.36'),
('Twilight', 'Zenyatta', '1.87', '915.6', '0.40'),
('Jjonak', 'Zenyatta', '1.79', '881.8', '0.36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
