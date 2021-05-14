-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 08:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `address`, `age`, `email`, `gender`) VALUES
(2, 'seneth manjitha', 'No 23,minuwangoda ,Gampaha,srilanka', '13', 'male', 'maliduwijwrwthne@24gmail.com'),
(4, 'seneth manjitha', 'No 23,minuwangoda ,Gampaha,srilanka', '13', 'male', 'maliduwijwrwthne@24gmail.com'),
(5, 'seneth manjitha', 'No 23,minuwangoda ,Gampaha,srilanka', '13', 'male', 'maliduwijwrwthne@24gmail.com'),
(6, 'samanali perera', 'No,23. nochchiyagama,anuradhapura ,srilanka', '39', 'female', 'samanaliperera@ab1gmail.com'),
(7, 'Malki Ransani vithange', 'No 23,Malwana ,Gampaha,srilanka', '30', 'malkiransanivithanage123@gmail.com', 'female'),
(8, 'samanali perera', 'No.23,nochchiyagama,anuradhapura,srilanka', '39', 'female', 'samanaliperera@ab1gmail.com'),
(9, 'samanali perera', 'No.23,nochchiyagama,anuradhapura,srilanka', '39', 'female', 'samanaliperera@ab1gmail.com'),
(10, 'samanali perera', 'No.23,nochchiyagama,anuradhapura,srilanka', '39', 'female', 'samanaliperera@ab1gmail.com'),
(11, 'kaveena madushani', 'No.15,karapitiya Galle,srilanka', '27', 'female', 'kaveena madushani97@gmail.com'),
(13, 'kaveena madushani', 'No.15,karapitiya Galle,srilanka', '27', 'female', 'kaveenamadushani97@gmail.com'),
(14, 'kaveena madushani', 'No.15,karapitiya Galle,srilanka', '27', 'female', 'kaveenamadushani97@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
