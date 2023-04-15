-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 03:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_calendar`
--

CREATE TABLE `academic_calendar` (
  `SEM` int(11) NOT NULL,
  `SEM_BEGIN` date DEFAULT NULL,
  `COURSE_REGN_BEGIN` date DEFAULT NULL,
  `COURSE_REGN_CLOSE` date DEFAULT NULL,
  `FIRST_TEST_BEGIN` date DEFAULT NULL,
  `FIRST_TEST_END` date DEFAULT NULL,
  `FIRST_TEST_EVAL` date DEFAULT NULL,
  `SECOND_TEST_BEGIN` date DEFAULT NULL,
  `SECOND_TEST_END` date DEFAULT NULL,
  `SECOND_TEST_EVAL` date DEFAULT NULL,
  `THIRD_TEST_BEGIN` date DEFAULT NULL,
  `THIRD_TEST_END` date DEFAULT NULL,
  `MODEL_PRAC_BEGIN` date DEFAULT NULL,
  `MODEL_PRAC_END` date DEFAULT NULL,
  `EXAM_REGN_BEGIN` date DEFAULT NULL,
  `LAST_WORKING_DAY` date DEFAULT NULL,
  `SEM_PRAC_BEGIN` date DEFAULT NULL,
  `SEM_PRAC_END` date DEFAULT NULL,
  `SEM_THEORY_BEGIN` date DEFAULT NULL,
  `SEM_THEORY_END` date DEFAULT NULL,
  `VACATION_BEGIN` date DEFAULT NULL,
  `VACATION_END` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admid` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admid`, `name`, `password`) VALUES
('COE1001', 'COE ADMIN', '12345'),
('COE1002', 'COE ADMIN 2', '67890'),
('COE1003', 'COE EMP1', '13579'),
('COE1004', 'COE EMP 2', '24680'),
('COE1005', 'COE EMP 3', '12121'),
('COE1006', 'COE EMP 4', '13451');

-- --------------------------------------------------------

--
-- Table structure for table `exam_timetable`
--

CREATE TABLE `exam_timetable` (
  `course_code` varchar(10) NOT NULL,
  `ex_date` date NOT NULL,
  `session` varchar(10) NOT NULL,
  `exam_type` varchar(10) NOT NULL,
  `ex_session` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_timetable`
--

INSERT INTO `exam_timetable` (`course_code`, `ex_date`, `session`, `exam_type`, `ex_session`) VALUES
('CE201', '2023-05-04', 'FN', '', '23A'),
('CS201', '2023-05-08', 'FN', '', '23A'),
('CS202', '2023-05-11', 'FN', '', '23A'),
('EE201', '2023-05-15', 'FN', '', '23A'),
('EE202', '2023-05-19', 'FN', '', '23A'),
('MA201', '2023-05-22', 'FN', '', '23A'),
('ME202', '2023-05-25', 'FN', '', '23A');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_ID` int(10) NOT NULL,
  `ROOM_NAME` varchar(10) NOT NULL,
  `ROOM_TYPE` varchar(10) NOT NULL,
  `ROOM_CAPACITY` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_ID`, `ROOM_NAME`, `ROOM_TYPE`, `ROOM_CAPACITY`) VALUES
(1, 'IT01', 'THEORY', 30),
(2, 'IT02', 'THEORY', 30),
(3, 'IT03', 'THEORY', 30),
(4, 'IT04', 'THEORY', 30),
(5, 'IT05', 'THEORY', 30),
(6, 'IT06', 'THEORY', 30),
(7, 'LAB1', 'LAB', 30),
(8, 'LAB2', 'LAB', 30),
(9, 'LAB3', 'LAB', 30);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) DEFAULT NULL,
  `application_no` varchar(10) DEFAULT NULL,
  `admission` varchar(10) DEFAULT NULL,
  `father_name` mediumtext DEFAULT NULL,
  `mother_name` mediumtext DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `Nationality` text DEFAULT NULL,
  `Other_Nation` text DEFAULT NULL,
  `Community` text DEFAULT NULL,
  `State` text DEFAULT NULL,
  `Other_State` text DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Programme` text DEFAULT NULL,
  `Department` text DEFAULT NULL,
  `Specialization` text DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `Reg_No` varchar(50) DEFAULT NULL,
  `Pec_Email` varchar(50) DEFAULT NULL,
  `Year_Of_Joining` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `application_no`, `admission`, `father_name`, `mother_name`, `date`, `Gender`, `Contact`, `email`, `address`, `Nationality`, `Other_Nation`, `Community`, `State`, `Other_State`, `Type`, `Programme`, `Department`, `Specialization`, `Remark`, `Reg_No`, `Pec_Email`, `Year_Of_Joining`, `image`) VALUES
('Vysh', '12345', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'B.Tech', 'Information Technology', '', '', '', '', '2020', ''),
('Vysh', '12345', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'B.Tech', 'Information Technology', '', '', '', '', '2020', ''),
('Vysh', '12345', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'B.Tech', 'Information Technology', '', '', '', '', '2020', ''),
('Vysh', '12345', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'B.Tech', 'Electronics and Communication Engineering', '', '', '', '', '-1', ''),
('vysh', '1234', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'abcd', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', '', '', '', '2020', ''),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Electronics and Communication Engineering', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Electronics and Communication Engineering', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('fkdkfj', '989', 'Centac', 'hj', 'sda', 'April/3/2002', 'Female', '6578990876', 'ggjcs@gmail.com', 'bcxdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('vysh', '1234', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'abcd', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2020', NULL),
('vysh', '1234', 'Centac', 'Babu', 'Radhika', 'October/18/2002', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'abcd', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', '', '', NULL, NULL, NULL, '2020', NULL),
('vysh', '234', 'Centac', 'dfdf', 'dfg', 'December/17/2005', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'M.Tech', 'Computer Science and Engineering', 'Data Science', NULL, NULL, NULL, '2022', NULL),
('vysh', '234', 'Centac', 'dfdf', 'dfg', 'December/17/2005', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'M.Tech', 'Computer Science and Engineering', 'Data Science', NULL, NULL, NULL, '2022', NULL),
('vysh', '234', 'Centac', 'dfdf', 'dfg', 'December/17/2005', 'Female', '9843508506', 'sreevysh2002@gmail.com', 'Muthyalamman Nagar\r\nGanapathichettikulam', 'Indian', '', 'obc', 'Puducherry', 'Puducherry', '10', 'M.Tech', 'Computer Science and Engineering', 'Data Science', NULL, NULL, NULL, '2022', NULL),
('vysh', '9876', 'Centac', 'Babu', 'Radhika', 'April/2/2001', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'sdsfsdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Mechanical Engineering', 'Energy Technology', NULL, NULL, NULL, '2017', NULL),
('vysh', '9876', 'Centac', 'Babu', 'Radhika', 'April/2/2001', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'sdsfsdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Mechanical Engineering', 'Energy Technology', NULL, NULL, NULL, '2017', NULL),
('vysh', '9876', 'Centac', 'Babu', 'Radhika', 'April/2/2001', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'sdsfsdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Mechanical Engineering', 'Energy Technology', NULL, NULL, NULL, '2017', NULL),
('vysh', '9876', 'Centac', 'Babu', 'Radhika', 'April/2/2001', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'sdsfsdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Mechanical Engineering', 'Energy Technology', NULL, NULL, NULL, '2017', NULL),
('vysh', '9876', 'Centac', 'Babu', 'Radhika', 'April/2/2001', 'Female', '9844676658', 'sreevyshnavi@gmail.com', 'sdsfsdf', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Mechanical Engineering', 'Energy Technology', NULL, NULL, NULL, '2017', NULL),
('dfg', 'r43', 'Centac', 'frgt', 'grg', 'December/21/2007', 'Male', '4454321', 'sreevyshnavi@gmail.com', 'fdfr', 'Indian', '', 'obc', 'Puducherry', '', '10', 'M.Tech', 'Electronics and Communication Engineering', 'ECE', NULL, NULL, NULL, '2023', NULL),
('xdfsh', '1234', '', '', '', '-1/-1/-1', '', '', '', '', '', '', 'obc', '', '', '10', '', '', '', NULL, NULL, NULL, '-1', NULL),
('xdfsh', '1234', '', '', '', '-1/-1/-1', '', '', '', '', '', '', 'obc', '', '', '10', '', '', '', NULL, NULL, NULL, '-1', NULL),
('dgf', '12345', 'Centac', 'fdsgf', 'sfdsf', '2007-07-01', 'Female', '9087654323', 'dfdf@gmail.com', 'gds', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2018', NULL),
('dgf', '12345', 'Centac', 'fdsgf', 'sfdsf', '2007-07-01', 'Female', '9087654323', 'dfdf@gmail.com', 'gds', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2018', NULL),
('dgf', '12345', 'Centac', 'fdsgf', 'sfdsf', '2007-07-01', 'Female', '9087654323', 'dfdf@gmail.com', 'gds', 'Indian', '', 'obc', 'Puducherry', '', '10', 'B.Tech', 'Information Technology', '', NULL, NULL, NULL, '2018', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `u_administration`
--

CREATE TABLE `u_administration` (
  `F_ID` varchar(10) DEFAULT NULL,
  `POSITION` varchar(30) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_course`
--

