-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 11:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doccure`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `doctor_id`, `patient_id`, `appointment_date`, `appointment_status`) VALUES
(20, 25, 43, '2024-01-25', 'accepted'),
(21, 30, 46, '2024-01-30', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, 'Newyork'),
(2, 'Georgia'),
(3, 'Louisiana'),
(4, 'Michigan'),
(5, 'Texas'),
(6, 'Kansas'),
(7, 'California'),
(8, 'Florida');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL,
  `doc_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `user_id`, `name`, `specialization`, `availability`, `city_id`, `doc_image`) VALUES
(25, 72, 'Ruby Perrin', 'Dentist', 'available', 1, 'doctor-01.jpg'),
(26, 73, 'Darren Elder', 'Dentist', 'available', 2, 'doctor-02.jpg'),
(27, 74, 'Deborah Angel', 'Cardiology', 'available', 3, 'doctor-thumb-03.jpg'),
(28, 75, ' Sofia Brient', 'Urology', 'available', 4, 'doctor-04.jpg'),
(29, 76, 'Marvin Campbell', 'Orthopaedics', 'available', 5, 'doctor-05.jpg'),
(30, 87, 'Andrew Elbert', 'Cardiology', 'available', 6, 'doctor-08.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patients_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pat_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patients_id`, `user_id`, `name`, `address`, `phone`, `email`, `pat_image`) VALUES
(41, 77, 'Gina Moore', 'Dallas', 9548207887, 'gina@gmail.com', 'patient5.jpg'),
(42, 79, 'Michelle Fairfax', 'Miami', 5043686874, 'michelle@gmail.com', 'patient4.jpg'),
(43, 81, 'Carl Kelly', 'Texas', 2607247769, 'carl@gmail.com', 'patient3.jpg'),
(44, 83, ' Travis Trimble', 'Calfornia', 2077299974, 'travis@gmail.com', 'patient2.jpg'),
(45, 85, 'Charlene Reed', 'Newyork', 8286329170, 'charlene@gmail.com', 'patient1.jpg'),
(46, 88, 'Robert Bill', 'Alaska', 2607247769, 'Robert@gmail.com', 'patient9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `role`, `password`) VALUES
(71, 'admin', 'admin@gmail.com', 'admin', 'admin'),
(72, 'Ruby Perrin', 'ruby@gmail.com', 'Doctor', 'doctor'),
(73, 'Darren Elder', 'darren@gmail.com', 'Doctor', 'doctor'),
(74, 'Deborah Angel', 'deborah@gmail.com', 'Doctor', 'doctor'),
(75, ' Sofia Brient', 'sofia@gmail.com', 'Doctor', 'doctor'),
(76, 'Marvin Campbell', 'marvin@gmail.com', 'Doctor', 'doctor'),
(77, 'Gina Moore', 'gina@gmail.com', 'Patient', 'patient'),
(78, 'Gina Moore', 'gina@gmail.com', 'Patient', 'patient'),
(79, 'Michelle Fairfax', 'michelle@gmail.com', 'Patient', 'patient'),
(80, 'Michelle Fairfax', 'michelle@gmail.com', 'Patient', 'patient'),
(81, 'Carl Kelly', 'carl@gmail.com', 'Patient', 'patient'),
(82, 'Carl Kelly', 'carl@gmail.com', 'Patient', 'patient'),
(83, ' Travis Trimble', 'travis@gmail.com', 'Patient', 'patient'),
(84, ' Travis Trimble', 'travis@gmail.com', 'Patient', 'patient'),
(85, 'Charlene Reed', 'charlene@gmail.com', 'Patient', 'patient'),
(86, 'Charlene Reed', 'charlene@gmail.com', 'Patient', 'patient'),
(87, 'Andrew Elbert', 'andrew@gmail.com', 'Doctor', 'doctor'),
(88, 'Robert Bill', 'Robert@gmail.com', 'Patient', 'patient'),
(89, 'Robert Bill', 'Robert@gmail.com', 'Patient', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patients_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patients_id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
