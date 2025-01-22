-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2024 at 04:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GCS`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_to`
--

CREATE TABLE `assigned_to` (
  `Task_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assigned_to`
--

INSERT INTO `assigned_to` (`Task_ID`, `Employee_ID`) VALUES
('5001', '1'),
('5007', '7'),
('5003', '3'),
('5008', '8'),
('5010', '13'),
('5006', '10');

-- --------------------------------------------------------

--
-- Table structure for table `Bills`
--

CREATE TABLE `Bills` (
  `Bill_number` int(20) NOT NULL,
  `Bill_date` date NOT NULL,
  `Hours_work` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Bills`
--

INSERT INTO `Bills` (`Bill_number`, `Bill_date`, `Hours_work`) VALUES
(3001, '2023-05-13', 100),
(3002, '2023-03-06', 120),
(3003, '2017-04-01', 160),
(3004, '2018-03-28', 90),
(3005, '2023-03-12', 110),
(3006, '2023-05-22', 181),
(3007, '2022-12-30', 130),
(3008, '2022-02-17', 94),
(3009, '2022-10-22', 151),
(3010, '2023-11-21', 200),
(3011, '2022-05-15', 220),
(3012, '2021-06-26', 180),
(3013, '2024-03-09', 150),
(3014, '2024-01-15', 140),
(3015, '2024-02-14', 115);

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `Phone_number` int(20) NOT NULL,
  `Customer_name` varchar(50) NOT NULL,
  `Customer_ID` varchar(50) NOT NULL,
  `Bill_number` int(20) NOT NULL,
  `Region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`Phone_number`, `Customer_name`, `Customer_ID`, `Bill_number`, `Region`) VALUES
(212312765, 'Tech Innovations Inc.', '1001', 3001, 'New York'),
(514234780, 'Futuretech Corp.', '1002', 3002, 'California'),
(234567123, 'LoneStar Tech Solutions', '1003', 3003, 'Texas'),
(354789323, 'Sunshine Tech Enterprises', '1004', 3004, 'Florida'),
(217394349, 'WindyCity Innovations', '1005', 3005, 'Illinois'),
(312234234, 'Keystone Tech Group', '1006', 3006, 'Pennsylvania'),
(521238349, 'Buckeye Innovations Inc.', '1007', 3007, 'Ohio'),
(413362430, 'PeachState Tech Solutions', '1008', 3008, 'Georgia'),
(782394240, 'Great Lakes Technologies', '1009', 3009, 'Michigan'),
(423134098, 'Evergreen Tech Solutions', '1010', 3010, 'Washington'),
(362434500, 'BayState Tech Innovations', '1011', 3011, 'Massachusetts'),
(404928732, 'Old Dominion Tech Group ', '1012', 3012, 'Virginia'),
(222988434, 'Grand Canyon Innovations', '1013', 3013, 'Arizona'),
(762342442, 'Rocky Mountain Tech Solutions', '1014', 3014, 'Colorado'),
(503678901, 'Beaver State Ventures', '1015', 3015, 'Oregon');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `Last_name` varchar(50) NOT NULL,
  `Middle_Initial` varchar(50) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `Region` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`Last_name`, `Middle_Initial`, `First_name`, `Employee_ID`, `Region`, `Date`) VALUES
