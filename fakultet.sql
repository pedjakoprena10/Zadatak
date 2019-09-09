-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2019 at 04:13 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fakultet`
--
CREATE DATABASE IF NOT EXISTS `fakultet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fakultet`;

-- --------------------------------------------------------

--
-- Table structure for table `podaci`
--

CREATE TABLE IF NOT EXISTS `podaci` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `studenti_id` int(255) NOT NULL,
  `grad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studenti_id` (`studenti_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `podaci`
--

INSERT INTO `podaci` (`id`, `studenti_id`, `grad`) VALUES
(1, 4, 'Banjaluka'),
(2, 7, 'Doboj');

-- --------------------------------------------------------

--
-- Table structure for table `studenti`
--

CREATE TABLE IF NOT EXISTS `studenti` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Primarni ključ',
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `predmet` varchar(255) NOT NULL,
  `ocjena` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studenti`
--

INSERT INTO `studenti` (`id`, `ime`, `prezime`, `predmet`, `ocjena`) VALUES
(1, 'Marko', 'Marković', 'matematika', 10),
(4, 'Ranko', 'Cirkovic', 'ruski', 10),
(5, 'Dejana', 'Dejić', 'psihologija', 8),
(6, 'Suzana', 'Suzić', 'francuski', 7),
(7, 'Stojanka', 'Stojić', 'sociologija', 8);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `podaci`
--
ALTER TABLE `podaci`
  ADD CONSTRAINT `podaci_ibfk_1` FOREIGN KEY (`studenti_id`) REFERENCES `studenti` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
