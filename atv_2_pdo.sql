-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 23-Ago-2019 às 11:34
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.14-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atv_2_pdo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `numero da equipe` int(11) NOT NULL,
  `nome da equipe` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas`
--

CREATE TABLE `escolas` (
  `nome da escola` int(11) NOT NULL,
  `cidade` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback`
--

CREATE TABLE `feedback` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `comments` varchar(1000) NOT NULL,
  `feedback_date` datetime NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `feedback`
--

INSERT INTO `feedback` (`user_id`, `first_name`, `last_name`, `email`, `comments`, `feedback_date`, `age`) VALUES
(1, 'macaquinhos', 'in the head', 'wesleyssteam@gmail.com', 'monkes', '2019-08-22 09:21:53', NULL),
(2, '', '', '', '', '2019-08-23 10:33:01', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `email` varchar(30) NOT NULL,
  `nome` int(30) NOT NULL,
  `escola` int(11) NOT NULL,
  `funçao` int(11) NOT NULL,
  `numero da equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`numero da equipe`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