('Snow', 'G', 'Jon', '1', 'New York', '2019-04-02'),
('Tarly', 'S', 'Samwell', '10', 'Michigan', '2017-06-22'),
('Tully', 'K', 'Catelyn', '11', 'Virginia', '2014-04-02'),
('Stark', 'K', 'Robb', '12', 'Massachusetts', '2017-01-04'),
('Tarthe', 'B', 'Brienne', '13', 'New York', '2022-01-29'),
('Lannister', 'Q', 'Cersei', '14', 'Washington', '2007-04-13'),
('Stark', 'R', 'Brandon', '15', 'Colorado', '2023-07-30'),
('Stark', 'N', 'Arya', '2', 'Oregon', '2024-04-01'),
('Clegane', 'H', 'Sandor', '3', 'Texas', '2017-08-30'),
('Stark', 'E', 'Ned', '4', 'California', '2014-04-28'),
('Martell', 'D', 'Oberyn', '5', 'Arizona', '2020-12-17'),
('Targaryen', 'D', 'Daenerys', '6', 'Florida', '2017-02-05'),
('Payne', 'S', 'Podrick', '7', 'Illinois', '2018-09-27'),
('Lannister', 'I', 'Tyrion', '8', 'Pennsylvania', '2023-08-08'),
('Lannister', 'K', 'Jamie', '9', 'Ohio', '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Skills`
--

CREATE TABLE `Employee_Skills` (
  `Skill_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Employee_Skills`
--

INSERT INTO `Employee_Skills` (`Skill_ID`, `Employee_ID`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10'),
('11', '11'),
('12', '12'),
('13', '13'),
('14', '14'),
('15', '15');

-- --------------------------------------------------------

--
-- Table structure for table `Managers`
--

CREATE TABLE `Managers` (
  `Manager_ID` varchar(50) NOT NULL,
  `Start_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Managers`
--

INSERT INTO `Managers` (`Manager_ID`, `Start_Date`) VALUES
('1', '2024-03-27'),
('2', '2023-08-09'),
('3', '2013-10-23'),
('4', '2021-02-09'),
('5', '2023-08-16'),
('6', '2021-05-20'),
('7', '2017-06-22'),
('8', '2015-04-21'),
('9', '2016-05-10'),
('10', '2022-07-27'),
('11', '2018-07-31'),
('12', '2019-01-07'),
('13', '2020-10-20'),
('14', '2022-03-15'),
('15', '2023-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `Plan_number` int(20) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Time_period` varchar(20) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`Plan_number`, `Type`, `Time_period`, `Employee_ID`) VALUES
(10001, 'Design', '4 months', '1'),
(10002, 'Development', '7 months', '2'),
(10003, 'Design', '5 months', '3'),
(10004, 'Development', '6 months', '4'),
(10005, 'Design', '3 months', '5'),
(10006, 'Development', '8 months', '6'),
(10007, 'Design', '4 months', '7'),
(10008, 'Development', '5 months', '8'),
(10009, 'Design', '6 months', '9'),
(10010, 'Development', '9 months', '10'),
(10011, 'Design', '4 months', '11'),
(10012, 'Development', '6 months', '12'),
(10013, 'Design', '3 months', '13'),
(10014, 'Development', '7 months', '14'),
(10015, 'Design', '5 months', '15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `projectcostview`
-- (See below for the actual view)
--
CREATE TABLE `projectcostview` (
`Project_ID` varchar(20)
,`Description` varchar(50)
,`Project_Budget` varchar(20)
,`Actual_Cost` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `Project_ID` varchar(20) NOT NULL,
  `Project_Date` date NOT NULL,
  `Project_Budget` varchar(20) NOT NULL,
  `Manager_ID` varchar(50) NOT NULL,
  `Plan_number` int(20) NOT NULL,
  `Customer_ID` varchar(50) NOT NULL,
  `bill_number` int(20) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`Project_ID`, `Project_Date`, `Project_Budget`, `Manager_ID`, `Plan_number`, `Customer_ID`, `bill_number`, `Description`) VALUES
('2001', '2017-02-01', '$90000', '1', 10001, '1001', 3001, 'Blockchain Integration'),
('2002', '2014-06-09', '$123000', '2', 10002, '1002', 3002, 'AI Chatbot Development'),
('2003', '2010-08-06', '$14400', '3', 10003, '1003', 3003, 'Quantum Cryptography Project'),
('2004', '2016-09-30', '$80000', '4', 10004, '1004', 3004, 'AR/VR Training Simulation '),
('2005', '2015-04-01', '$160000', '5', 10005, '1005', 3005, 'Renewable Energy Monitoring System'),
('2006', '2018-03-12', '$100000', '6', 10006, '1006', 3006, 'Smart City IoT Implementation'),
('2007', '2019-04-01', '$400000', '7', 10007, '1007', 3007, 'Geospatial Data Analysis Platform'),
('2008', '2014-06-09', '$70000', '8', 10008, '1008', 3008, 'E-commerce Platform Upgrade'),
('2009', '2021-10-19', '$134000', '9', 10009, '1009', 3009, 'Robotics Automation Project'),
('2010', '2016-11-11', '$181000', '10', 10010, '1010', 3010, 'Bioinformatics Research Initiative'),
('2011', '2020-01-01', '$181000', '11', 10011, '1011', 3011, 'Quantum AI Computing System'),
('2012', '2018-12-12', '$220000', '12', 10012, '1012', 3012, 'Autonomous Vehicle Prototype'),
('2013', '2020-05-15', '$160000', '13', 10013, '1013', 3013, 'Virtual Reality Gaming Platform'),
('2014', '2017-02-17', '$150000', '14', 10014, '1014', 3014, 'Healthcare Data Analytics Solution'),
('2015', '2015-04-11', '$110000', '15', 10015, '1015', 3015, 'Cybersecurity Incident Response System');

-- --------------------------------------------------------

--
-- Table structure for table `project_cost`
--

CREATE TABLE `project_cost` (
  `Project_ID` varchar(50) NOT NULL,
  `Actual_Cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_cost`
--

INSERT INTO `project_cost` (`Project_ID`, `Actual_Cost`) VALUES
('2001', '$85000'),
('2002', '$102000'),
('2003', '$112000'),
('2004', '$75700'),
('2005', '$145000'),
('2006', '$94000'),
('2007', '$352000'),
('2008', '$67000'),
('2009', '$123000'),
('2010', '$163000'),
('2011', '$172000'),
('2012', '$200500'),
('2013', '$155000'),
('2014', '$154000'),
('2015', '$109000');

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `Skill_ID` varchar(50) NOT NULL,
  `Rate_of_Pay` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`Skill_ID`, `Rate_of_Pay`, `Description`) VALUES
('1', '$70', 'Ethical Hacking'),
('10', '$90', 'Natural Language Processing'),
('11', '$67', 'Internet of Things (IoT)'),
('12', '$77', 'Machine Learning'),
('13', '$112', 'Neural Networks'),
('14', '$123', 'Quantum Computing'),
('15', '$100', 'Robotics'),
('2', '$85', 'Cryptocurrency Development'),
('3', '$95', 'Predictive Analytics'),
('4', '$92', 'Augmented Reality'),
('5', '$88', 'Cybersecurity'),
('6', '$79', 'Data Mining'),
('7', '$90', 'Cloud Computing'),
('8', '$95', 'Mobile Applications Development'),
('9', '$80', 'Blockchain Development');

-- --------------------------------------------------------

--
-- Table structure for table `Tasks`
--

CREATE TABLE `Tasks` (
  `No_of_Employees` int(20) NOT NULL,
  `Skill_needed` varchar(50) NOT NULL,
  `Start_date` date NOT NULL,
  `Task_ID` varchar(50) NOT NULL,
  `Plan_number` int(20) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Tasks`
--

INSERT INTO `Tasks` (`No_of_Employees`, `Skill_needed`, `Start_date`, `Task_ID`, `Plan_number`, `Description`) VALUES
(5, 'System Design', '2024-04-01', '5001', 10001, 'System Architecture Design'),
(6, 'Cybersecurity', '2024-01-03', '5002', 10002, 'Cybersecurity Incident Response System'),
(7, 'Quantum Algorithm Design', '2023-07-21', '5003', 10003, 'Quantum Encyption Algorithm Design'),
(4, 'AR/VR  Simulation ', '2023-10-04', '5004', 10004, 'AR/VR Simulation Environment Design'),
(5, 'Data Analytics', '2022-03-03', '5005', 10005, 'Data Analytics Dashboard Development'),
(8, 'IoT Sensor Nertwork', '2023-04-14', '5006', 10006, 'IoT Sensor Network Deployment'),
(9, 'Geospatial Data Analysis', '2023-09-07', '5007', 10007, 'Geospatial Data Analysis Platform'),
(6, 'E-commerce Platform UI/UX', '2023-06-09', '5008', 10008, 'E-commerce Platform UI/UX Redesign'),
(4, 'Robotics', '2024-02-08', '5009', 10009, 'Robotics Arm Prototype Testing'),
(7, 'Genomic Data Analysis', '2023-07-31', '5010', 10010, 'Genomic Data Analysis Framework Development'),
(6, 'Cybersecurity', '2024-02-22', '5011', 10011, 'Cybersecurity Enhancement'),
(5, 'Content Creation', '2023-08-07', '5012', 10012, 'Virtual Reality Content Creation'),
(8, 'Quantum Computing ', '2023-05-11', '5013', 10013, 'Quantum Computing Research'),
(6, 'AI Ethics', '2022-03-31', '5014', 10014, 'AI Ethics Framework Development'),
(7, 'Autonomous Vehicles Automation', '2024-02-06', '5015', 10015, 'Autonomous Vehicles Testing');

-- --------------------------------------------------------

--
-- Table structure for table `worklog`
--

CREATE TABLE `worklog` (
  `WorkLog_ID` varchar(50) NOT NULL,
  `Bill_number` int(20) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `Hours_work` int(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `worklog`
--

INSERT INTO `worklog` (`WorkLog_ID`, `Bill_number`, `Employee_ID`, `Hours_work`, `Date`) VALUES
('4001', 3001, '1', 8, '2024-05-01'),
('4002', 3002, '2', 12, '2024-04-01'),
('4003', 3003, '3', 10, '2024-03-01'),
('4004', 3004, '4', 12, '2024-01-01'),
('4005', 3005, '5', 7, '2023-12-08'),
('4006', 3006, '6', 17, '2024-02-01'),
('4007', 3007, '7', 9, '2024-03-07'),
('4008', 3008, '8', 14, '2024-01-15'),
('4009', 3009, '9', 13, '2020-09-25'),
('4010', 3010, '10', 10, '2022-10-14'),
('4011', 3011, '11', 13, '2024-04-01'),
('4012', 3012, '12', 11, '2023-12-07'),
('4013', 3013, '13', 9, '2023-12-08'),
('4014', 3014, '14', 8, '2016-07-08'),
('4015', 3015, '15', 12, '2021-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `Project_ID` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`Project_ID`, `Employee_ID`) VALUES
('2001', '1'),
('2002', '2'),
('2003', '3'),
('2004', '4'),
('2005', '5'),
('2006', '6'),
('2007', '7'),
('2008', '8'),
('2009', '9'),
('2010', '10'),
('2011', '11'),
('2012', '12'),
('2013', '13'),
('2014', '14'),
('2015', '15');

-- --------------------------------------------------------

--
-- Structure for view `projectcostview`
--
DROP TABLE IF EXISTS `projectcostview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gcs`.`projectcostview`  AS SELECT `gcs`.`projects`.`Project_ID` AS `Project_ID`, `gcs`.`projects`.`Description` AS `Description`, `gcs`.`projects`.`Project_Budget` AS `Project_Budget`, `gcs`.`project_cost`.`Actual_Cost` AS `Actual_Cost` FROM (`gcs`.`projects` join `gcs`.`project_cost` on(`gcs`.`projects`.`Project_ID` = `gcs`.`project_cost`.`Project_ID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_to`
--
ALTER TABLE `assigned_to`
  ADD KEY `FK_D13` (`Task_ID`),
  ADD KEY `FK_D14` (`Employee_ID`);

--
-- Indexes for table `Bills`
--
ALTER TABLE `Bills`
  ADD PRIMARY KEY (`Bill_number`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `FK_D11` (`Bill_number`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `Employee_Skills`
--
ALTER TABLE `Employee_Skills`
  ADD KEY `FK_D2` (`Skill_ID`),
  ADD KEY `FK_D3` (`Employee_ID`);

--
-- Indexes for table `Managers`
--
ALTER TABLE `Managers`
  ADD KEY `FK_D1` (`Manager_ID`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`Plan_number`),
  ADD KEY `FK_D15` (`Employee_ID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`Project_ID`),
  ADD KEY `FK_D4` (`Manager_ID`),
  ADD KEY `FK_D5` (`Plan_number`),
  ADD KEY `FK_D6` (`Customer_ID`),
  ADD KEY `FK_D7` (`bill_number`);

--
-- Indexes for table `project_cost`
--
ALTER TABLE `project_cost`
  ADD PRIMARY KEY (`Actual_Cost`),
  ADD KEY `FK_D8` (`Project_ID`);

--
-- Indexes for table `Skill`
--
ALTER TABLE `Skill`
  ADD PRIMARY KEY (`Skill_ID`);

--
-- Indexes for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD PRIMARY KEY (`Task_ID`),
  ADD KEY `FK_D12` (`Plan_number`);

--
-- Indexes for table `worklog`
--
ALTER TABLE `worklog`
  ADD PRIMARY KEY (`WorkLog_ID`),
  ADD KEY `FK_D16` (`Bill_number`),
  ADD KEY `FK_D17` (`Employee_ID`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD KEY `FK_D9` (`Project_ID`),
  ADD KEY `FK_D10` (`Employee_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_to`
--
ALTER TABLE `assigned_to`
  ADD CONSTRAINT `FK_D13` FOREIGN KEY (`Task_ID`) REFERENCES `Tasks` (`Task_ID`),
  ADD CONSTRAINT `FK_D14` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`);

--
-- Constraints for table `Customers`
--
ALTER TABLE `Customers`
  ADD CONSTRAINT `FK_D11` FOREIGN KEY (`Bill_number`) REFERENCES `Bills` (`Bill_number`);

--
-- Constraints for table `Employee_Skills`
--
ALTER TABLE `Employee_Skills`
  ADD CONSTRAINT `FK_D2` FOREIGN KEY (`Skill_ID`) REFERENCES `Skill` (`Skill_ID`),
  ADD CONSTRAINT `FK_D3` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`);

--
-- Constraints for table `Managers`
--
ALTER TABLE `Managers`
  ADD CONSTRAINT `FK_D1` FOREIGN KEY (`Manager_ID`) REFERENCES `Employees` (`Employee_ID`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `FK_D15` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK_D4` FOREIGN KEY (`Manager_ID`) REFERENCES `Managers` (`Manager_ID`),
  ADD CONSTRAINT `FK_D5` FOREIGN KEY (`Plan_number`) REFERENCES `plan` (`Plan_number`),
  ADD CONSTRAINT `FK_D6` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  ADD CONSTRAINT `FK_D7` FOREIGN KEY (`bill_number`) REFERENCES `Bills` (`Bill_number`);

--
-- Constraints for table `project_cost`
--
ALTER TABLE `project_cost`
  ADD CONSTRAINT `FK_D8` FOREIGN KEY (`Project_ID`) REFERENCES `projects` (`Project_ID`);

--
-- Constraints for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD CONSTRAINT `FK_D12` FOREIGN KEY (`Plan_number`) REFERENCES `plan` (`Plan_number`);

--
-- Constraints for table `worklog`
--
ALTER TABLE `worklog`
  ADD CONSTRAINT `FK_D16` FOREIGN KEY (`Bill_number`) REFERENCES `Bills` (`Bill_number`),
  ADD CONSTRAINT `FK_D17` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `FK_D10` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`),
  ADD CONSTRAINT `FK_D9` FOREIGN KEY (`Project_ID`) REFERENCES `projects` (`Project_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