CREATE TABLE `u_course` (
  `COURSE_CODE` varchar(10) NOT NULL,
  `COURSE_NAME` varchar(200) DEFAULT NULL,
  `COURSE_CATG` varchar(5) DEFAULT NULL,
  `CREDITS` float(3,2) DEFAULT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `COURSE_TYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_course`
--

INSERT INTO `u_course` (`COURSE_CODE`, `COURSE_NAME`, `COURSE_CATG`, `CREDITS`, `DEPT_ID`, `COURSE_TYPE`) VALUES
('CE201', 'Environmental Science', 'MCC', 0.00, 'CE', ' MC'),
('CE202', 'Engineering Mechanics', 'ESC', 4.00, 'CE', 'TY'),
('CE203', 'Engineering Geology', 'PCC', 2.00, 'CE', 'TY'),
('CE204', 'Fluid Mechanics', 'PCC', 3.00, 'CE', 'TY'),
('CE205', 'Building Technology', 'PCC', 3.00, 'CE', 'TY'),
('CE206', 'Surveying And Geomatics', 'PCC', 3.00, 'CE', 'TY'),
('CE207', 'Computer-Aided Civil Engineering Drawing', 'ESC', 1.50, 'CE', 'LB'),
('CE208', 'Suveying Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE209', 'Disaster Management', 'PCC', 3.00, 'CE', 'TY'),
('CE210', 'Hydraulics Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE211', 'Concrete Technology', 'PCC', 3.00, 'CE', 'TY'),
('CE212', 'Basics Of Solid Mechanics', 'PCC', 4.00, 'CE', 'TY'),
('CE213', 'Materials Testing And Evaluation Laboratory-I', 'PCC', 1.50, 'CE', 'LB'),
('CE214', 'Fluid Mechanics Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE215', 'Mechanics Of Materials', 'PCC', 4.00, 'CE', 'TY'),
('CE216', 'Environmental Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE217', 'Transportation Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE218', 'Hydrology Water Resources And Irrigation Engineering', 'PCC', 4.00, 'CE', 'TY'),
('CE219', 'Materials Testing And Evaluation Laboratory-Ii (Highway And Concrete Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE220', 'Environmental Engineering Laboratory', 'PCC', 1.50, 'CE', 'LB '),
('CE221', 'Structural Analysis', 'PCC', 4.00, 'CE', 'TY'),
('CE222', 'Structural Concrete Design', 'PCC', 4.00, 'CE', 'TY'),
('CE223', 'Geotechnical Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE224', 'Estimation Costing And Valuation', 'PCC ', 3.00, 'CE', 'TY'),
('CE225', 'Geotechnical Engineering Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE226', 'Structural Mechanics Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE227', 'Computer Aided Analysis And Design Structures', 'PCC', 1.50, 'CE', 'LB'),
('CE228', 'Seminar', 'PAC', 1.00, 'CE', '-'),
('CE229', 'Professional Practice, Law And Ethics', 'MCC', 0.00, 'CE', '-'),
('CE230', 'Comprehensive Test', 'PAC', 1.00, 'CE', '-'),
('CE231', 'Internship', 'PAC', 2.00, 'CE', '-'),
('CE232', 'Project Work', 'PAC', 8.00, 'CE', '-'),
('CE233', 'Engineering Mechanics And Mechanics Of Solids', 'ESC', 4.00, 'CE', 'TY'),
('CEH01', 'Eco-Friendly Building Materials And Construction', 'PCC', 4.00, 'CE', 'TY'),
('CEH02', 'Coastal And Off Shore Structures', 'PCC', 4.00, 'CE', 'TY'),
('CEH03', 'Design Of Pre-Stressed Concrete Structures', 'PCC', 4.00, 'CE', 'TY'),
('CEH04', 'Environmental Impact Assessment And Audit', 'PCC', 4.00, 'CE', 'TY'),
('CEH05', 'Design Of Steel Structural Elements', 'PCC', 4.00, 'CE', 'TY'),
('CEM01', 'Materials And Technologies Of Building Construction', 'PCC', 4.00, 'CE', 'TY'),
('CEM02', 'Basics Of Surveying', 'PCC', 4.00, 'CE', 'TY'),
('CEM03', 'Mechanics Of Solids And Fluids', 'PCC', 4.00, 'CE', 'TY'),
('CEM04', 'Pavement Materials And Ground Improvement Techniques', 'PCC', 4.00, 'CE', 'TY'),
('CEM05', 'Basics Of Structural Design', 'PCC', 4.00, 'CE', 'TY'),
('CEO01', 'Non Destructive Testing', 'OEC', 3.00, 'CE', 'TY'),
('CEO02', 'Building Lighting And Ventilation Engineering', 'OEC', 3.00, 'CE', 'TY'),
('CEO03', 'Air, Water And Noise Pollution', 'OEC', 3.00, 'CE', 'TY'),
('CEO04', 'Airport And Harbour Engineering', 'OEC', 3.00, 'CE', 'TY'),
('CEO05', 'Fluid Mechanics And Strength Of Materials', 'OEC', 3.00, 'CE', 'TY'),
('CEY01', 'Failure Assessment And Rehabilitation Of Structures', 'PEC', 3.00, 'CE', 'TY'),
('CEY04', 'Construction Management', 'PEC', 3.00, 'CE', 'TY'),
('CEY12', 'Bridge Engineering', 'PEC', 3.00, 'CE', 'TY'),
('CEY13', 'Geotechnical Processes And Application', 'PEC', 3.00, 'CE', 'TY'),
('CEY16', 'Foundation Engineering', 'PEC', 3.00, 'CE', 'TY'),
('CEY19', 'Formwork For Concrete Structures', 'PEC', 3.00, 'CE', 'TY'),
('CH201', 'Momentum Transfer', 'PCC', 4.00, 'CH', 'TY'),
('CH202', 'Process Calculations', 'PCC', 4.00, 'CH', 'TY'),
('CH203', 'Process Heat Transfer', 'PCC', 4.00, 'CH', 'TY'),
('CH204', 'Mechanical Operations', 'PCC', 3.00, 'CH', 'TY'),
('CH205', 'Chemical Engineering Thermodynamics', 'PCC', 4.00, 'CH', 'TY'),
('CH206', 'Mass Transfer?I', 'PCC', 4.00, 'CH', 'TY'),
('CH207', 'Chemical Engineering Lab?I', 'PCC', 1.50, 'CH', 'LB'),
('CH208', 'Mass Transfer?II', 'PCC', 4.00, 'CH', 'TY'),
('CH209', 'Chemical Reaction Engineering?I ', 'PCC', 4.00, 'CH', 'TY'),
('CH210', 'Chemical Process Industries', 'PCC', 3.00, 'CH', 'TY'),
('CH211', 'Chemical Engineering Lab?II', 'PCC', 1.50, 'CH', 'LB'),
('CH212', 'Chemical Reaction Engineering?II', 'PCC', 4.00, 'CH', 'TY'),
('CH213', 'Computational Methods And Practice  In Chemical Engineering ', 'PCC', 4.00, 'CH', 'TY'),
('CH214', 'Chemical Engineering Lab?III', 'PCC', 1.50, 'CH', 'LB'),
('CH215', 'Transport Phenomena', 'PCC', 4.00, 'CH', 'TY'),
('CH216', 'Process Dynamics & Control ', 'PCC', 4.00, 'CH', 'TY'),
('CH217', 'Process Equipment Design & Practice', 'PCC', 4.00, 'CH', 'TY'),
('CH218', 'Process Engineering Economics ', 'PCC', 3.00, 'CH', 'TY'),
('CH219', 'Process Control And Simulation Lab?IV', 'PCC', 1.50, 'CH', 'LB'),
('CH220', 'Seminar', 'PAC', 1.00, 'CH', 'LB'),
('CH221', 'Professional Ethics', 'MCC', 0.00, 'CH', '-'),
('CH222', 'Comprehensive Test', 'PAC', 1.00, 'CH', '-'),
('CH223', 'Internship ', 'PAC', 2.00, 'CH', '-'),
('CH224', 'Project Work ', 'PAC', 8.00, 'CH', 'PR'),
('CHH01', 'Introduction To Frontiers Of Chemical Engineering', 'PCC', 4.00, 'CH', 'TY'),
('CHH02', 'Special Topics In Chemical Engineering?I', 'PCC', 4.00, 'CH', 'TY'),
('CHH03', 'Special Topics In Chemical Engineering?II', 'PCC', 4.00, 'CH', 'TY'),
('CHH04', 'Special Topics In Chemical Engineering-III', 'PCC', 4.00, 'CH', 'TY'),
('CHH05', 'Special Topics In Chemical Engineering?IV', 'PCC', 4.00, 'CH', 'TY'),
('CHM01', 'Process Engineering Principles And Calculations', 'PCC', 4.00, 'CH', 'TY'),
('CHM02', 'Fluid Flow And Particle Technology', 'PCC', 4.00, 'CH', 'TY'),
('CHM03', 'Heat Transfer And Thermodynamics', 'PCC', 4.00, 'CH', 'TY'),
('CHM04', 'Fundamentals Of Mass Transfer And Separations', 'PCC', 4.00, 'CH', 'TY'),
('CHM05', 'Process Dynamics And Reaction Engineering', 'PCC', 4.00, 'CH', 'TY'),
('CHO01', 'Principles  Of  Process  Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO02', 'Green Chemistry And Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO03', 'Energy Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO04', 'Introduction To Semiconductor Processing', 'OEC', 3.00, 'CH', 'TY'),
('CHY05', 'Energy Technology And Management', 'PEC', 3.00, 'CH', 'TY'),
('CHY06', 'Petroleum Refinery Engineering', 'PCC', 3.00, 'CH', 'TY'),
('CHY07', 'Nuclear Technology', 'PEC', 3.00, 'CH', 'TY'),
('CHY09', 'Chemical Engineering Practice', 'PCC', 3.00, 'CH', 'TY'),
('CHY10', 'Fluidization Engineering', 'PEC', 3.00, 'CH', 'TY'),
('CHY12', 'Pollution Control In Process Industries', 'PCC', 3.00, 'CH', 'TY'),
('CHY13', 'Bio Process Engineering', 'PEC', 3.00, 'CH', 'TY'),
('CS201', 'Programming For Problem Solving', 'ESC', 3.00, 'CS', 'TY'),
('CS202', 'Programming Laboratory', 'ESC', 1.50, 'CS', 'LB'),
('CS203', 'Computer Organization And Architecture', 'PCC', 4.00, 'CS', 'TY'),
('CS204', 'Data Structures', 'PCC', 3.00, 'CS', 'TY'),
('CS205', 'Object Oriented Programming Languages', 'PCC', 3.00, 'CS', 'TY'),
('CS206', 'Data Structures Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS207', 'Object Oriented Programming Languages Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS208', 'Operating Systems', 'PCC', 3.00, 'CS', 'TY'),
('CS209', 'Design And Analysis Of Algorithms', 'PCC', 3.00, 'CS', 'TY'),
('CS210', 'Database Management Systems', 'PCC', 3.00, 'CS', 'TY'),
('CS211', 'Software Engineering', 'PCC', 4.00, 'CS', 'TY'),
('CS212', 'Operating System Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS213', 'Design And Analysis Of Algorithms Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS214', 'Database Management Systems Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS215', 'Platform Technologies', 'PCC', 3.00, 'CS', 'TY'),
('CS216', 'Computer Networks', 'PCC', 3.00, 'CS', 'TY'),
('CS217', 'Automata Theory And Compiler Design', 'PCC', 4.00, 'CS', 'TY'),
('CS218', 'Platform Technologies Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS219', 'Computer Networks Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS220', 'Microprocessors And Microcontrollers', 'PCC', 3.00, 'CS', 'TY'),
('CS221', 'Web Technologies', 'PCC', 3.00, 'CS', 'TY'),
('CS222', 'Information Security', 'PCC', 4.00, 'CS', 'TY'),
('CS223', 'Microprocessors And Microcontrollers Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS224', 'Web Technologies Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS225', 'Artificial Intelligence', 'PCC', 3.00, 'CS', 'TY'),
('CS226', 'Parallel And Distributed Systems', 'PCC', 4.00, 'CS', 'TY'),
('CS227', 'Data Science Essentials', 'PCC', 4.00, 'CS', 'TY'),
('CS228', 'Artificial Intelligence Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS229', 'Seminar', 'PAC', 1.00, 'CS', '-'),
('CS230', 'Professional Ethics', 'MCC', 0.00, 'CS', '-'),
('CS231', 'Comprehensive Test', 'PAC', 1.00, 'CS', '-'),
('CS232', 'Internship', 'PAC', 2.00, 'CS', '-'),
('CS233', 'Project Work', 'PAC', 8.00, 'CS', 'PR'),
('CS234', 'Data Structures And Object-Oriented Programming', 'ESC', 3.00, 'CS', 'TY'),
('CS235', 'Data Structures And Oops Lab', 'ESC', 1.50, 'CS', 'LB'),
('CS236', 'Microprocessors And Microcontrollers', 'ESC', 3.00, 'CS', 'TY'),
('CS237', 'Microprocessors And Microcontrollers Laboratory', 'ESC', 1.50, 'CS', 'LB'),
('CSH01', 'Human Computer Interaction', 'PCC', 4.00, 'CS', 'TY'),
('CSH02', 'Advanced Data Structure And Algorithms', 'PCC', 4.00, 'CS', 'TY'),
('CSH03', 'Advanced Software Design', 'PCC', 4.00, 'CS', 'TY'),
('CSH04', 'Advanced Security Concepts', 'PCC', 4.00, 'CS', 'TY'),
('CSH05', 'Deep Learning ', 'PCC', 4.00, 'CS', 'TY'),
('CSM01', 'Data Structures And Algorithms', 'PCC', 4.00, 'CS', 'TY'),
('CSM02', 'Principles Of Operating Systems', 'PCC', 4.00, 'CS', 'TY'),
('CSM03', 'Principles Of Database Management', 'PCC', 4.00, 'CS', 'TY'),
('CSM04', 'Internet Programming ', 'PCC', 4.00, 'CS', 'TY'),
('CSM05', 'Network Technology', 'PCC', 4.00, 'CS', 'TY'),
('CSO01', 'Introduction To Python Programming', 'OEC', 3.00, 'CS', 'TY'),
('CSO02', 'Java Programming', 'OEC', 3.00, 'CS', 'TY'),
('CSO03', 'Fundamentals Of Rdbms', 'OEC', 3.00, 'CS', 'TY'),
('CSO04', 'Essentials Of Mobile Application Development', 'OEC', 3.00, 'CS', 'TY'),
('CSO05', 'Introduction To Data Science', 'OEC', 3.00, 'CS', 'TY'),
('CSY03', 'Python Programming', 'PEC', 3.00, 'CS', 'TY'),
('CSY05', 'Internet Of Things', 'PEC', 3.00, 'CS', 'TY'),
('CSY06', 'Mobile Application Development', 'PEC', 3.00, 'CS', 'TY'),
('CSY09', 'Cloud Computing', 'PEC', 3.00, 'CS', 'TY'),
('CSY10', 'Machine Learning', 'PEC', 3.00, 'CS', 'TY'),
('CY201', 'Chemistry   ', 'BSC', 4.00, 'CY', 'TY'),
('CY202', 'Chemistry Laboratory', 'BSC', 1.50, 'CY', 'LB'),
('CY203', 'Chemistry For Chemical Engineering', 'BSC', 4.00, 'CY', 'TY'),
('CY204', 'Chemistry Lab For Chemical Engineering', 'BSC', 1.50, 'CY', 'LB'),
('EC201', 'Circuits And Networks', 'PCC', 3.00, 'EC', 'TY'),
('EC202', 'Electronic Devices And Circuits', 'PCC', 3.00, 'EC', 'TY'),
('EC203', 'Electromagnetic Waves And Fields', 'PCC', 3.00, 'EC', 'TY'),
('EC204', 'Digital System Design', 'PCC', 3.00, 'EC', 'TY'),
('EC205', 'Electronic Devices And Networks Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC206', 'Transmission Lines And Waveguides', 'PCC', 3.00, 'EC', 'TY'),
('EC207', 'Electronic Circuit Design', 'PCC', 3.00, 'EC', 'TY'),
('EC208', 'Signals And Systems', 'PCC', 4.00, 'EC', 'TY'),
('EC209', 'Analog Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC210', 'Digital System Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC211', 'Electronic Circuit Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC212', 'Analog Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC213', 'Digital Signal Processing And DSP Processors', 'PCC', 4.00, 'EC', 'TY'),
('EC214', 'Digital Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC215', 'Digital Signal Processing Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC216', 'Digital Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC217', 'Microwave And Optical Engineering', 'PCC', 3.00, 'EC', 'TY'),
('EC218', 'Data Communication Networks', 'PCC', 3.00, 'EC', 'TY'),
('EC219', 'VLSI Design', 'PCC', 3.00, 'EC', 'TY'),
('EC220', 'Microwave And Optical Engineering Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC221', 'Data Communication Networks Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC222', 'VLSI Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC223', 'Wireless Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC224', 'Information Theory And Coding', 'PCC', 3.00, 'EC', 'TY'),
('EC225', 'Embedded System', 'PCC', 3.00, 'EC', 'TY'),
('EC226', 'Wireless Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC227', 'Embedded System Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC228', 'Mini Project', 'PAC', 1.00, 'EC', '-'),
('EC229', 'Professional Ethics', 'MCC', 0.00, 'EC', '-'),
('EC230', 'Comprehensive Test', 'PAC', 1.00, 'EC', '-'),
('EC231', 'Internship', 'PAC', 2.00, 'EC', '-'),
('EC232', 'Project Work', 'PAC', 8.00, 'EC', 'PR'),
('EC233', 'Electronic Circuits', 'ESC', 3.00, 'EC', 'TY'),
('EC234', 'Elements Of Electronics', 'ESC', 3.00, 'EC', 'TY'),
('EC235', 'Electronic Devices And Digital Systems', 'ESC', 3.00, 'EC', 'TY'),
('EC236', 'Electronic Devices And Digital Systems Laboratory', 'ESC', 1.50, 'EC', 'LB'),
('ECH01', 'Semiconductor Technology And Design', 'PCC', 4.00, 'EC', 'TY'),
('ECH02', 'Medical Electronics And Informatics', 'PCC', 4.00, 'EC', 'TY'),
('ECH03', 'Advanced Digital System Design', 'PCC', 4.00, 'EC', 'TY'),
('ECH04', 'Simulation Of Communication Systems', 'PCC', 4.00, 'EC', 'TY'),
('ECH05', 'Next Generation Networks', 'PCC', 4.00, 'EC', 'TY'),
('ECM01', 'Electron Devices', 'PCC', 4.00, 'EC', 'TY'),
('ECM02', 'Analog And Digital Circuits', 'PCC', 4.00, 'EC', 'TY'),
('ECM03', 'Communication Systems', 'PCC', 4.00, 'EC', 'TY'),
('ECM04', 'Basic Vlsi Design ', 'PCC', 4.00, 'EC', 'TY'),
('ECM05', 'Wireless Communication', 'PCC', 4.00, 'EC', 'TY'),
('ECO01', 'Consumer Electronics ', 'OEC', 3.00, 'EC', 'TY'),
('ECO02', 'Communication Engineering', 'OEC', 3.00, 'EC', 'TY'),
('ECO03', 'Cmos Vlsi Design', 'OEC', 3.00, 'EC', 'TY'),
('ECO04', 'Internet Of Things', 'OEC', 3.00, 'EC', 'TY'),
('ECO05', 'Wireless Communication Networks', 'OEC', 3.00, 'EC', 'TY'),
('ECO06', 'Cyber Security', 'OEC', 3.00, 'EC', 'TY'),
('ECY02', 'Computer Architecture And Organization', 'PEC', 3.00, 'EC', 'TY'),
('ECY03', 'Antennas And Wave Propagation', 'PEC', 3.00, 'EC', 'TY'),
('ECY05', 'Control Systems Engineering', 'PEC', 3.00, 'EC', 'TY'),
('ECY14', 'Cryptography And Network Security ', 'PEC', 3.00, 'EC', 'TY'),
('ECY16', 'Cognitive Radio Networks', 'PEC', 3.00, 'EC', 'TY'),
('EDM310', 'Orientation To Entrpreneurship', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM410', 'Customer Discovery And Prototyping', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM510', 'Development Of Business Model', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM610', 'New Venture Development', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM710', 'First Venture Project', 'PCC', 4.00, 'IEDC', 'TY'),
('EE201', 'Basic Electrical Engineering', 'ESC', 4.00, 'EE', 'TY'),
('EE202', 'Basic Electrical Engineering Laboratory', 'ESC', 1.50, 'EE', 'LB'),
('EE203', 'Electrical Circuit Analysis', 'PCC', 4.00, 'EE', 'TY'),
('EE204', 'Electromagnetic Fields', 'PCC', 3.00, 'EE', 'TY'),
('EE205', 'Electronic Devices And Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE206', 'Electrical Machines-I', 'PCC', 3.00, 'EE', 'TY'),
('EE207', 'Signals And Systems', 'PCC', 3.00, 'EE', 'TY'),
('EE208', 'Electronics Laboratory-I', 'PCC', 1.50, 'EE', 'LB'),
('EE209', 'Electrical Machines Laboratory-I', 'PCC', 1.50, 'EE', 'LB'),
('EE210', 'Analog Electronics', 'PCC', 3.00, 'EE', 'TY'),
('EE211', 'Pulse And Digital Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE212', 'Electrical Machines-II', 'PCC', 3.00, 'EE', 'TY'),
('EE213', 'Electronics Laboratory-II', 'PCC', 1.50, 'EE', 'LB'),
('EE214', 'Electrical Machines Laboratory-II', 'PCC', 1.50, 'EE', 'LB'),
('EE215', 'Analog And Digital Integrated Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE216', 'Power Electronics', 'PCC', 3.00, 'EE', 'TY'),
('EE217', 'Measurement And Instrumentation', 'PCC', 3.00, 'EE', 'TY'),
('EE218', 'Transmission And Distribution', 'PCC', 3.00, 'EE', 'TY'),
('EE219', 'Control Systems', 'PCC', 4.00, 'EE', 'TY'),
('EE220', 'Electronics Laboratory-III', 'PCC', 1.50, 'EE', 'LB'),
('EE221', 'Measurement And Control Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE222', 'Power System Analysis', 'PCC', 4.00, 'EE', 'TY'),
('EE223', 'Microprocessors And Microcontrollers', 'PCC', 3.00, 'EE', 'TY'),
('EE224', 'Microprocessors And Microcontrollers Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE225', 'Power Electronics Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE226', 'Power System Operation And Control', 'PCC', 3.00, 'EE', 'TY'),
('EE227', 'Protection And Switchgear', 'PCC', 3.00, 'EE', 'TY'),
('EE228', 'Solid State Drives', 'PCC', 3.00, 'EE', 'TY'),
('EE229', 'Power Systems Laboratory', 'PCC', 2.00, 'EE', 'LB'),
('EE230', 'Seminar', 'PAC', 1.00, 'EE', '-'),
('EE231', 'Professional Ethics', 'MCC', 0.00, 'EE', '-'),
('EE232', 'Comprehensive Test', 'PAC', 1.00, 'EE', '-'),
('EE233', 'Internship', 'PAC', 2.00, 'EE', '-'),
('EE234', 'Project Work', 'PAC', 8.00, 'EE', 'PR'),
('EEH01', 'Energy Engineering', 'PCC', 4.00, 'EE', 'TY'),
('EEH02', 'Network Analysis And Synthesis', 'PCC', 4.00, 'EE', 'TY'),
('EEH03', 'Electrical Machine Design', 'PCC', 4.00, 'EE', 'TY'),
('EEH04', 'Advanced  Control Systems', 'PCC', 4.00, 'EE', 'TY'),
('EEH05', 'Power Electronics Applications To Power Systems', 'PCC', 4.00, 'EE', 'TY'),
('EEM01', 'Electrical Circuits And Measurements', 'PCC', 4.00, 'EE', 'TY'),
('EEM02', 'Analog And Digital Electronics', 'PCC', 4.00, 'EE', 'TY'),
('EEM03', 'Electrical Machines And Control', 'PCC', 4.00, 'EE', 'TY'),
('EEM04', 'Power Electronics And Drives', 'PCC', 4.00, 'EE', 'TY'),
('EEM05', 'Power Systems Engineering', 'PCC', 4.00, 'EE', 'TY'),
('EEO01', 'Power Generation Systems', 'OEC', 3.00, 'EE', 'TY'),
('EEO02', 'System Dynamics', 'OEC', 3.00, 'EE', 'TY'),
('EEO03', 'Fuzzy  And Neural Systems', 'OEC', 3.00, 'EE', 'TY'),
('EEY01', 'Electrical Safety And Quality Management', 'PEC', 3.00, 'EE', 'TY'),
('EEY03', 'Special Electrical Machines', 'PEC', 3.00, 'EE', 'TY'),
('EEY09', 'Smart Grid', 'PEC', 3.00, 'EE', 'TY'),
('EEY12', 'Power Quality', 'PEC', 3.00, 'EE', 'TY'),
('EEY18', 'Utilization Of Electrical Energy', 'PEC', 3.00, 'EE', 'TY'),
('EI201', 'Circuit Theory', 'PCC', 4.00, 'EI', 'TY'),
('EI202', 'Electronic Circuits', 'PCC', 3.00, 'EI', 'TY'),
('EI203', 'Electronic Design And Fabrication', 'PCC', 4.00, 'EI', 'TY'),
('EI204', 'Digital Logic Theory And Design', 'PCC', 3.00, 'EI', 'TY'),
('EI205', 'Electronic Circuits Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI206', 'Electronic Design And Fabrication Lab', 'PCC', 1.00, 'EI', 'LB'),
('EI207', 'Linear Integrated Circuits', 'PCC', 3.00, 'EI', 'TY'),
('EI208', 'Electrical And Electronics Instruments', 'PCC', 3.00, 'EI', 'TY'),
('EI209', 'Transducers And Measurements System', 'PCC', 3.00, 'EI', 'TY'),
('EI210', 'Linear And Integrated Circuits Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI211', 'Transducers And Measurements System Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI212', 'Instrumentation And Sensor Technologies For Civil Engineering Applications', 'ESC', 3.00, 'EI', 'TY'),
('EI213', 'Industrial Instrumentation', 'PCC', 4.00, 'EI', 'TY'),
('EI214', 'Microprocessors And Applications', 'PCC', 3.00, 'EI', 'TY'),
('EI215', 'Control Systems', 'PCC', 4.00, 'EI', 'TY'),
('EI216', 'Instrumentation System Design Lab', 'PCC', 1.50, 'EI', 'TY'),
('EI217', 'VLSI Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI218', 'Microprocessors And Applications Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI219', 'Process Control', 'PCC', 4.00, 'EI', 'TY'),
('EI220', 'Embedded System Design ', 'PCC', 4.00, 'EI', 'TY'),
('EI221', 'Robotics And Automation', 'PCC', 3.00, 'EI', 'TY'),
('EI222', 'Process Control Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI223', 'Virtual Instrumentation Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI224', 'Embedded System Design Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI225', 'PLC And DCS', 'PCC', 4.00, 'EI', 'TY'),
('EI226', 'Analytical Instruments', 'PCC', 4.00, 'EI', 'TY'),
('EI227', 'Industrial Measurements And Control Lab', 'PCC', 1.50, 'EI', 'TY'),
('EI228', 'Seminar', 'PAC', 1.00, 'EI', 'LB'),
('EI229', 'Mini Project', 'PAC', 2.00, 'EI', 'LB'),
('EI230', 'Professional Ethics', 'MCC', 0.00, 'EI', '-'),
('EI231', 'Comprehensive Test', 'PAC', 1.00, 'EI', '-'),
('EI232', 'Internship', 'PAC', 2.00, 'EI', '-'),
('EI233', 'Project Work', 'PAC', 8.00, 'EI', '-'),
('EIH01', 'Measurement Data Analysis', 'PCC', 4.00, 'EI', 'TY'),
('EIH02', 'Design Of Sensors And Transducers', 'PCC', 4.00, 'EI', 'TY'),
('EIH03', 'Field Instruments For Process Control', 'PCC', 4.00, 'EI', 'TY'),
('EIH04', 'Advanced Control Engineering', 'PCC', 4.00, 'EI', 'TY'),
('EIH05', 'Cyber Security In Industrial Automation', 'PCC', 4.00, 'EI', 'TY'),
('EIM01', 'Transducer Engineering', 'PCC', 4.00, 'EI', 'TY'),
('EIM02', 'Measuring Instruments And Testing', 'PCC', 4.00, 'EI', 'TY'),
('EIM03', 'Measurements In Process Industries', 'PCC', 4.00, 'EI', 'TY'),
('EIM04', 'Essentials Of Control Engineering ', 'PCC', 4.00, 'EI', 'TY'),
('EIM05', 'Internet Of Things For Automation', 'PCC', 4.00, 'EI', 'TY'),
('EIO01', 'Measurements And Instrumentation', 'OEC', 3.00, 'EI', 'TY'),
('EIO02', 'Process Instrumentation', 'OEC', 3.00, 'EI', 'TY'),
('EIO03', 'Principles Of Medical Electronics', 'OEC', 3.00, 'EI', 'TY'),
('EIO04', 'Microcontroller Based System Design ', 'OEC', 3.00, 'EI', 'TY'),
('EIO05', 'Fundamentals Of Mems', 'OEC', 3.00, 'EI', 'TY'),
('EIY01', 'Signals And Systems', 'PEC', 3.00, 'EI', 'TY'),
('EIY02', 'Visual Programming For Instrumentation Engineers', 'PEC', 3.00, 'EI', 'TY'),
('EIY03', 'Industrial Electronics', 'PEC', 3.00, 'EI', 'TY'),
('EIY04', 'Virtual Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY05', 'Digital Signal Processing', 'PEC', 3.00, 'EI', 'TY'),
('EIY06', 'Applied Soft Computing ', 'PEC', 3.00, 'EI', 'TY'),
('EIY07', 'VLSI Design', 'PEC', 3.00, 'EI', 'TY'),
('EIY08', 'Biomedical Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY09', 'Instrumentation System Design', 'PEC', 3.00, 'EI', 'TY'),
('EIY10', 'Digital Image Processing', 'PEC', 3.00, 'EI', 'TY'),
('EIY11', 'Design Of Process Control System Components ', 'PEC', 3.00, 'EI', 'TY'),
('EIY12', 'Power Plant Instrumentation ', 'PEC', 3.00, 'EI', 'TY'),
('EIY13', 'Fiber Optics And Laser Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY14', 'MEMS', 'PEC', 3.00, 'EI', 'TY'),
('EIY15', 'Instrumentation In Petrochemical Industry', 'PEC', 3.00, 'EI', 'TY'),
('EP201', 'Entrepreneurship', 'PAC', 2.00, 'IEDC', 'TY'),
('FY201', 'Induction Programme', 'MCC', 0.00, 'FY', 'MC'),
('HS201', 'English For Communication', 'HSM', 3.00, 'HS', 'TY'),
('HS202', 'Industrial Economics And Management', 'HSM', 3.00, 'HS', 'TY'),
('HSO01', 'Basic Course In English Communication', 'OEC', 3.00, 'HS', 'TY'),
('HSO03', 'English For Competitive Exams', 'OEC', 3.00, 'HS', 'TY'),
('HSO04 ', 'Introduction To Soft Skills', 'OEC', 3.00, 'HS', 'TY'),
('IT201', 'Digital System Design', 'PCC', 3.00, 'IT', 'TY'),
('IT202', 'Data Structures', 'PCC', 3.00, 'IT', 'TY'),
('IT203', 'Object Oriented Programming  Using C++ & Java', 'PCC', 3.00, 'IT', 'TY'),
('IT204', 'Digital Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT205', 'Data Structures Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT206', 'Object Oriented Programming Laboratory (C++ & Java)', 'PCC', 1.50, 'IT', 'LB'),
('IT207', 'Operating Systems', 'PCC', 3.00, 'IT', 'TY'),
('IT208', 'Computer Architecture', 'PCC', 3.00, 'IT', 'TY'),
('IT209', 'Microprocessors And Applications', 'PCC', 3.00, 'IT', 'TY'),
('IT210', 'Design And Analysis Of Algorithms', 'PCC', 3.00, 'IT', 'TY'),
('IT211', 'Operating Systems Laboratory With Unix / Linux', 'PCC', 1.50, 'IT', 'LB'),
('IT212', 'Microprocessor Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT213', 'Design And Analysis Of Algorithms Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT214', 'Database Management System', 'PCC', 3.00, 'IT', 'TY'),
('IT215', 'Resource Management And Graph Theory', 'PCC', 4.00, 'IT', 'TY'),
('IT216', 'Computer Networks', 'PCC', 4.00, 'IT', 'TY'),
('IT217', 'Information Coding Techniques  ', 'PEC', 3.00, 'IT', 'TY'),
('IT218', 'Database Management System Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT219', 'Computer Networks Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT220', 'Information Coding Techniques  Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT221', 'Software Engineering', 'PCC', 3.00, 'IT', 'TY'),
('IT222', 'Automata And Formal Languages', 'PCC', 4.00, 'IT', 'TY'),
('IT223', 'Web Technology ', 'PCC', 3.00, 'IT', 'TY'),
('IT224', 'Web Technology Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT225', 'Software Engineering Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT226', 'Artificial Intelligence', 'PCC', 4.00, 'IT', 'TY'),
('IT227', 'Artificial Intelligence Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT228', 'Seminar', 'PAC', 1.00, 'IT', 'LB'),
('IT229', 'Mini Project', 'PCC', 1.50, 'IT', 'PR'),
('IT230', 'Professional Ethics', 'MCC', 0.00, 'IT', '-'),
('IT231', 'Comprehensive Test', 'PAC', 1.00, 'IT', '-'),
('IT232', 'Internship ', 'PAC', 2.00, 'IT', '-'),
('IT233', 'Project Work ', 'PAC', 8.00, 'IT', 'PR'),
('ITH01', 'Programming Paradigms', 'PCC', 4.00, 'IT', 'TY'),
('ITH02', 'Advanced Data Structures', 'PCC', 4.00, 'IT', 'TY'),
('ITH03', 'Biometrics', 'PCC', 4.00, 'IT', 'TY'),
('ITH04', 'Advanced Java Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITH05', 'Introduction To Data Science ', 'PCC', 4.00, 'IT', 'TY'),
('ITM01', 'Data Structures And Algorithms', 'PCC', 4.00, 'IT', 'TY'),
('ITM02', 'Java And Internet Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITM03', 'Data Communication And Computer Networks ', 'PCC', 4.00, 'IT', 'TY'),
('ITM04', 'Information Systems And Organization', 'PCC', 4.00, 'IT', 'TY'),
('ITM05', 'Iot And Python Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITO01', 'Business Process', 'OEC', 3.00, 'IT', 'TY'),
('ITO02', 'Object Oriented Software Engineering', 'OEC', 3.00, 'IT', 'TY'),
('ITO03', 'Introduction To Operating Systems', 'OEC', 3.00, 'IT', 'TY'),
('ITO04', 'Introduction To Database', 'OEC', 3.00, 'IT', 'TY'),
('ITO05', 'Web Engineering', 'OEC', 3.00, 'IT', 'TY'),
('ITY01', 'Compiler Design', 'PEC', 3.00, 'IT', 'TY'),
('ITY07', 'Mobile Computing', 'PEC', 3.00, 'IT', 'TY'),
('ITY08', 'Image Processing', 'PEC', 3.00, 'IT', 'TY'),
('ITY13', 'Data Mining And Data Warehousing', 'PEC', 3.00, 'IT', 'TY'),
('ITY15', 'Information Security', 'PEC', 3.00, 'IT', 'TY'),
('ITY16', 'Introduction To Machine Learning', 'PEC', 3.00, 'IT', 'TY'),
('MA201', 'Mathematics-I', 'BSC', 4.00, 'MA', 'TY'),
('MA202', 'Mathematics-II', 'BSC', 4.00, 'MA', 'TY'),
('MA203', ' Numerical Methods And Statistics', 'BSC', 4.00, 'MA', 'TY'),
('MA204', 'Transforms, Partial Differential Equations And Statistics', 'BSC', 4.00, 'MA', 'TY'),
('MA205', 'Linear Algebra, Numerical Methods And Random Processes', 'BSC', 4.00, 'MA', 'TY'),
('MA206', 'Mathematics For Computing', 'BSC', 4.00, 'MA', 'TY'),
('ME201', 'Workshop And Manufacturing Practice', 'ESC', 1.50, 'ME', 'LB'),
('ME202', 'Engineering Graphics And Computer Aided Drawing', 'ESC', 3.00, 'ME', 'TY'),
('ME203', 'Engineering Mechanics', 'ESC', 4.00, 'ME', 'TY'),
('ME204', 'Fluid Mechanics And Hydraulic Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME205', 'Engineering Thermodynamics', 'PCC', 4.00, 'ME', 'TY'),
('ME206', 'Materials Technology', 'PCC', 3.00, 'ME', 'TY'),
('ME207', 'Machine Drawing', 'PCC', 3.00, 'ME', 'TY'),
('ME208', 'Mechanics Of Solids', 'ESC', 4.00, 'ME', 'TY'),
('ME209', 'Thermal Engineering?I', 'PCC', 4.00, 'ME', 'TY'),
('ME210', 'Machining Technology', 'PCC', 3.00, 'ME', 'TY'),
('ME211', 'Kinematics Of  Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME212', 'Mechanical Engineering Lab ?I ( Fluid Mechanics And Machines/ Material Technology /Machine Shop)', 'PCC', 1.50, 'ME', 'LB'),
('ME213', 'Heat And Mass Transfer', 'PCC', 4.00, 'ME', 'TY'),
('ME214', 'Manufacturing Processes', 'PCC', 4.00, 'ME', 'TY'),
('ME215', 'Dynamics Of Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME216', 'Mechanical Engineering Lab?II (Dynamics Lab/  Special Machines / Heat Transfer Lab)', 'PCC', 1.50, 'ME', 'LB'),
('ME217', 'Thermal Engineering?II', 'PCC', 4.00, 'ME', 'TY'),
('ME218', 'Metrology And Measurements', 'PCC', 4.00, 'ME', 'TY'),
('ME219', 'Design Of Machine Elements', 'PCC', 4.00, 'ME', 'TY'),
('ME220', 'Seminar', 'PAC', 1.00, 'ME', '-'),
('ME221', 'Mechanical Engineering Lab?III (Thermal Engineering Lab /  Measurements Lab /  Modelling, Simulation And Analysis Lab)', 'PCC', 1.50, 'ME', 'LB'),
('ME222', 'Operations Research', 'PCC', 4.00, 'ME', 'TY'),
('ME223', 'Industrial Engineering And Management ', 'PCC', 3.00, 'ME', 'TY'),
('ME224', 'Advanced Manufacturing Technology', 'PCC', 4.00, 'ME', 'TY'),
('ME225', 'Professional Ethics', 'MCC', 0.00, 'ME', '   -'),
('ME226', 'Comprehensive Test', 'PAC', 1.00, 'ME', '-'),
('ME227', 'Internship', 'PAC', 2.00, 'ME', '-'),
('ME228', 'Project Work', 'PAC', 8.00, 'ME', 'PR'),
('MEH01', 'Engineering Optimization ', 'PCC', 4.00, 'ME', 'TY'),
('MEH02', 'Production Drawing And Cost Estimation', 'PCC', 4.00, 'ME', 'TY'),
('MEH03', 'Computational Biological Thermo-Fluid Mechanics', 'PCC', 4.00, 'ME', 'TY'),
('MEH04', 'Product Design And Development', 'PCC', 4.00, 'ME', 'TY'),
('MEH05', 'Surface Engineering', 'PCC', 4.00, 'ME', 'TY'),
('MEM01', 'Heat Power Engineering', 'PCC', 4.00, 'ME', 'TY'),
('MEM02', 'Manufacturing Technology', 'PCC', 4.00, 'ME', 'TY'),
('MEM03', 'Machine Design ', 'PCC', 4.00, 'ME', 'TY'),
('MEM04', 'Quality Control And Improvement Techniques', 'PCC', 4.00, 'ME', 'TY'),
('MEM05', 'Process Planning And Cost Analysis', 'PCC', 4.00, 'ME', 'TY'),
('MEO01', 'Renewable Energy', 'OEC', 3.00, 'ME', 'TY'),
('MEO02', 'Solar Power Engineering', 'OEC', 3.00, 'ME', 'TY'),
('MEO03', 'Fluid And Thermal Machines', 'OEC', 3.00, 'ME', 'TY'),
('MEO04', 'Marketing Management', 'OEC', 3.00, 'ME', 'TY'),
('MEO05', 'Elements Of Project Management', 'OEC', 3.00, 'ME', 'TY'),
('MEO06', 'Introduction To Nanoscience And Nanotechnology', 'OEC', 3.00, 'ME', 'TY'),
('MEO07', 'Industrial Automation', 'OEC', 3.00, 'ME', 'TY'),
('MEO08', 'Quantitative Techniques For Engineers', 'OEC', 3.00, 'ME', 'TY'),
('MEO09', 'Finite Element Analysis', 'OEC', 3.00, 'ME', 'TY'),
('MEY01', 'Energy And Environmental Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY04', 'Automobile Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY06', 'Fluid Power Automation', 'PEC', 3.00, 'ME', 'TY'),
('MEY08', 'Maintenance And Safety Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY09', 'Computer Aided Design', 'PEC', 3.00, 'ME', 'TY'),
('MEY10', 'Cryogenic Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY12', 'Design Of Transmission Systems', 'PEC', 3.00, 'ME', 'TY'),
('MEY14', 'Total Quality Management', 'PEC', 3.00, 'ME', 'TY'),
('PH201', 'Physics', 'BSC', 4.00, 'PH', 'TY'),
('PH202', 'Physics Laboratory', 'BSC', 1.50, 'PH', 'LB'),
('SH201', 'Biology For Engineers', 'BSC', 2.00, 'CY', 'TY'),
('SH202', 'Indian Constitution', 'MCC', 0.00, 'HS', '-'),
('SH203', 'Essence Of Indian Traditional Knowledge', 'MCC', 0.00, 'HS', '-');

-- --------------------------------------------------------

--
-- Table structure for table `u_course_regn`
--

CREATE TABLE `u_course_regn` (
  `REGNO` varchar(10) NOT NULL,
  `COURSE_CODE` varchar(10) NOT NULL,
  `SEM` float NOT NULL,
  `INTERNAL_MARKS` float(3,1) DEFAULT NULL,
  `ATTENDANCE` float(4,1) DEFAULT NULL,
  `FACULTY_ID` varchar(10) DEFAULT NULL,
  `SESSION` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_course_regn`
--

INSERT INTO `u_course_regn` (`REGNO`, `COURSE_CODE`, `SEM`, `INTERNAL_MARKS`, `ATTENDANCE`, `FACULTY_ID`, `SESSION`) VALUES
('18CE1002', 'CE201', 1, 39.0, 97.0, NULL, '18B'),
('18CE1002', 'CS201', 1, 39.0, 97.0, NULL, '18B'),
('18CE1002', 'CS201', 2, 35.0, NULL, NULL, '19A'),
('18CE1002', 'CS202', 1, 34.0, 99.0, NULL, '18B'),
('18CE1002', 'CY201', 2, 30.0, NULL, NULL, '19A'),
('18CE1002', 'CY202', 2, 37.0, NULL, NULL, '19A'),
('18CE1002', 'EE201', 1, 38.0, 98.0, NULL, '18B'),
('18CE1002', 'EE202', 1, 37.0, 98.0, NULL, '18B'),
('18CE1002', 'FY201', 1, 38.0, NULL, NULL, '18B'),
('18CE1002', 'HS201', 2, 35.0, NULL, NULL, '19A'),
('18CE1002', 'MA201', 1, 39.0, NULL, NULL, '18B'),
('18CE1002', 'MA202', 2, 33.0, NULL, NULL, '19A'),
('18CE1002', 'ME201', 2, 36.0, NULL, NULL, '19A'),
('18CE1002', 'ME202', 1, 34.0, NULL, NULL, '18B'),
('18CE1002', 'PH201', 2, 36.0, NULL, NULL, '19A'),
('18CE1002', 'PH202', 2, 37.0, NULL, NULL, '19A'),
('18CE1004', 'CE201', 1, 38.0, 98.0, NULL, '18B'),
('18CE1004', 'CS201', 1, 37.0, 98.0, NULL, '18B'),
('18CE1004', 'CS202', 1, 40.0, 98.0, NULL, '18B'),
('18CE1004', 'EE201', 1, 40.0, 98.0, NULL, '18B'),
('18CE1004', 'EE202', 1, 38.0, 98.0, NULL, '18B'),
('18CE1004', 'FY201', 1, 33.0, NULL, NULL, '18B'),
('18CE1004', 'MA201', 1, 36.0, 91.0, NULL, '18B'),
('18CE1004', 'ME202', 1, 36.0, 91.0, NULL, '18B'),
('18CE1005', 'CE201', 1, 39.0, 99.0, NULL, '18B'),
('18CE1005', 'CS201', 1, 36.0, 99.0, NULL, '18B'),
('18CE1005', 'CS202', 1, 38.0, 99.0, NULL, '18B'),
('18CE1005', 'EE201', 1, 38.0, 97.0, NULL, '18B'),
('18CE1005', 'EE202', 1, 40.0, 97.0, NULL, '18B'),
('18CE1005', 'FY201', 1, NULL, NULL, NULL, '18B'),
('18CE1005', 'MA201', 1, 34.0, 98.0, NULL, '18B'),
('18CE1005', 'ME202', 1, 34.0, 98.0, NULL, '18B');

-- --------------------------------------------------------

--
-- Table structure for table `u_dept`
--

CREATE TABLE `u_dept` (
  `DEPT_ID` varchar(5) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `DEPT_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_dept`
--

INSERT INTO `u_dept` (`DEPT_ID`, `PASSWORD`, `DEPT_NAME`) VALUES
('CE', NULL, 'Civil Engineering'),
('CH', NULL, 'Chemical Engineering'),
('CS', NULL, 'Computer Science and Engineering'),
('CY', NULL, 'Chemistry'),
('EC', NULL, 'Electronics and Communication Engineering'),
('EE', NULL, 'Electrical and Electronics Engineering'),
('EI', NULL, 'Electronics and Instrumentation Engineering'),
('FY', NULL, 'First Year Induction'),
('HS', NULL, 'Humanities and Social Sciences'),
('IEDC', NULL, 'Incubation and Entrepreneurship Development Centre'),
('IT', NULL, 'Information Technology'),
('MA', NULL, 'Mathematics'),
('MB', NULL, 'MBA'),
('ME', NULL, 'Mechanical Engineering'),
('MT', NULL, 'Mechatronics'),
('PH', NULL, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `u_exam_regn`
--

CREATE TABLE `u_exam_regn` (
  `REGNO` varchar(10) DEFAULT NULL,
  `SESSION` varchar(5) DEFAULT NULL,
  `CONSOLIDATED_ATTENDANCE` float DEFAULT NULL,
  `TRANSACTION_ID` varchar(30) DEFAULT NULL,
  `eligible_for_exam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_exam_regn`
--

INSERT INTO `u_exam_regn` (`REGNO`, `SESSION`, `CONSOLIDATED_ATTENDANCE`, `TRANSACTION_ID`, `eligible_for_exam`) VALUES
('18CE1002', '23A', 98, NULL, 1),
('18CE1004', '23A', 96, NULL, 1),
('18CE1005', '23A', 98, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_external_marks`
--

CREATE TABLE `u_external_marks` (
  `REGNO` varchar(10) NOT NULL,
  `COURSE_CODE` varchar(10) NOT NULL,
  `EXTERNAL_MARKS` float(3,1) DEFAULT NULL,
  `Total` int(11) NOT NULL,
  `GRADE` char(1) DEFAULT NULL,
  `GRADEPT` float DEFAULT NULL,
  `SESSION` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_external_marks`
--

INSERT INTO `u_external_marks` (`REGNO`, `COURSE_CODE`, `EXTERNAL_MARKS`, `Total`, `GRADE`, `GRADEPT`, `SESSION`) VALUES
('18CE1002', 'CE201', 58.0, 97, 'S', 10, '23A'),
('18CE1002', 'CS201', 57.0, 96, 'S', 10, '23A'),
('18CE1002', 'CS202', 60.0, 94, 'S', 10, '23A'),
('18CE1002', 'EE201', 58.0, 96, 'S', 10, '23A'),
('18CE1002', 'EE202', 59.0, 96, 'S', 10, '23A'),
('18CE1002', 'MA201', 59.0, 98, 'S', 10, '23A'),
('18CE1002', 'ME202', 45.0, 85, 'A', 9, '23A'),
('18CE1004', 'CE201', 59.0, 97, 'S', 10, '23A'),
('18CE1004', 'CS201', 59.0, 96, 'S', 10, '23A'),
('18CE1004', 'CS202', 59.0, 99, 'S', 10, '23A'),
('18CE1004', 'EE201', 59.0, 99, 'S', 10, '23A'),
('18CE1004', 'EE202', 59.0, 97, 'S', 10, '23A'),
('18CE1004', 'MA201', 59.0, 95, 'S', 10, '23A'),
('18CE1004', 'ME202', 45.0, 81, 'A', 9, '23A'),
('18CE1005', 'CE201', 60.0, 99, 'S', 10, '23A'),
('18CE1005', 'CS201', 60.0, 96, 'S', 10, '23A'),
('18CE1005', 'CS202', 60.0, 98, 'S', 10, '23A'),
('18CE1005', 'EE201', 60.0, 98, 'S', 10, '23A'),
('18CE1005', 'EE202', 60.0, 100, 'S', 10, '23A'),
('18CE1005', 'MA201', 60.0, 94, 'S', 10, '23A'),
('18CE1005', 'ME202', 46.0, 80, 'A', 9, '23A');

-- --------------------------------------------------------

--
-- Table structure for table `u_faculty`
--

CREATE TABLE `u_faculty` (
  `FACULTY_ID` varchar(10) NOT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_faculty`
--

INSERT INTO `u_faculty` (`FACULTY_ID`, `PASSWORD`, `FNAME`, `DEPT_ID`, `DESIGNATION`, `EMAIL`) VALUES
('01IT01', '9443206299', 'KANMANI S', 'IT', 'PROFESSOR', 'kanmani@ptuniv.edu.in'),
('01IT02', '9442086394', 'EZHILARASAN M', 'IT', 'PROFESSOR', 'mrezhil@ptuniv.edu.in'),
('01IT03', '9443535915', 'SARASWATHI S', 'IT', 'PROFESSOR', 's.saraswathi@ptuniv.edu.in'),
('01IT04', '9443616935', 'SANTHI BASKARAN', 'IT', 'PROFESSOR', 'santhibaskaran@ptuniv.edu.in'),
('01IT05', '9488821647', 'GOVINDASAMY V', 'IT', 'ASSOCIATE PROFESSOR', 'vgopu@ptuniv.edu.in'),
('01IT06', '9443790916', 'GEETHA V', 'IT', 'ASSOCIATE PROFESSOR', 'vgeetha@ptuniv.edu.in'),
('01IT07', '9443287682', 'BOOBALAN P', 'IT', 'ASSOCIATE PROFESSOR', 'boobalanp@ptuniv.edu.in'),
('01IT08', '9443291154', 'SHANTHI G', 'IT', 'ASSISTANT PROFESSOR', 'shanthikarthikeyan@ptuniv.edu.in'),
('01IT09', '9443630711', 'ANBARASI M S', 'IT', 'ASSISTANT PROFESSOR', 'anbarasims@ptuniv.edu.in'),
('01IT10', '9789065502', 'MARAGATHAVALLI P', 'IT', 'ASSISTANT PROFESSOR', 'marapriya@ptuniv.edu.in'),
('1', 'vysh', 'Guest faculty1', 'IT', 'Professor', 'vysh@pec.edu'),
('2', 'vikram', 'Guest faculty 2', 'IT', 'Professor', 'vikram@pec.edu');

-- --------------------------------------------------------

--
-- Table structure for table `u_fac_course`
--

CREATE TABLE `u_fac_course` (
  `faculty_id` varchar(10) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `session` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_gpa_cgpa`
--

CREATE TABLE `u_gpa_cgpa` (
  `REGNO` varchar(10) DEFAULT NULL,
  `SEM` float DEFAULT NULL,
  `GPA` float(4,2) DEFAULT NULL,
  `CGPA` float(4,2) DEFAULT NULL,
  `NUM_OF_CREDITS_EARNED` float(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_hm_preregistration`
--

CREATE TABLE `u_hm_preregistration` (
  `REGNO` varchar(10) DEFAULT NULL,
  `OPT1_PRGM_ID` float DEFAULT NULL,
  `OPT2_PRGM_ID` float DEFAULT NULL,
  `OPT3_PRGM_ID` float DEFAULT NULL,
  `CGPA` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_prgm`
--

CREATE TABLE `u_prgm` (
  `PRGM_ID` float(2,0) NOT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `PRGM_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_prgm`
--

INSERT INTO `u_prgm` (`PRGM_ID`, `DEPT_ID`, `PRGM_NAME`) VALUES
(1, 'CE', 'Bachelor of Technology'),
(2, 'ME', 'Bachelor of Technology'),
(3, 'EC', 'Bachelor of Technology'),
(4, 'CS', 'Bachelor of Technology'),
(5, 'EE', 'Bachelor of Technology'),
(6, 'EI', 'Bachelor of Technology'),
(7, 'CH', 'Bachelor of Technology'),
(8, 'IT', 'Bachelor of Technology'),
(9, 'MT', 'Bachelor of Technology'),
(10, 'CE', 'Master of Technology - Structural Engineering'),
(11, 'CE', 'Master of Technology - Environmental Engineering '),
(12, 'ME', 'Master of Technology - Energy Technology'),
(13, 'ME', 'Master of Technology - Production Design and Manufacturing'),
(14, 'EC', 'Master of Technology - Electronics and Communication Engineering '),
(15, 'EC', 'Master of Technology - Wireless Communication'),
(16, 'CS', 'Master of Technology - Data Science'),
(17, 'CS', 'Master of Technology - Information Security'),
(18, 'EE', 'Master of Technology - Electrical Drives and Control'),
(19, 'IT', 'Master of Technology - Internet of Things '),
(20, 'EI', 'Master of Technology - Instrumentation Engineering '),
(21, 'CS', 'Master of Computer Application '),
(22, 'PH', 'Master of Science - Materials Science and Technology'),
(23, 'MB', 'Master of Business Administration - Innovation, Entrepreneurship and Venture Development '),
(24, 'MB', 'Master of Business Administration - International Business ');

-- --------------------------------------------------------

--
-- Table structure for table `u_prgm_comp_course`
--

CREATE TABLE `u_prgm_comp_course` (
  `PRGM_ID` float(2,0) DEFAULT NULL,
  `COURSE_CODE` varchar(10) DEFAULT NULL,
  `SEM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_prgm_comp_course`
--

INSERT INTO `u_prgm_comp_course` (`PRGM_ID`, `COURSE_CODE`, `SEM`) VALUES
(2, 'CY201', 1),
(2, 'CY202', 1),
(2, 'FY201', 1),
(2, 'HS201', 1),
(2, 'MA201', 1),
(2, 'MA202', 2),
(2, 'ME201', 1),
(2, 'PH201', 1),
(2, 'PH202', 1),
(2, 'CE201', 2),
(2, 'CS201', 2),
(2, 'CS202', 2),
(2, 'EE201', 2),
(2, 'EE202', 2),
(2, 'ME202', 2),
(4, 'CY201', 1),
(4, 'CY202', 1),
(4, 'FY201', 1),
(4, 'HS201', 1),
(4, 'MA201', 1),
(4, 'MA202', 2),
(4, 'ME201', 1),
(4, 'PH201', 1),
(4, 'PH202', 1),
(4, 'CE201', 2),
(4, 'CS201', 2),
(4, 'CS202', 2),
(4, 'EE201', 2),
(4, 'EE202', 2),
(4, 'ME202', 2),
(7, 'CY201', 1),
(7, 'CY202', 1),
(7, 'FY201', 1),
(7, 'HS201', 1),
(7, 'MA201', 1),
(7, 'MA202', 2),
(7, 'ME201', 1),
(7, 'PH201', 1),
(7, 'PH202', 1),
(7, 'CE201', 2),
(7, 'CS201', 2),
(7, 'CS202', 2),
(7, 'EE201', 2),
(7, 'EE202', 2),
(7, 'ME202', 2),
(8, 'CY201', 1),
(8, 'CY202', 1),
(8, 'FY201', 1),
(8, 'HS201', 1),
(8, 'MA201', 1),
(8, 'MA202', 2),
(8, 'ME201', 1),
(8, 'PH201', 1),
(8, 'PH202', 1),
(8, 'CE201', 2),
(8, 'CS201', 2),
(8, 'CS202', 2),
(8, 'EE201', 2),
(8, 'EE202', 2),
(8, 'ME202', 2),
(1, 'CY201', 2),
(1, 'CY202', 2),
(1, 'FY201', 1),
(1, 'HS201', 1),
(1, 'MA201', 1),
(1, 'MA202', 2),
(1, 'ME201', 2),
(1, 'PH201', 2),
(1, 'PH202', 2),
(1, 'CE201', 1),
(1, 'CS201', 1),
(1, 'CS202', 1),
(1, 'EE201', 1),
(1, 'EE202', 1),
(1, 'ME202', 1),
(3, 'CY201', 2),
(3, 'CY202', 2),
(3, 'FY201', 1),
(3, 'HS201', 1),
(3, 'MA201', 1),
(3, 'MA202', 2),
(3, 'ME201', 2),
(3, 'PH201', 2),
(3, 'PH202', 2),
(3, 'CE201', 1),
(3, 'CS201', 1),
(3, 'CS202', 1),
(3, 'EE201', 1),
(3, 'EE202', 1),
(3, 'ME202', 1),
(5, 'CY201', 2),
(5, 'CY202', 2),
(5, 'FY201', 1),
(5, 'HS201', 1),
(5, 'MA201', 1),
(5, 'MA202', 2),
(5, 'ME201', 2),
(5, 'PH201', 2),
(5, 'PH202', 2),
(5, 'CE201', 1),
(5, 'CS201', 1),
(5, 'CS202', 1),
(5, 'EE201', 1),
(5, 'EE202', 1),
(5, 'ME202', 1),
(6, 'CY201', 2),
(6, 'CY202', 2),
(6, 'FY201', 1),
(6, 'HS201', 1),
(6, 'MA201', 1),
(6, 'MA202', 2),
(6, 'ME201', 2),
(6, 'PH201', 2),
(6, 'PH202', 2),
(6, 'CE201', 1),
(6, 'CS201', 1),
(6, 'CS202', 1),
(6, 'EE201', 1),
(6, 'EE202', 1),
(6, 'ME202', 1),
(1, 'CE202', 3),
(1, 'CE203', 3),
(1, 'CE204', 3),
(1, 'CE205', 3),
(1, 'CE206', 3),
(1, 'CE207', 3),
(1, 'CE208', 3),
(1, 'SH201', 3),
(7, 'CE233', 3),
(7, 'CH201', 3),
(7, 'CH202', 3),
(7, 'CY203', 3),
(7, 'CY204', 3),
(4, 'CS203', 3),
(4, 'CS204', 3),
(4, 'CS205', 3),
(4, 'CS206', 3),
(4, 'CS207', 3),
(4, 'EC235', 3),
(4, 'EC236', 3),
(3, 'CS234', 3),
(3, 'CS235', 3),
(3, 'EC201', 3),
(3, 'EC202', 3),
(3, 'EC203', 3),
(3, 'EC204', 3),
(3, 'EC205', 3),
(3, 'MA205', 3),
(5, 'EE203', 3),
(5, 'EE204', 3),
(5, 'EE205', 3),
(5, 'EE206', 3),
(5, 'EE207', 3),
(5, 'EE208', 3),
(5, 'EE209', 3),
(6, 'EI201', 3),
(6, 'EI202', 3),
(6, 'EI203', 3),
(6, 'EI204', 3),
(6, 'EI205', 3),
(6, 'EI206', 3),
(6, 'MA204', 3),
(8, 'EC233', 3),
(8, 'IT201', 3),
(8, 'IT202', 3),
(8, 'IT203', 3),
(8, 'IT204', 3),
(8, 'IT205', 3),
(8, 'IT206', 3),
(2, 'MA204', 3),
(2, 'ME203', 3),
(2, 'ME204', 3),
(2, 'ME205', 3),
(2, 'ME206', 3),
(2, 'ME207', 3),
(1, 'CE209', 4),
(1, 'CE210', 4),
(1, 'CE211', 4),
(1, 'CE212', 4),
(1, 'CE213', 4),
(1, 'CE214', 4),
(1, 'EI212', 4),
(1, 'MA203', 4),
(1, 'SH202', 4),
(7, 'CH203', 4),
(7, 'CH204', 4),
(7, 'CH205', 4),
(7, 'CH206', 4),
(7, 'CH207', 4),
(7, 'EC234', 4),
(4, 'CS208', 4),
(4, 'CS209', 4),
(4, 'CS210', 4),
(4, 'CS211', 4),
(4, 'CS212', 4),
(4, 'CS213', 4),
(4, 'CS214', 4),
(4, 'MA206', 4),
(3, 'EC206', 4),
(3, 'EC207', 4),
(3, 'EC208', 4),
(3, 'EC209', 4),
(3, 'EC210', 4),
(3, 'EC211', 4),
(3, 'EC212', 4),
(5, 'CS234', 4),
(5, 'CS235', 4),
(5, 'EE210', 4),
(5, 'EE211', 4),
(5, 'EE212', 4),
(5, 'EE213', 4),
(5, 'EE214', 4),
(6, 'CS234', 4),
(6, 'CS235', 4),
(6, 'EI207', 4),
(6, 'EI208', 4),
(6, 'EI209', 4),
(6, 'EI210', 4),
(6, 'EI211', 4),
(8, 'IT207', 4),
(8, 'IT208', 4),
(8, 'IT209', 4),
(8, 'IT210', 4),
(8, 'IT211', 4),
(8, 'IT212', 4),
(8, 'IT213', 4),
(2, 'EC234', 4),
(2, 'ME208', 4),
(2, 'ME209', 4),
(2, 'ME210', 4),
(2, 'ME211', 4),
(2, 'ME212', 4),
(1, 'CE215', 5),
(1, 'CE216', 5),
(1, 'CE217', 5),
(1, 'CE218', 5),
(1, 'CE219', 5),
(1, 'CE220', 5),
(1, 'EP201', 5),
(7, 'CH208', 5),
(7, 'CH209', 5),
(7, 'CH210', 5),
(7, 'CH211', 5),
(4, 'CS215', 5),
(4, 'CS216', 5),
(4, 'CS217', 5),
(4, 'CS218', 5),
(4, 'CS219', 5),
(3, 'CS236', 5),
(3, 'CS237', 5),
(3, 'EC213', 5),
(3, 'EC214', 5),
(3, 'EC215', 5),
(3, 'EC216', 5),
(5, 'EE215', 5),
(5, 'EE216', 5),
(5, 'EE217', 5),
(5, 'EE218', 5),
(5, 'EE219', 5),
(5, 'EE220', 5),
(5, 'EE221', 5),
(6, 'EI213', 5),
(6, 'EI214', 5),
(6, 'EI215', 5),
(6, 'EI216', 5),
(6, 'EI217', 5),
(6, 'EI218', 5),
(6, 'EP201', 5),
(8, 'IT214', 5),
(8, 'IT215', 5),
(8, 'IT216', 5),
(8, 'IT218', 5),
(8, 'IT219', 5),
(8, 'IT220', 5),
(2, 'ME213', 5),
(2, 'ME214', 5),
(2, 'ME215', 5),
(2, 'ME216', 5),
(1, 'CE221', 6),
(1, 'CE222', 6),
(1, 'CE223', 6),
(1, 'CE224', 6),
(1, 'CE225', 6),
(1, 'CE226', 6),
(1, 'SH203', 6),
(7, 'CH212', 6),
(7, 'CH213', 6),
(7, 'CH214', 6),
(4, 'CS220', 6),
(4, 'CS221', 6),
(4, 'CS222', 6),
(4, 'CS223', 6),
(4, 'CS224', 6),
(3, 'EC217', 6),
(3, 'EC218', 6),
(3, 'EC219', 6),
(3, 'EC220', 6),
(3, 'EC221', 6),
(3, 'EC222', 6),
(5, 'EE222', 6),
(5, 'EE223', 6),
(5, 'EE224', 6),
(5, 'EE225', 6),
(6, 'EI219', 6),
(6, 'EI220', 6),
(6, 'EI221', 6),
(6, 'EI222', 6),
(6, 'EI223', 6),
(6, 'EI224', 6),
(6, 'HS202', 6),
(8, 'IT221', 6),
(8, 'IT222', 6),
(8, 'IT223', 6),
(8, 'IT224', 6),
(8, 'IT225', 6),
(2, 'ME217', 6),
(2, 'ME218', 6),
(2, 'ME219', 6),
(2, 'ME220', 6),
(2, 'ME221', 6),
(1, 'CE227', 7),
(1, 'CE228', 7),
(1, 'CE229', 7),
(1, 'HS202', 7),
(7, 'CH215', 7),
(7, 'CH216', 7),
(7, 'CH217', 7),
(7, 'CH218', 7),
(7, 'CH219', 7),
(7, 'CH220', 7),
(7, 'CH221', 7),
(4, 'CS225', 7),
(4, 'CS226', 7),
(4, 'CS227', 7),
(4, 'CS228', 7),
(4, 'CS229', 7),
(4, 'CS230', 7),
(3, 'EC223', 7),
(3, 'EC224', 7),
(3, 'EC225', 7),
(3, 'EC226', 7),
(3, 'EC227', 7),
(3, 'EC228', 7),
(3, 'EC229', 7),
(5, 'EE226', 7),
(5, 'EE227', 7),
(5, 'EE228', 7),
(5, 'EE229', 7),
(5, 'EE230', 7),
(5, 'EE231', 7),
(6, 'EI225', 7),
(6, 'EI226', 7),
(6, 'EI227', 7),
(6, 'EI228', 7),
(6, 'EI229', 7),
(6, 'EI230', 7),
(8, 'IT226', 7),
(8, 'IT227', 7),
(8, 'IT228', 7),
(8, 'IT229', 7),
(8, 'IT230', 7),
(2, 'ME222', 7),
(2, 'ME223', 7),
(2, 'ME224', 7),
(2, 'ME225', 7),
(1, 'CE230', 8),
(1, 'CE231', 8),
(1, 'CE232', 8),
(7, 'CH222', 8),
(7, 'CH223', 8),
(7, 'CH224', 8),
(4, 'CS231', 8),
(4, 'CS232', 8),
(4, 'CS233', 8),
(3, 'EC230', 8),
(3, 'EC231', 8),
(3, 'EC232', 8),
(5, 'EE232', 8),
(5, 'EE233', 8),
(5, 'EE234', 8),
(6, 'EI231', 8),
(6, 'EI232', 8),
(6, 'EI233', 8),
(8, 'IT231', 8),
(8, 'IT232', 8),
(8, 'IT233', 8),
(2, 'ME226', 8),
(2, 'ME227', 8),
(2, 'ME228', 8);

-- --------------------------------------------------------

--
-- Table structure for table `u_prgm_elective_course`
--

CREATE TABLE `u_prgm_elective_course` (
  `PRGM_ID` float(2,0) DEFAULT NULL,
  `COURSE_CODE` varchar(10) DEFAULT NULL,
  `SEM` int(11) DEFAULT NULL,
  `NO_OF_STUDENTS_ENROLLED` float DEFAULT NULL,
  `CAPACITY` int(11) DEFAULT NULL,
  `SESSION` varchar(5) NOT NULL,
  `FACULTY_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_prgm_elective_course`
--

INSERT INTO `u_prgm_elective_course` (`PRGM_ID`, `COURSE_CODE`, `SEM`, `NO_OF_STUDENTS_ENROLLED`, `CAPACITY`, `SESSION`, `FACULTY_ID`) VALUES
(1, 'ITO01', 5, 0, 40, '20B', '1'),
(2, 'ITO02', 5, 0, 40, '20B', '2');

-- --------------------------------------------------------

--
-- Table structure for table `u_student`
--

CREATE TABLE `u_student` (
  `REGNO` varchar(10) NOT NULL,
  `SNAME` varchar(100) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `DOB` varchar(15) DEFAULT NULL,
  `YOJ` float(4,0) DEFAULT NULL,
  `CREDITS_EARNED` float(5,2) DEFAULT NULL,
  `PRGM_ID` float(2,0) DEFAULT NULL,
  `CURR_SEM` int(11) DEFAULT NULL,
  `HISTORY_OF_ARREAR` int(11) DEFAULT NULL CHECK (`HISTORY_OF_ARREAR` in (0,1)),
  `BACKLOGS` int(11) DEFAULT NULL CHECK (`BACKLOGS` in (0,1)),
  `EMAIL` varchar(100) DEFAULT NULL,
  `ACTIVE` float DEFAULT NULL,
  `abc_id` varchar(12) DEFAULT NULL,
  `appn_num` varchar(50) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `personal_email` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address_line1` varchar(200) DEFAULT NULL,
  `address_line2` varchar(200) DEFAULT NULL,
  `address_city` varchar(200) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `centac_or_josaa` char(1) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `community` varchar(30) DEFAULT NULL,
  `entry_mode` char(1) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_student`
--

INSERT INTO `u_student` (`REGNO`, `SNAME`, `GENDER`, `DOB`, `YOJ`, `CREDITS_EARNED`, `PRGM_ID`, `CURR_SEM`, `HISTORY_OF_ARREAR`, `BACKLOGS`, `EMAIL`, `ACTIVE`, `abc_id`, `appn_num`, `father_name`, `mother_name`, `personal_email`, `phone`, `address_line1`, `address_line2`, `address_city`, `address_state`, `centac_or_josaa`, `nationality`, `community`, `entry_mode`, `otp`) VALUES
('16EC159', 'LENIN WAHENGBAM', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16EE103', 'AKASH M', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16EI110', 'GIRIDHHARAN I', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17CE206', 'V KRISHNA PRIYA MARY', 'F', '24-02-1999', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17EC113', 'ENUGU ROHITH', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17EE218', 'YUVARANIROSE.F', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17EI103', 'ANANDH J', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17EI154', 'VEERA VENKATA DURGAMA NAIDU B', 'M', '23-04-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17ME151', 'SKARMA THUPSTAN', 'M', '12-05-1998', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1001', 'ABISHEK P', 'M', '02-03-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1002', 'ADFAR MAQBOOL', 'M', '05-04-2000', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1003', 'ANUKEERTHANA S', 'F', '23-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1004', 'ARAVIND D', 'M', '25-09-2000', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '975866717579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1005', 'ARAVIND R', 'M', '17-07-2001', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1006', 'ARSALAN YAQOOB ', 'M', '07-04-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1008', 'BERMIN BINI', 'M', '23-05-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1009', 'DEVAR S', 'M', '03-01-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1010', 'DIVIYA N', 'F', '22-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1011', 'DIVYA.R', 'F', '23-09-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1012', 'DIVYABHARATHY S', 'F', '25-06-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1013', 'ELAKKIYA S', 'F', '06-09-1999', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1014', 'GANESH M', 'M', '29-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1015', 'M.GOKUL PRAKASH ', 'M', '03-08-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1016', 'GUNALAN K', 'M', '22-04-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1018', 'HARIHARAN R', 'M', '18-11-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1019', 'C. HARISH', 'M', '02-04-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1020', 'HEERA B', 'F', '14-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1021', 'IHTHISHAM PK', 'M', '29-09-1999', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1022', 'JAGADEESH A', 'M', '11-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1023', 'KARTHIK S', 'M', '14-02-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1024', 'KEERTHI KAMIDI ', 'F', '21-11-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1025', 'KEERTHIVASAN RO', 'M', '17-08-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1026', 'KIRUBAKARAN K', 'M', '31-03-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1027', 'KISHORE S', 'M', '01-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1028', 'MADHU MITHAA S', 'F', '22-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1029', 'VINYL CHANDRA SEKHAR MANGA', 'M', '03-03-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1030', 'MANIKANDAN R', 'M', '13-05-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1031', 'MARUTHACHALAMURTHY R ', 'M', '23-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1032', 'MATTAPARTHI PHANENDRA  KUMAR', 'M', '25-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1033', 'MIRUNALI PHILO JENSIA', 'F', '14-01-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1034', 'MOHAMED ABDUL BASITH ALI SHAIK', 'M', '23-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1035', 'MOHAMED HILAAL MS', 'M', '18-09-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1037', 'NIRMAL RAJ T', 'M', '16-02-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1038', 'PATHMAPRIYA P', 'F', '25-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1039', 'PENNAMREDDY DASARADHA RAM REDDY ', 'M', '17-08-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1040', 'PIUS ANTONY DAVIS A', 'M', '30-04-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1041', 'POOVARASAN.G', 'M', '01-06-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1043', 'PRAKASHRAJ M', 'M', '08-03-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1044', 'PRASANNA C', 'M', '26-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1045', 'PRAVEENA S', 'F', '04-10-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1046', 'RAHUL A P', 'M', '04-06-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1047', 'RANJITH M', 'M', '20-12-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1048', 'RANJITHA A', 'F', '20-01-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1049', 'RIGZIN ANGMO', 'F', '23-03-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1050', 'SADHIKA S', 'F', '14-02-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1051', 'SANKARA PANDIAN S', 'M', '29-11-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1052', 'SATHIYA M', 'M', '08-08-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1053', 'SENTHILVEL S', 'M', '17-05-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1054', 'SETHUMADAVAN K', 'M', '17-08-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1055', 'SHARAN P', 'M', '21-04-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1057', 'SUNITHA I', 'F', '13-07-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1058', 'TECHI OPIR', 'F', '30-01-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1059', 'THIRUNAVUKARASU T', 'M', '13-06-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1060', 'THIRUVENDHAN S', 'F', '17-05-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1061', 'UMASHANKAR A', 'M', '25-06-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1062', 'UDHAYAKUMAR M', 'M', '26-09-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1063', 'UMAR HUSSAIN WANI ', 'M', '12-02-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1064', 'VIGNESHWARY G', 'F', '07-01-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1065', 'VISHVA S', 'M', '20-09-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1066', 'VITHIYA.M', 'F', '20-06-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE1067', 'VANISHREE.A', 'F', '03-02-2001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2001', 'AMEERUDEEN M', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2002', 'ARUNPANDIYAN R', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2003', 'HARIHARAN V', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2004', 'JOE CHRISTOPHER G', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2005', 'KARTHIK M', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2006', 'MOHAMED BELAL HN', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2007', 'SUDHARSANAN K', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2008', 'THAMIZHSELVAM R', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2009', 'THAMIZHYAZHAGILA JULE', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2011', 'JOEL DANIEL BENARD A', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CE2012', 'RIZWAN AHAMED M', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1001', 'AJEETH KUMAR V', 'M', '19-05-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1002', 'AKKASH M ', 'M', '24-01-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1004', 'ARAVINDH K', '', '', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1005', 'ARAVINDRAJ M', 'M', '23-07-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1006', 'ARVIND R', 'M', '03-11-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1007', 'AVANTHIKA I', 'F', '28-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1008', 'BHUVANA I', 'F', '01-09-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1009', 'BRITTO P B ', 'M', '17-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1010', 'BUVANESWARAN V', '', '', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1011', 'CHANDRU E ', 'M', '21-04-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1012', 'D DHAARANI', 'F', '20-04-2000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1013', 'DINESH S', 'M', '24-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1014', 'G MAHESH', 'M', '04-08-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1015', 'GAYATHIRI S', 'F', '22-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1016', 'GOKUL SHANKAR K ', 'M', '16-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1017', 'GOWTHAM S', 'M', '10-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1018', 'HARITHAA S', 'F', '29-04-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1019', 'HEMAVATHY B', 'F', '15-06-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1020', 'INEYAVENDHAN S S', 'M', '15-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1021', 'KARANODAYAN ', 'M', '11-09-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1022', 'KIRUBAKARAN', '', '', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1023', 'M. LOKESHWARI', 'F', '14-10-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1024', 'MALAVIKA.T', 'F', '12-10-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1025', 'MOHAMED ALI M', 'M', '11-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1026', 'MOHAMED SHAHUL HAMEED J H', 'M', '10-09-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1027', 'MOHAMED FAIZEL N', 'M', '29-07-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1028', 'MUGILAN M ', 'M', '22-08-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1030', 'NAVEEN C', 'M', '09-05-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1031', 'NITHESH.K', 'M', '26-08-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1032', 'PAVITHRA R', 'F', '25-12-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1033', 'V.PRITHIVIRAJ', 'M', '04-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1034', 'PRIYADHARSHINI A', 'F', '01-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1035', 'RAHUL M.S', 'M', '03-09-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1036', 'RAJ KARTHIK S ', 'M', '16-08-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1037', 'RAJESHKANNA R', 'M', '11-02-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1038', 'RAJKUMAR P', 'M', '02-06-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1039', 'REEGAN L', 'M', '12-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1040', 'REKADI PUSHPALATHA', '', '', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1041', 'D SANTHAKUMAR ', 'M', '13-10-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1042', 'SARAVANAN.K', 'M', '26-03-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1043', 'SHALINI MEDONA R', 'F', '01-08-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1044', 'SHAMILLI R', 'F', '15-09-2021', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1045', 'S B SHAMPRASATH', 'M', '29-06-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1046', 'SIVA V', 'M', '07-12-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1047', 'SIVAGNANAM S', 'M', '25-05-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1048', 'SUNEET D', 'M', '10-11-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1049', 'SURESH S', 'M', '22-06-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1050', 'SUVETHA V', 'F', '11-04-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1051', 'SWETHA P', 'F', '14-04-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1052', 'TENILKUMAR P', 'M', '22-07-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1053', 'THIRUMALAIVASAN', 'M', '24-12-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1054', 'UDHAYAKUMAR.B', 'M', '04-12-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1055', 'VENKATESH T', 'M', '09-09-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1056', 'VETRISELVAN V ', 'M', '17-10-2000', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1057', 'VIDHYA LAKSHMI. A', 'F', '29-07-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1058', 'E.VIGNODHAR', 'M', '28-08-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH1059', 'VITHIYA M', 'F', '20-06-2001', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CH2001', 'IMANUVEL A', '', '', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1001', 'ABHINAND PREMAN', 'M', '07-08-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1003', 'AKULA SHESHU VARMA ', 'M', '26-08-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1004', 'AMBAVARAPU VENKATA TARUN KUMAR ', 'M', '15-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1005', 'AMRIN SULTANA M', 'F', '10-05-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1006', 'ANDELA SHREYA', 'F', '28-09-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1007', 'ANNIE JOSEPH', 'F', '16-05-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1008', 'ASWINI S', 'F', '17-11-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1009', 'AYUSH SINGH', 'M', '06-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1010', 'BAVANI T', 'F', '11-11-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1011', 'BELODU SRICHARAN', 'M', '03-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1012', 'CHERAU JAIN S', 'M', '30-01-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1013', 'DANYA S', 'F', '20-02-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1014', 'DATLA LAKSHMI HARSHA', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1015', 'V DEEKSHITHA ', 'F', '14-09-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1016', 'DEEPAK KUMAR M', 'M', '29-07-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1017', 'DEVARAKONDA RAJKUMAR ', 'M', '23-10-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1018', 'DEVISRI V', 'F', '04-06-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1019', 'DHINESH M', 'M', '14-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1020', 'DIVYA V', 'F', '03-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1021', 'G VISHNU SAI JASWANTH', 'M', '03-08-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1022', 'GATTAMANENI PREETHAM SAI', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1023', 'GOKUL S', 'M', '09-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1024', 'GRAHEETH G', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1025', 'HARIDHAA J', 'F', '08-07-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1026', 'HEMA P', 'F', '29-06-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1027', 'ILAMATHI V', 'F', '17-02-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1028', 'JOTHIKA S', 'F', '14-05-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1029', 'JAYAPRAKHASH V', 'M', '20-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1030', 'JEEVESH.SIVA', 'M', '13-08-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1031', 'KAMALESH B', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1032', 'KANIGIRI PAVAN CHAKRI', 'M', '09-09-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1033', 'KARTHIK R', 'M', '31-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1034', 'KARTHIKEYAN R.P', 'M', '03-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1035', 'KEERTHANA. B', 'F', '26-08-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1036', 'KONENI SRUJANA', 'F', '17-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1037', 'RAHUL KOPPALA ', 'M', '31-12-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1038', 'KOPPANATI BHAIRAVA SWAMI ', 'M', '10-03-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1039', 'KUDUPUDI SURESH ', 'M', '11-11-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1040', 'LOGESHWARAN B', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1041', 'MADHAN G', 'M', '08-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1042', 'MADHUMITA M', 'F', '01-08-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1043', 'MANISH KUMAR', 'M', '06-07-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1044', 'M.MANJUPRIYA', 'F', '05-07-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1045', 'M. MARTHI SHARAN', 'M', '05-05-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1046', 'MOHAMED AMEEN M', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1047', 'MUFID KAMAL ', 'M', '16-04-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1048', 'NAGA VEERA VENKATA DURGA MAGAPU', 'F', '20-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1050', 'NANDITA.V', 'F', '15-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1051', 'PALANATI VENKATA ABHIRAM', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1052', 'PALLAMREDDY BALADITYAREDDY', 'M', '01-11-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1053', 'PALUKURI SAI KRISHNA', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1054', 'PAVITHRAN V', 'M', '18-12-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1055', 'PONN MOUNICA T', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1056', 'PONN SIVA SHANKAR', 'M', '30-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1057', 'PRAGADEESHVARAN S', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1058', 'PRATHEEP P', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1059', 'PRAVEENKUMAR S', 'M', '04-07-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1060', 'PRAYEKSHA M', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1061', 'PREETHI S', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1062', 'PREETI H', 'F', '02-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1063', 'PRIYADARSHINI R', 'F', '03-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1064', 'QAZI FARMAAN ARIF ', 'M', '05-04-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1065', 'R VENKAT POORNA ADITHYA', 'M', '07-07-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1066', 'RAGUL NANDAN K', 'M', '28-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1067', 'RAJKUMARI KIRAN', 'F', '04-12-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1068', 'RAJMOHAN P', 'M', '03-01-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1069', 'RAMISETTY SAI VIMALA ', 'F', '03-02-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1070', 'REEGAN J', 'M', '13-10-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1071', 'S.J.PRANAV AKELLA', 'M', '13-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1072', 'SAI THUSHARA CHOWDARY C', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1073', 'SAVIETHA M', 'F', '30-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1074', 'SENTHIL KUMAR.A', 'M', '13-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1075', 'SHANMUGAPRIYA M', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1076', 'SHEREEN ANTHONY', 'F', '30-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1077', 'SOULTAN MARICAR MOHAMED IBRAHIM S', 'M', '25-10-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1078', 'M.SOWMIYA', 'F', '09-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1080', 'SUDISHKHA A', 'F', '19-04-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1081', 'SUNIL ARAVIND P', 'M', '28-02-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1082', 'SUSHANTH S', 'M', '17-07-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1083', 'SUSHMITHA A', 'F', '13-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1084', 'SUTHERSANAM M', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1085', 'SWETHA S', 'F', '01-07-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1086', 'TANUSSHRI R', 'F', '09-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1087', 'THANGADARSHINI M', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1088', 'THEERAN S ', 'M', '12-10-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1089', 'ULAGANATHAN K', 'M', '25-09-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1090', 'V NANDITHA ', 'F', '02-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1091', 'VARSHA R', 'F', '26-04-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1092', 'M.G.VARSHNI', 'F', '30-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1093', 'VASANTH R', 'M', '29-06-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1094', 'VEENA V', 'F', '01-06-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1095', 'VIDHYAASHRI S', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1096', 'VIGNESHVARAN A', 'M', '03-02-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1097', 'YAMINI P', 'F', '06-06-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1098', 'T. YAMINI', 'F', '30-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1099', 'YELICHERLA BHARGAV REDDY ', 'M', '05-10-2000', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS1100', 'YOGESHWARAN.P', 'M', '14-04-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS2003', 'GALI SHARON', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS2004', 'NITHYA E', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS2005', 'RATHAAMANI V', '', '', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18CS2006', 'MUGUNDHAN K', 'M', '26-08-1999', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1001', 'AASREETH VENU ', 'M', '08-06-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1002', 'ABHISHEK MISHRA', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1003', 'AJAY GAUTHAM C', 'M', '21-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1004', 'AKASH', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1005', 'AKASH S', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1006', 'ANGELINA NIRMALA A', 'F', '03-07-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1007', 'ARAMBAM PAREL LUWANG ', 'M', '17-10-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1008', 'ARVIND G', 'M', '11-08-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1009', 'ASHIKA BEGAM A S', 'F', '01-01-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1010', 'B SANKKARA NARAYANAN', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1011', 'BARATH S', 'M', '18-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1012', 'BARRATH S', 'M', '08-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1013', 'BHARATHI S', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1014', 'BIVASHIS BHATTACHARJE', 'M', '09-12-1999', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1015', 'CHEKKA SRIJA', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1016', 'CHIKKALA GOWTHAM VISWAS', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1017', 'D.DEEPAHPRIYA', 'F', '25-08-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1018', 'DHARANIDHARAN S', 'M', '16-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1019', 'DHEEPAK G', 'M', '24-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1020', 'DINESH R', 'M', '01-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1021', 'DIVAGAR A', 'M', '01-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1022', 'J.DIVIYA MARTY', 'F', '01-07-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1023', 'FAYYAAZ M', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1024', 'GAYATHRI S', 'F', '18-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1025', 'GIRISH. S', 'M', '25-05-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1026', 'GOWTHAM KANNA M', 'M', '03-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1027', 'GOWTHAMAAN P', 'M', '27-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1028', 'HARESH SHANKER K', 'M', '01-04-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1029', 'HARIGARAN B', 'M', '16-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1030', 'HARIHARAN V', 'M', '23-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1031', 'HARISHKUMAR.K', 'M', '08-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1032', 'HARSHNI C', 'F', '02-04-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1033', 'HEMACHANDRA.R', 'F', '20-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `u_student` (`REGNO`, `SNAME`, `GENDER`, `DOB`, `YOJ`, `CREDITS_EARNED`, `PRGM_ID`, `CURR_SEM`, `HISTORY_OF_ARREAR`, `BACKLOGS`, `EMAIL`, `ACTIVE`, `abc_id`, `appn_num`, `father_name`, `mother_name`, `personal_email`, `phone`, `address_line1`, `address_line2`, `address_city`, `address_state`, `centac_or_josaa`, `nationality`, `community`, `entry_mode`, `otp`) VALUES
('18EC1034', 'HIRANDEV S', 'M', '30-04-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1035', 'U.JAYASREE ', 'F', '13-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1036', 'KAMALI G', 'F', '27-05-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1037', 'KAMIREDDY SATYA SAI', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1038', 'KANAGANURU YASWANTH', 'M', '13-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1039', 'KARRI SIVA SAI RAMA KRISHNA', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1040', 'K.KISHAN', 'M', '15-07-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1041', 'KONETI NAGA DINESH REDDY', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1042', 'A KRITHI', 'F', '31-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1043', 'LOGESHWARAN R', 'M', '05-01-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1044', 'LOGESWARI S', 'F', '15-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1045', 'LOKESHWAR S', 'M', '18-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1046', 'MADDALA MANU VISHNU SRI SIVA PAVAN KUMAR ', 'M', '29-08-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1047', 'MADHUMITHA SANYAL', 'F', '27-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1049', 'MARAMREDDY VIJAY SHEKAR REDDY', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1050', 'MEENATCHI E ', 'F', '11-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1051', 'MUKESH K', 'M', '09-12-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1052', 'MUTHAMMAL    M', 'F', '11-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1053', 'NULU PAVAN KUMAR ', 'M', '14-04-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1054', 'K PAVITHRA', 'F', '26-12-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1055', 'PRAVEEN S', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1056', 'PREETHIKA', 'F', '04-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1057', 'RAJAVARSHINI. A', 'F', '10-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1058', 'RISHVANTH I', 'M', '23-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1059', 'RIVAANA A', 'F', '16-04-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1060', 'ROKHINI V', 'F', '30-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1061', 'M.SAGITHYAN ', 'M', '05-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1062', 'M. SAI SASIKANTH', 'M', '16-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1063', 'SAILESH M', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1064', 'SAMUNDEESWARI K ', 'F', '27-01-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1065', 'SANJAY C', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1066', 'SARUVATHANI S', 'F', '09-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1067', 'SHALINI VISWANATH S', 'F', '29-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1068', 'SHREYAN NEOGI', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1069', 'SHRI ALAAMEL SAKTHI A ', 'F', '03-04-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1070', 'SHRI BADRI NARRAIN S', 'M', '07-07-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1071', 'SHRIRAM.G', 'M', '10-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1072', 'V. SINDUJA', 'F', '29-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1073', 'M. SIVAPRIYA', 'F', '20-10-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1074', 'SREE MATHY S', 'F', '15-11-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1076', 'SUBHASREE B', 'F', '12-08-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1077', 'SUBITHRA S', 'F', '24-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1078', 'K. SUDHARSAN BABU', 'M', '30-12-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1079', 'SUNKARA PAVANI PRATHYUSHA ', 'F', '11-12-1999', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1081', 'B.VAISHANAVADEVI', 'F', '22-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1082', 'C.VAITHISHWARAN', 'M', '19-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1083', 'VENKATESH P', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1084', 'VIJAYAKUMAR M', 'M', '16-02-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1085', 'A VIJAYAVENGADAM', 'M', '04-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1086', 'VISHVAKUMAR J', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1087', 'VISHWA @ SANTHOSH S', 'M', '22-06-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1088', 'YUVAN RAAJU', 'M', '11-05-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC1089', 'YUVARAJA G ', 'M', '09-01-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2001', 'DANANJEYAN J', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2002', 'IRSHATH AHMED A', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2003', 'MOHAMED RIZWAN H', 'M', '10-03-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2004', 'PRITHIVIRAJ T', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2005', 'V SHARMMILADEVI ', 'F', '01-09-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EC2006', 'PABBINEEDI KISHORE KUMAR P', '', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1001', 'ADAVAN S', 'M', '21-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1002', 'ADHISH K', 'M', '19-06-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1003', 'AJAY ANAND C', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1004', 'AJAY S', 'M', '21-08-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1005', 'BARANICHANDRAN A', 'M', '10-02-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1006', 'BHUVANESHWARAN R', 'M', '28-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1007', ' G BRASANNA', 'M', '18-02-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1008', 'BUVANESWARAN S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1009', 'CHANDRAMOWLI S', 'M', '08-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1010', 'DAVID A', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1011', 'DEEPAN U', 'M', '14-03-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1012', 'DHANDAPANI J ', 'M', '30-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1013', 'DHINESH S', 'M', '03-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1014', 'S DILIPKUMAR', 'M', '11-10-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1015', 'E ROHITH', 'M', '17-01-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1016', 'V EZRA JEBA KUMAR ', 'M', '29-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1017', 'A . FIROSE HUSSAIN ', 'M', '14-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1018', 'GEDDAM UDAY KIRAN ', 'M', '29-10-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1019', 'GOVINTHAN E', 'M', '16-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1020', 'GUNA BHAGATH', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1021', 'HARIHARASUDHAN M', 'M', '22-04-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1022', 'HARIHARAVIJAI. T', 'M', '15-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1023', 'HONEST RAJ', 'M', '15-06-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1024', 'ILAMARAN A', 'M', '31-07-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1025', 'M. IYAPPA GANESH @ MURUGAN', 'M', '02-05-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1026', 'JAGAN V', 'M', '03-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1027', 'JISHNU JITHESH', 'M', '12-12-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1028', 'KRISHNAVARDHAN S', 'M', '30-12-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1029', 'LOGAVANAN A K V', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1031', 'MANIBALAN. A', 'M', '29-01-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1032', 'MOHAMMED SHAROOQ', 'M', '16-07-2001', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1033', 'MOHANAPRIYA V', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1034', 'NARAYANASAMY @ VIKNESH S', 'M', '10-04-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1035', 'NAVEENKUMAR M', 'M', '22-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1036', 'PARANDHAMAN M', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1037', 'PRAVEENKUMAR S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1038', 'PRAVIN RAJ R', 'M', '06-03-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1039', 'PUGAZH P', 'M', '29-12-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1040', 'PUGAZHENDHI S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1041', 'V PUNITHALAKSHMI', 'F', '05-07-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1042', 'RAGUL L', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1043', 'I.RAJAKUMAR', 'M', '02-05-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1044', 'RAJANISHA. P', 'F', '12-07-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1045', 'RANJITH R', 'M', '10-03-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1047', 'REDDYVARI PUNEETH RAJ ', 'M', '11-06-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1048', 'RENUGA R', 'F', '30-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1049', 'SAKTHIVEL M', 'M', '22-02-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1050', 'SANJAY A', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1051', 'SEERLA PAVAN KUMAR ', 'M', '23-05-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1052', 'SHAMEERULLAH BECK S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1053', 'THAMIZHSELVAN T', 'M', '10-02-2001', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1054', 'THEEPAK S', 'M', '07-11-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1055', 'VENKATESH S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1056', 'VIJAY  K', 'M', '09-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1057', 'VIJAYALAKSHMI V', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1058', 'VINITHRAM R', 'M', '12-08-1999', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1059', 'YADEENDHIRAN S', 'M', '30-10-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE1060', 'YOGAPRASAD.B.L', 'M', '07-09-2000', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2002', 'JAVEED AHMAD S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2004', 'RAVIKUMAR B', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2005', 'VENKATESH S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2006', 'VIMALRAJ E', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2007', 'VIMALRAJY S', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EE2008', 'HEMAVATHI V', '', '', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1001', 'S.ABHIMANYU', 'M', '15-07-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1002', 'ARIVAZHAGI.N', 'F', '14-03-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1003', 'ASWANTH T P', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1004', 'BALAMANIKANDAN C', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1005', 'BOOPATHY ', 'M', '18-03-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1006', 'S.DEEBA ROOBINI', 'F', '22-12-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1007', 'DEEPAN T', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1008', 'DHANUSH D S', 'M', '07-12-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1009', 'DHIVYAJOTHY S', 'F', '07-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1010', 'DIVYA R', 'F', '25-02-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1011', 'FAADIL BATCHA K', 'M', '04-11-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1012', 'GANESH BABU. M', 'M', '30-12-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1013', 'GEETHA A', 'F', '15-05-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1014', 'GOWTHAM S', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1015', 'HARINI.M', 'F', '12-05-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1016', 'HEMACHANDREN M', 'M', '03-04-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1017', 'JAYAMURTHI M', 'M', '26-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1018', 'KAVIVARMAN A', 'M', '22-09-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1019', 'KAVIYA.K', 'F', '24-05-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1020', 'KIRUPA EBINEZER C', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1021', 'KIRUTHIKA M', 'F', '10-09-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1022', 'KRITHIK I', 'M', '15-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1023', 'S.LOGESHWARI', 'F', '11-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1024', 'MANISHA P', 'F', '04-04-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1025', 'MOGESH.G', 'M', '24-07-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1026', 'MOHAMED RIYAS', 'M', '11-01-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1027', 'MONCHER LUCIEN D', 'M', '22-03-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1028', 'NIDHYA KALYAN M', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1029', 'NIDHI UDHAYAN I', 'M', '29-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1030', 'NISHANTHI C', 'F', '23-12-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1031', 'NIVIAN HARSHA B', 'M', '02-07-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1032', 'PARTHIBAN T', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1033', 'POOJA P', 'F', '21-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1034', 'PRADHIPKUMAR', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1035', 'PRATHAP M', 'M', '28-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1036', 'PRITHIVIRAM D', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1037', 'PUVIYARASAN S', 'M', '16-12-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1038', 'RAJA VIJAYAKARAN P', 'M', '29-09-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1039', 'B.RAJAGURU', 'M', '21-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1040', 'RAJEEV R', 'M', '27-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1043', 'RATHINA KUMARASAMI', 'M', '29-09-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1044', 'RICKY RENALD L', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1045', 'SABITHA J', 'F', '22-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1046', 'SAKTHI KUMAR S', 'M', '25-03-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1048', 'SANJAY M', 'M', '03-01-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1049', 'SANTHOSH A', 'M', '08-11-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1050', 'SATHANA. V', 'F', '20-08-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1051', 'SHRAN S', 'M', '27-04-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1052', 'SOORYA PRAKASH T', 'M', '04-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1053', 'SRIRAM N', 'M', '07-04-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1054', 'SRISAKTHI S', 'F', '09-08-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1055', 'SUGAVANESAN S', 'M', '30-05-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1056', 'SURYASREE C', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1057', 'THIRUKKUMARAN T', 'M', '25-06-2001', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1059', 'VIGNESH G', 'M', '31-08-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI1060', 'YAMUNADEVI. R', 'F', '03-10-2000', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI2001', 'PUGAZHENDI S', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI2003', 'SHENBAGAPANDIAN S', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18EI2004', 'VISHNU G', '', '', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1001', 'ABISHEK JOSHUA M', 'M', '07-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1002', 'AKSHARAA.S', 'F', '13-02-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1003', 'ANN SANDRA J', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1004', 'ARUN I', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1005', 'ASHOK', 'M', '02-07-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1006', 'ASHUVIN N', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1007', 'BANDANA RAJI', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1009', 'DEVIKA SURESH', 'F', '08-04-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1010', 'DHANASHREE J', 'F', '29-10-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1011', 'DIVYA DARSHINI', 'F', '21-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1012', 'ELLEN DANIEL', 'F', '18-10-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1013', 'FATHIMATHUL FIDA P.M', 'F', '14-11-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1014', 'HARIHARAN R', 'M', '14-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1015', 'HARINI M', 'F', '10-05-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1016', 'HARINI S', 'F', '30-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1017', 'KAMALEESWARI B', 'F', '20-04-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1018', 'KAMALI K', 'F', '12-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1019', 'KATIKALA SRI PAVAN', 'M', '22-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1020', 'KAVIYARASI.M', 'F', '02-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1021', 'KIRUTHIKA T', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1022', 'KOWSALYA . R', 'F', '30-03-2001', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1023', 'KRISHNA KUMAR S', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1024', 'M LOGAPRASANNA', 'M', '07-04-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1025', 'MADHUMITA. S', 'F', '29-05-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1026', 'MAHALAXMI G', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1027', 'MANIGANDAN G', 'M', '24-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1028', 'MEIYAZHAGAN@VIKNESH', 'M', '18-08-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1029', 'MOHAN C', 'M', '28-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1030', 'MONICA EMMANUEL ', 'F', '27-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1031', 'NANDHINI M', 'F', '29-10-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1032', 'NARMITHA V', 'F', '20-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1033', 'NAVANEETHA KRISHNAN P ', 'M', '05-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1034', 'NAVEEN BHARATH', 'M', '15-08-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1035', 'NILADHURI SESHA SAI PRASANNA KRISHNA ', 'M', '25-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1036', 'NIVEDHA C', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1037', 'NIVEDHA V', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1038', 'NIVEDHITHA', 'F', '01-05-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1039', 'OSHIN MARGRATTE A', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1040', 'PRIYADHARSHINI.E', 'F', '10-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1041', 'RAJ ARVIND S', 'M', '30-06-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1042', 'SAMYUGTHA E', 'F', '16-09-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1043', 'SANAMREDDY SAI VENKATA REDDY', 'M', '13-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1044', 'SANJIVY', 'M', '13-07-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1045', 'SASIDHAR K', 'M', '14-07-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1046', 'SATHISH S', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1047', 'SHAKETHRAM.K', 'M', '19-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1048', 'SNEAGA D', 'F', '03-01-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1049', 'SRIRAM M ', 'M', '03-09-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1050', 'SUSHMA T', 'F', '04-07-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1051', 'SWATHI RAJ.A.B', 'F', '19-04-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1052', 'SWETHA R', 'F', '07-02-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1053', 'THAMIZHARASAN G', 'M', '21-12-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1054', 'VAGICHARLA SREE KRISHNA SATYA SAI GANESH ', 'M', '01-08-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1055', 'VIGNESH A', 'M', '31-10-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1056', 'VIGNESH K', 'M', '24-05-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1057', 'YADHAVAPRASANNA.G', 'M', '16-03-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1058', 'YASWANT B ', 'M', '04-01-2000', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT1059', 'YUVACHANDIRAN R', 'M', '10-05-2001', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT2001', 'HARIPRASATH E', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT2002', 'HEMAPRABHU V', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18IT2003', 'DURGA PRASAD SIRINGULA', '', '', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1001', 'ABDULLAH FAYIZ M', 'M', '18-05-1999', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1002', 'ABISHEK B', 'M', '06-01-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1003', 'ACHALESH T K', 'M', '04-11-1999', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1004', 'AJAY ARAVIND S', 'M', '25-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1005', 'AKSHAY C', 'M', '30-09-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1006', 'ARITRO DAM ', 'M', '24-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1007', 'ARUNKUMAR S', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1008', 'ARUN J', 'M', '27-01-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1009', 'AUROMIR SAHA', 'M', '28-06-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1010', 'AZARUDDIN M', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1012', 'BHUVANESWVAR V', 'M', '19-12-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1013', 'CHANDRESH S', 'M', '15-09-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1014', 'CHANDRU U', 'M', '08-09-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1015', 'CHODI DURGA PRASAD', 'M', '27-11-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1016', 'DEPAK S', 'M', '24-06-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1017', 'DHARAVATH ANIL KUMAR ', 'M', '16-07-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1018', 'DHILEBAN SHIVAHARI. T', 'M', '28-08-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1019', 'DHINESH S', 'M', '20-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1020', 'DHUVARAKESH P', 'M', '02-07-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1021', 'ELANGO K', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1022', 'GOKUL C', 'M', '16-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1023', 'GOKULKUMAR S', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1024', 'HANGZALIAN SIMTE', 'M', '03-01-1999', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1025', 'HARIHARAN S', 'M', '27-02-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1026', 'HARIHARAN.S', 'M', '02-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1027', 'HARRISH. D', 'M', '20-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1028', 'HEEMA MAHESHWARAN K', 'M', '27-08-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1029', 'HEMACHANDRAN T', 'M', '30-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1030', 'INFANT THAMSON L', 'M', '12-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1031', 'JAYAPRASATH G', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1032', 'JAYASURIYA S', 'M', '12-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1033', 'KAILASH S', 'M', '08-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `u_student` (`REGNO`, `SNAME`, `GENDER`, `DOB`, `YOJ`, `CREDITS_EARNED`, `PRGM_ID`, `CURR_SEM`, `HISTORY_OF_ARREAR`, `BACKLOGS`, `EMAIL`, `ACTIVE`, `abc_id`, `appn_num`, `father_name`, `mother_name`, `personal_email`, `phone`, `address_line1`, `address_line2`, `address_city`, `address_state`, `centac_or_josaa`, `nationality`, `community`, `entry_mode`, `otp`) VALUES
('18ME1034', 'KARTHIKEYAN S', 'M', '19-07-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1035', 'KESAV HARI R', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1036', 'KESAVAPRIYAN V', 'M', '01-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1037', 'LANKE RAMESH', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1038', 'LOGESH A', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1039', 'MANIMARAN M', 'M', '31-12-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1040', 'MANO DEEPAN B', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1041', 'MAPAKSHI REVANTH', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1042', 'MARIA SAMSON L', 'M', '12-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1043', 'MELVINO ROSHAN J', 'M', '04-12-2000', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1044', 'NADESH. J', 'M', '22-07-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1045', 'NAGA VEERA SAI VENKAT K', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1046', 'NANDHAKUMAR S', 'M', '21-01-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1047', 'NARENDIRAKUMAR S', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1048', 'SRI SAI MOHITH PADAVALA', 'M', '03-11-1999', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1049', 'PERIASAMY S', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1050', 'POUSSIN AKKASH KUMAR V ', 'M', '16-07-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1051', 'PRAGATHISH V', 'M', '07-07-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1052', 'PRASHANNA R', 'M', '07-07-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1053', 'RAJAKUMARAN M', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1054', 'RAJASIMMAN M', 'M', '27-10-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1055', 'RAMKUMAR.V ', 'M', '30-01-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1056', 'SABARIGIRI VASAN S', 'M', '15-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1057', 'SARAVANAN V', 'M', '03-01-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1058', 'SASIKUMAR S', 'M', '22-06-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1059', 'SEENIVAS.R', 'M', '27-08-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1060', 'SKARMA DORJEY', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1061', 'B SRIRAM', 'M', '20-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1062', 'A.SUNDARRAJ', 'M', '17-09-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1063', 'SURIYA S', 'M', '20-12-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1064', 'TARUN JOHN SHERRY', 'M', '23-06-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1065', 'THAMIZHANBAN R', 'M', '02-11-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1066', 'THEERTDHA T KURUP', 'F', '22-06-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1067', 'THIRUMURUGAN T', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1068', 'M.THIVAGAR', 'M', '04-06-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1069', 'UDHAYAKUMAR V', 'M', '23-05-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1070', 'UDHAYKUMAR D', 'M', '22-08-2000', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1071', 'VIGNESH P', 'M', '26-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1072', 'VIGNESH.S', 'M', '03-03-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1073', 'A VIJAI', 'M', '20-06-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1074', 'VISHAL K', 'M', '04-12-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME1075', 'J.P.VISHVA', 'M', '03-04-2001', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2001', 'ARUNKUMARAN V', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2002', 'DEEPAN CHAKRAVARTHI A', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2003', 'DHANASEGAR V', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2004', 'HARIHARAN R', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2005', 'SARAN KOWSHIK M', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2006', 'SATHYANARAYANAN G', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18ME2007', 'SIVAPRAGASH T', '', '', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_calendar`
--
ALTER TABLE `academic_calendar`
  ADD PRIMARY KEY (`SEM`);

--
-- Indexes for table `u_administration`
--
ALTER TABLE `u_administration`
  ADD KEY `FK_FID` (`F_ID`);

--
-- Indexes for table `u_course`
--
ALTER TABLE `u_course`
  ADD PRIMARY KEY (`COURSE_CODE`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `u_course_regn`
--
ALTER TABLE `u_course_regn`
  ADD PRIMARY KEY (`REGNO`,`COURSE_CODE`,`SEM`,`SESSION`),
  ADD KEY `FK_COURSE_CODE3` (`COURSE_CODE`),
  ADD KEY `FK_FACULTY_ID` (`FACULTY_ID`);

--
-- Indexes for table `u_dept`
--
ALTER TABLE `u_dept`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `u_exam_regn`
--
ALTER TABLE `u_exam_regn`
  ADD KEY `FK_REGNO5` (`REGNO`);

--
-- Indexes for table `u_external_marks`
--
ALTER TABLE `u_external_marks`
  ADD PRIMARY KEY (`REGNO`,`COURSE_CODE`,`SESSION`),
  ADD KEY `FK_COURSE_CODE1` (`COURSE_CODE`);

--
-- Indexes for table `u_faculty`
--
ALTER TABLE `u_faculty`
  ADD PRIMARY KEY (`FACULTY_ID`),
  ADD KEY `FK_DEPT_ID2` (`DEPT_ID`);

--
-- Indexes for table `u_fac_course`
--
ALTER TABLE `u_fac_course`
  ADD PRIMARY KEY (`faculty_id`,`course_code`,`session`);

--
-- Indexes for table `u_gpa_cgpa`
--
ALTER TABLE `u_gpa_cgpa`
  ADD KEY `FK_REGNO2` (`REGNO`);

--
-- Indexes for table `u_hm_preregistration`
--
ALTER TABLE `u_hm_preregistration`
  ADD KEY `FK_REGNO4` (`REGNO`),
  ADD KEY `FK_PRGM_ID_HM1` (`OPT1_PRGM_ID`),
  ADD KEY `FK_PRGM_ID_HM2` (`OPT2_PRGM_ID`),
  ADD KEY `FK_PRGM_ID_HM3` (`OPT3_PRGM_ID`);

--
-- Indexes for table `u_prgm`
--
ALTER TABLE `u_prgm`
  ADD PRIMARY KEY (`PRGM_ID`),
  ADD KEY `FK_DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `u_prgm_comp_course`
--
ALTER TABLE `u_prgm_comp_course`
  ADD KEY `FK_PRGM_ID` (`PRGM_ID`),
  ADD KEY `FK_COURSE_CODE` (`COURSE_CODE`);

--
-- Indexes for table `u_prgm_elective_course`
--
ALTER TABLE `u_prgm_elective_course`
  ADD KEY `FK_PRGM_ID2` (`PRGM_ID`) USING BTREE,
  ADD KEY `FK_COURSE_CODE2` (`COURSE_CODE`) USING BTREE,
  ADD KEY `FK_FACULTY_ID_ELECTIVE` (`FACULTY_ID`) USING BTREE;

--
-- Indexes for table `u_student`
--
ALTER TABLE `u_student`
  ADD PRIMARY KEY (`REGNO`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD KEY `FK_PRGM_ID3` (`PRGM_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `u_administration`
--
ALTER TABLE `u_administration`
  ADD CONSTRAINT `FK_FID` FOREIGN KEY (`F_ID`) REFERENCES `u_faculty` (`FACULTY_ID`);

--
-- Constraints for table `u_course`
--
ALTER TABLE `u_course`
  ADD CONSTRAINT `u_course_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `u_dept` (`DEPT_ID`);

--
-- Constraints for table `u_course_regn`
--
ALTER TABLE `u_course_regn`
  ADD CONSTRAINT `FK_COURSE_CODE3` FOREIGN KEY (`COURSE_CODE`) REFERENCES `u_course` (`COURSE_CODE`),
  ADD CONSTRAINT `FK_FACULTY_ID` FOREIGN KEY (`FACULTY_ID`) REFERENCES `u_faculty` (`FACULTY_ID`),
  ADD CONSTRAINT `FK_REGNO` FOREIGN KEY (`REGNO`) REFERENCES `u_student` (`REGNO`);

--
-- Constraints for table `u_exam_regn`
--
ALTER TABLE `u_exam_regn`
  ADD CONSTRAINT `FK_REGNO5` FOREIGN KEY (`REGNO`) REFERENCES `u_student` (`REGNO`);

--
-- Constraints for table `u_external_marks`
--
ALTER TABLE `u_external_marks`
  ADD CONSTRAINT `FK_COURSE_CODE1` FOREIGN KEY (`COURSE_CODE`) REFERENCES `u_course` (`COURSE_CODE`),
  ADD CONSTRAINT `FK_REGNO1` FOREIGN KEY (`REGNO`) REFERENCES `u_student` (`REGNO`);

--
-- Constraints for table `u_faculty`
--
ALTER TABLE `u_faculty`
  ADD CONSTRAINT `FK_DEPT_ID2` FOREIGN KEY (`DEPT_ID`) REFERENCES `u_dept` (`DEPT_ID`);

--
-- Constraints for table `u_gpa_cgpa`
--
ALTER TABLE `u_gpa_cgpa`
  ADD CONSTRAINT `FK_REGNO2` FOREIGN KEY (`REGNO`) REFERENCES `u_student` (`REGNO`);

--
-- Constraints for table `u_hm_preregistration`
--
ALTER TABLE `u_hm_preregistration`
  ADD CONSTRAINT `FK_PRGM_ID_HM1` FOREIGN KEY (`OPT1_PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`),
  ADD CONSTRAINT `FK_PRGM_ID_HM2` FOREIGN KEY (`OPT2_PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`),
  ADD CONSTRAINT `FK_PRGM_ID_HM3` FOREIGN KEY (`OPT3_PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`),
  ADD CONSTRAINT `FK_REGNO4` FOREIGN KEY (`REGNO`) REFERENCES `u_student` (`REGNO`);

--
-- Constraints for table `u_prgm`
--
ALTER TABLE `u_prgm`
  ADD CONSTRAINT `FK_DEPT_ID` FOREIGN KEY (`DEPT_ID`) REFERENCES `u_dept` (`DEPT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `u_prgm_comp_course`
--
ALTER TABLE `u_prgm_comp_course`
  ADD CONSTRAINT `FK_COURSE_CODE` FOREIGN KEY (`COURSE_CODE`) REFERENCES `u_course` (`COURSE_CODE`),
  ADD CONSTRAINT `FK_PRGM_ID` FOREIGN KEY (`PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`);

--
-- Constraints for table `u_prgm_elective_course`
--
ALTER TABLE `u_prgm_elective_course`
  ADD CONSTRAINT `FK_COURSE_CODE2` FOREIGN KEY (`COURSE_CODE`) REFERENCES `u_course` (`COURSE_CODE`),
  ADD CONSTRAINT `FK_FACULTY_ID_ELECTIVE` FOREIGN KEY (`FACULTY_ID`) REFERENCES `u_faculty` (`FACULTY_ID`),
  ADD CONSTRAINT `FK_PRGM_ID2` FOREIGN KEY (`PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`);

--
-- Constraints for table `u_student`
--
ALTER TABLE `u_student`
  ADD CONSTRAINT `FK_PRGM_ID3` FOREIGN KEY (`PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;