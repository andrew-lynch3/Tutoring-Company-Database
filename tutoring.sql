-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2026 at 11:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `student_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `start_time`, `duration`, `type`, `student_id`, `tutor_id`, `subject_id`, `room_id`) VALUES
(501, '2025-09-10 16:00:00', 60, 'In-Person', 1, 101, 201, 301),
(502, '2025-09-12 17:30:00', 45, 'Online', 2, 101, 201, NULL),
(503, '2025-09-15 15:30:00', 60, 'In-Person', 3, 102, 202, 302),
(504, '2025-09-18 16:30:00', 90, 'In-Person', 4, 103, 203, 301);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `meeting_days` varchar(20) NOT NULL,
  `meeting_time` time NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `name`, `level`, `meeting_days`, `meeting_time`, `tutor_id`, `subject_id`, `room_id`) VALUES
(401, 'Algebra Foundations', 'High', 'Mon/Wed', '12:30:00', 101, 201, 301),
(402, 'SAT Math Bootcamp', 'Honors', 'Wed', '10:00:00', 101, 201, NULL),
(403, 'English Essay Workshop', 'Middle', 'Tue/Thu', '15:30:00', 102, 202, 302),
(404, 'Intro to Programming (Python)', 'High', 'Fri', '17:00:00', 103, 204, 303);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `capacity`) VALUES
(301, 'Room A', 6),
(302, 'Room B', 4),
(303, 'Study Pod 1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_equipment`
--

CREATE TABLE `room_equipment` (
  `room_id` int(11) NOT NULL,
  `equipment_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_equipment`
--

INSERT INTO `room_equipment` (`room_id`, `equipment_name`) VALUES
(301, 'Projector'),
(301, 'Whiteboard'),
(302, 'Markers'),
(302, 'Smart TV'),
(303, 'Chromebooks');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `pphone` varchar(15) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `school` varchar(100) DEFAULT NULL,
  `goals` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `fname`, `lname`, `birthday`, `pname`, `pphone`, `grade`, `school`, `goals`) VALUES
(1, 'Nick', 'Smith', '2008-05-06', 'Janet Smith', '4015550122', 12, 'Riverside High School', 'Get an A'),
(2, 'Craig', 'Lawson', '2011-09-10', 'Greg Lawson', '4825550196', 9, 'Middlebury High School', 'SAT preparation'),
(3, 'Owen', 'Parker', '2014-04-03', 'Leah Parker', '4015550144', 6, 'Thomas Elementary', 'Reading comprehension'),
(4, 'Noah', 'Rivera', '2010-11-22', 'Luis Rivera', '4015550155', 8, 'Barrington MS', 'Science help'),
(5, 'Eric', 'Willis', '2017-11-08', 'John Willis', '4295550111', 2, 'Tree Elementary', 'Improve math & science'),
(6, 'Mark', 'Brown', '2018-05-19', 'Paulina Brown', '3925550100', 1, 'Lake Primary School', 'Improve reading comprehension skills'),
(7, 'Julia', 'Leonard', '2010-12-01', 'Rita Leonard', '6315550173', 9, 'Harbor High School', 'Improve test scores'),
(8, 'Sarah', 'Maye', '2011-12-01', 'Tom Maye', '7985550170', 8, 'Bayview Middle School', 'Raise math grades'),
(9, 'Evan', 'Brooks', '2012-06-05', 'Dana Brooks', '8245550190', 7, 'Providence Middle School', 'Improve math skills'),
(10, 'John', 'Adams', '2013-06-10', 'Sam Adams', '4925550124', 5, 'Birchwood Elementary School', 'Better reading comprehension'),
(11, 'Maya', 'Collins', '2013-09-18', 'Karen Collins', '4015550163', 7, 'Lakeview Middle School', 'Improve writing skills');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`, `grade`, `description`) VALUES
(201, 'Math', '1-12', 'Algebra, Geometry, Calculus'),
(202, 'English', '1-12', 'Reading and writing skills and comprehension'),
(203, 'Science', '8-12', 'Life and physical sciences'),
(204, 'Computer Science', '9-12', 'Programming and quantitative analysis fundamentals');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `tutor_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rate` decimal(6,2) NOT NULL,
  `start_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`tutor_id`, `fname`, `lname`, `email`, `rate`, `start_date`, `status`) VALUES
(101, 'Andrew', 'Lynch', 'alynch@andrewstutoring.com', 55.00, '2021-01-10', 'Active'),
(102, 'Leah', 'Houston', 'lhouston@andrewstutoring.com', 45.00, '2022-06-15', 'Active'),
(103, 'Michael', 'James', 'mjames@andrewstutoring.com', 50.00, '2023-03-20', 'Active'),
(104, 'Liam', 'Kennard', 'lkennard@andrewstutoring.com', 60.00, '2023-03-08', 'Inactive'),
(105, 'Peter ', 'Lewis', 'plewis@andrewstutoring.com', 60.00, '2025-12-22', 'Inactive'),
(106, 'Maurice', 'Morris', 'mmorris@andrewstutoring.com', 60.00, '2025-12-22', 'Active'),
(107, 'Dean', 'Sears', 'dsears@andrewstutoring.com', 50.00, '2025-12-21', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_subjects`
--

CREATE TABLE `tutor_subjects` (
  `tutor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `primary_subject` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_subjects`
--

INSERT INTO `tutor_subjects` (`tutor_id`, `subject_id`, `primary_subject`) VALUES
(101, 201, 1),
(101, 204, 1),
(102, 201, 0),
(102, 202, 1),
(103, 203, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `tutor_id` (`tutor_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `tutor_id` (`tutor_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_equipment`
--
ALTER TABLE `room_equipment`
  ADD PRIMARY KEY (`room_id`,`equipment_name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`tutor_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  ADD PRIMARY KEY (`tutor_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`tutor_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `appointments_ibfk_4` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`tutor_id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `room_equipment`
--
ALTER TABLE `room_equipment`
  ADD CONSTRAINT `room_equipment_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  ADD CONSTRAINT `tutor_subjects_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`tutor_id`),
  ADD CONSTRAINT `tutor_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
