-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2018 at 01:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education_soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `branchs`
--

CREATE TABLE `branchs` (
  `branch_id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchs`
--

INSERT INTO `branchs` (`branch_id`, `setting_id`, `user_id`, `branch_name`, `address`, `phone_no`, `create_at`) VALUES
(1, 35, 0, 'Dhaka Mirpur 10', 'Shenpara,Parbata,259/1,Shapnil 3rd Floor', '01741877058', '2018-02-25 11:34:37'),
(2, 35, 0, 'Dhanmondi', 'Dhanmondi 32, Dhaka', '01741877059', '2018-02-25 11:36:12'),
(3, 35, 0, 'Dhaka, Shamoly', 'Shamoly', '01741877060', '2018-02-25 11:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `period_count` int(11) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `user_id`, `period_count`, `create_at`) VALUES
(26, 1, 1, '2018-02-27 09:03:45'),
(27, 1, 1, '2018-02-27 09:03:46'),
(28, 1, 1, '2018-02-27 09:03:47'),
(29, 1, 1, '2018-02-27 09:03:48'),
(30, 1, 1, '2018-02-27 09:03:49'),
(31, 1, 1, '2018-02-27 09:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `class_courses`
--

CREATE TABLE `class_courses` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_courses`
--

INSERT INTO `class_courses` (`id`, `course_id`, `class_id`, `user_id`, `create_at`) VALUES
(1, 1, 26, 0, '2018-02-27 09:03:45'),
(2, 1, 26, 0, '2018-02-27 09:03:45'),
(3, 1, 26, 0, '2018-02-27 09:03:45'),
(4, 2, 26, 0, '2018-02-27 09:03:45'),
(5, 2, 26, 0, '2018-02-27 09:03:45'),
(6, 2, 26, 0, '2018-02-27 09:03:45'),
(7, 1, 27, 0, '2018-02-27 09:03:46'),
(8, 1, 27, 0, '2018-02-27 09:03:46'),
(9, 1, 27, 0, '2018-02-27 09:03:46'),
(10, 2, 27, 0, '2018-02-27 09:03:46'),
(11, 2, 27, 0, '2018-02-27 09:03:46'),
(12, 2, 27, 0, '2018-02-27 09:03:46'),
(13, 1, 28, 0, '2018-02-27 09:03:47'),
(14, 1, 28, 0, '2018-02-27 09:03:47'),
(15, 1, 28, 0, '2018-02-27 09:03:47'),
(16, 2, 28, 0, '2018-02-27 09:03:47'),
(17, 2, 28, 0, '2018-02-27 09:03:47'),
(18, 2, 28, 0, '2018-02-27 09:03:47'),
(19, 1, 29, 0, '2018-02-27 09:03:48'),
(20, 1, 29, 0, '2018-02-27 09:03:48'),
(21, 1, 29, 0, '2018-02-27 09:03:48'),
(22, 2, 29, 0, '2018-02-27 09:03:48'),
(23, 2, 29, 0, '2018-02-27 09:03:48'),
(24, 2, 29, 0, '2018-02-27 09:03:48'),
(25, 1, 30, 0, '2018-02-27 09:03:49'),
(26, 1, 30, 0, '2018-02-27 09:03:49'),
(27, 1, 30, 0, '2018-02-27 09:03:49'),
(28, 2, 30, 0, '2018-02-27 09:03:49'),
(29, 2, 30, 0, '2018-02-27 09:03:49'),
(30, 2, 30, 0, '2018-02-27 09:03:49'),
(31, 1, 31, 0, '2018-02-27 09:03:50'),
(32, 1, 31, 0, '2018-02-27 09:03:50'),
(33, 1, 31, 0, '2018-02-27 09:03:50'),
(34, 2, 31, 0, '2018-02-27 09:03:50'),
(35, 2, 31, 0, '2018-02-27 09:03:50'),
(36, 2, 31, 0, '2018-02-27 09:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_no` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section` varchar(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `user_id`, `section`, `create_at`) VALUES
(1, 26, 0, '1', '2018-02-27 09:03:45'),
(2, 26, 0, '1', '2018-02-27 09:03:45'),
(3, 26, 0, '1', '2018-02-27 09:03:45'),
(4, 26, 0, '1', '2018-02-27 09:03:45'),
(5, 26, 0, '1', '2018-02-27 09:03:45'),
(6, 26, 0, '1', '2018-02-27 09:03:45'),
(7, 27, 0, '1', '2018-02-27 09:03:46'),
(8, 27, 0, '1', '2018-02-27 09:03:46'),
(9, 27, 0, '1', '2018-02-27 09:03:46'),
(10, 27, 0, '1', '2018-02-27 09:03:46'),
(11, 27, 0, '1', '2018-02-27 09:03:46'),
(12, 27, 0, '1', '2018-02-27 09:03:46'),
(13, 28, 0, '1', '2018-02-27 09:03:47'),
(14, 28, 0, '1', '2018-02-27 09:03:47'),
(15, 28, 0, '1', '2018-02-27 09:03:47'),
(16, 28, 0, '1', '2018-02-27 09:03:47'),
(17, 28, 0, '1', '2018-02-27 09:03:47'),
(18, 28, 0, '1', '2018-02-27 09:03:47'),
(19, 29, 0, '1', '2018-02-27 09:03:48'),
(20, 29, 0, '1', '2018-02-27 09:03:48'),
(21, 29, 0, '1', '2018-02-27 09:03:48'),
(22, 29, 0, '1', '2018-02-27 09:03:48'),
(23, 29, 0, '1', '2018-02-27 09:03:48'),
(24, 29, 0, '1', '2018-02-27 09:03:48'),
(25, 30, 0, '1', '2018-02-27 09:03:49'),
(26, 30, 0, '1', '2018-02-27 09:03:49'),
(27, 30, 0, '1', '2018-02-27 09:03:49'),
(28, 30, 0, '1', '2018-02-27 09:03:49'),
(29, 30, 0, '1', '2018-02-27 09:03:49'),
(30, 30, 0, '1', '2018-02-27 09:03:49'),
(31, 31, 0, '1', '2018-02-27 09:03:50'),
(32, 31, 0, '1', '2018-02-27 09:03:50'),
(33, 31, 0, '1', '2018-02-27 09:03:50'),
(34, 31, 0, '1', '2018-02-27 09:03:50'),
(35, 31, 0, '1', '2018-02-27 09:03:50'),
(36, 31, 0, '1', '2018-02-27 09:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `class_teachers`
--

CREATE TABLE `class_teachers` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_teachers`
--

INSERT INTO `class_teachers` (`id`, `class_id`, `teacher_id`, `create_at`) VALUES
(1, 26, 1, '2018-02-27 09:03:45'),
(2, 26, 1, '2018-02-27 09:03:45'),
(3, 26, 1, '2018-02-27 09:03:45'),
(4, 26, 1, '2018-02-27 09:03:45'),
(5, 26, 1, '2018-02-27 09:03:45'),
(6, 26, 1, '2018-02-27 09:03:46'),
(7, 27, 1, '2018-02-27 09:03:46'),
(8, 27, 1, '2018-02-27 09:03:46'),
(9, 27, 1, '2018-02-27 09:03:46'),
(10, 27, 1, '2018-02-27 09:03:47'),
(11, 27, 1, '2018-02-27 09:03:47'),
(12, 27, 1, '2018-02-27 09:03:47'),
(13, 28, 1, '2018-02-27 09:03:47'),
(14, 28, 1, '2018-02-27 09:03:48'),
(15, 28, 1, '2018-02-27 09:03:48'),
(16, 28, 1, '2018-02-27 09:03:48'),
(17, 28, 1, '2018-02-27 09:03:48'),
(18, 28, 1, '2018-02-27 09:03:48'),
(19, 29, 1, '2018-02-27 09:03:48'),
(20, 29, 1, '2018-02-27 09:03:48'),
(21, 29, 1, '2018-02-27 09:03:48'),
(22, 29, 1, '2018-02-27 09:03:49'),
(23, 29, 1, '2018-02-27 09:03:49'),
(24, 29, 1, '2018-02-27 09:03:49'),
(25, 30, 1, '2018-02-27 09:03:49'),
(26, 30, 1, '2018-02-27 09:03:49'),
(27, 30, 1, '2018-02-27 09:03:49'),
(28, 30, 1, '2018-02-27 09:03:49'),
(29, 30, 1, '2018-02-27 09:03:49'),
(30, 30, 1, '2018-02-27 09:03:49'),
(31, 31, 1, '2018-02-27 09:03:50'),
(32, 31, 1, '2018-02-27 09:03:50'),
(33, 31, 1, '2018-02-27 09:03:50'),
(34, 31, 1, '2018-02-27 09:03:50'),
(35, 31, 1, '2018-02-27 09:03:50'),
(36, 31, 1, '2018-02-27 09:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(255) NOT NULL,
  `program_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mark_distribution_id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_credit` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `program_id`, `semester_id`, `session_id`, `user_id`, `mark_distribution_id`, `course_code`, `course_name`, `course_credit`, `create_at`) VALUES
(1, 1, 1, 1, 1, 2, '201', 'Bangla', '3', '2018-02-26 12:45:56'),
(2, 1, 1, 1, 1, 3, '302', 'English', '3\r\n', '2018-02-28 12:08:49'),
(3, 2, 2, 1, 1, 4, '120', 'Bangla', '3', '2018-02-27 13:29:56'),
(4, 2, 2, 1, 1, 5, 'CSE-202', 'Programming', '3', '2018-02-27 13:30:23'),
(5, 2, 1, 1, 1, 6, 'CSE-201', 'Programming', '3', '2018-02-28 09:32:46'),
(6, 1, 1, 1, 1, 7, 'CSE-201', 'Programming', '3', '2018-02-28 11:28:34'),
(7, 2, 2, 9, 1, 8, 'CSE-201', 'Programming', '3', '2018-02-28 11:29:51'),
(8, 1, 2, 1, 1, 9, 'CSE-202', 'Physics', '2', '2018-03-01 10:14:44'),
(9, 1, 2, 1, 1, 10, 'CSE-203', 'Laravel', '2', '2018-03-01 10:15:22'),
(10, 3, 1, 1, 1, 11, '120', 'Bangla', '2', '2018-03-03 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `course_marks`
--

CREATE TABLE `course_marks` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `exam_type` varchar(20) NOT NULL,
  `theory` float NOT NULL,
  `practical` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_marks`
--

INSERT INTO `course_marks` (`id`, `student_id`, `course_id`, `user_id`, `semester_id`, `exam_type`, `theory`, `practical`, `create_at`) VALUES
(19, 6, 5, 1, 1, 'Mid Exam', 40, 30, '2018-02-28 09:35:05'),
(41, 8, 1, 1, 1, 'Mid Exam', 20, 25, '2018-03-01 09:07:12'),
(42, 9, 1, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:07:12'),
(43, 1, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(44, 2, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(45, 3, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(46, 4, 2, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:08:28'),
(47, 5, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(48, 7, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(49, 8, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(50, 9, 2, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:08:28'),
(51, 1, 6, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:09:10'),
(52, 2, 6, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:09:10'),
(53, 3, 6, 1, 1, 'Mid Exam', 30, 30, '2018-03-01 09:09:11'),
(54, 4, 6, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:09:11'),
(55, 5, 6, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:09:11'),
(56, 7, 6, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:09:11'),
(57, 8, 6, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:09:11'),
(58, 9, 6, 1, 1, 'Mid Exam', 30, 25, '2018-03-01 09:09:11'),
(59, 8, 8, 1, 2, 'Mid Exam', 30, 18, '2018-03-01 10:16:11'),
(60, 9, 8, 1, 2, 'Mid Exam', 22, 20, '2018-03-01 10:16:11'),
(61, 8, 9, 1, 2, 'Mid Exam', 30, 20, '2018-03-01 10:16:30'),
(62, 9, 9, 1, 2, 'Mid Exam', 30, 20, '2018-03-01 10:16:30'),
(111, 1, 1, 1, 1, 'Mid Exam', 30, 20, '2018-03-03 12:07:25'),
(112, 2, 1, 1, 1, 'Mid Exam', 25, 20, '2018-03-03 12:07:25'),
(113, 3, 1, 1, 1, 'Mid Exam', 25, 20, '2018-03-03 12:07:25'),
(114, 4, 1, 1, 1, 'Mid Exam', 20, 18, '2018-03-03 12:07:25'),
(115, 5, 1, 1, 1, 'Mid Exam', 27, 20, '2018-03-03 12:07:25'),
(116, 7, 1, 1, 1, 'Mid Exam', 30, 20, '2018-03-03 12:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `faculty_id`, `user_id`, `department_name`, `create_at`) VALUES
(1, 1, 1, 'CSE', '2018-02-25 15:16:34'),
(2, 1, 1, 'CIVIL', '2018-02-25 15:16:42'),
(3, 1, 1, 'Food', '2018-02-25 15:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `e_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `post` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `post_code` varchar(20) NOT NULL,
  `present_address` longtext NOT NULL,
  `parmanent_address` longtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`e_id`, `department_id`, `employee_id`, `employee_name`, `post`, `gender`, `join_date`, `nationality`, `father_name`, `mother_name`, `country`, `district`, `mobile_no`, `email`, `date_of_birth`, `blood_group`, `qualification`, `experience`, `religion`, `marital_status`, `employee_type`, `post_code`, `present_address`, `parmanent_address`, `photo`, `user_id`, `create_at`) VALUES
(1, 2, '20181', 'Mahfuj', 'Lecturer', 'Male', '2018-02-25', 'Bangladeshi', 'Mr.x', 'Begum..........', 'Bangladesh', 'Lalmonirhat', '01796173454', 'mahfuj.euitsols@gmail.com', '1988-02-03', 'A-', 'Studing in BSC', '2 Years', 'Islam', '', 'Teacher', '1216', 'Mirpur 10, Shenpara 301/2', 'Lalmonirhar Sadar', '50ee369e', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `branch_id`, `user_id`, `faculty_name`, `department_name`, `create_at`) VALUES
(1, 1, 0, 'Engineering', 'Cse', '2018-02-25 11:40:28'),
(2, 3, 0, 'Egnineering', '', '2018-02-25 15:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_fee` double NOT NULL,
  `discounted_fee` double NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urc_cost` float NOT NULL,
  `dc_cost` float NOT NULL,
  `other_fee` float NOT NULL,
  `semester_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `markdistributions`
--

CREATE TABLE `markdistributions` (
  `id` int(11) NOT NULL,
  `mark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markdistributions`
--

INSERT INTO `markdistributions` (`id`, `mark_id`, `user_id`, `create_at`) VALUES
(2, 2, 1, '2018-02-25 12:33:52'),
(3, 3, 1, '2018-02-26 09:49:55'),
(4, 4, 1, '2018-02-27 13:29:56'),
(5, 5, 1, '2018-02-27 13:30:23'),
(6, 6, 1, '2018-02-28 09:32:46'),
(7, 7, 1, '2018-02-28 11:28:34'),
(8, 8, 1, '2018-02-28 11:29:51'),
(9, 9, 1, '2018-03-01 10:14:44'),
(10, 10, 1, '2018-03-01 10:15:22'),
(11, 11, 1, '2018-03-03 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `theory_id` int(11) NOT NULL,
  `practical_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `theory_id`, `practical_id`, `user_id`, `create_at`) VALUES
(2, 2, 2, 1, '2018-02-25 12:33:52'),
(3, 3, 3, 1, '2018-02-26 09:49:55'),
(4, 4, 4, 1, '2018-02-27 13:29:56'),
(5, 5, 5, 1, '2018-02-27 13:30:23'),
(6, 6, 6, 1, '2018-02-28 09:32:46'),
(7, 7, 7, 1, '2018-02-28 11:28:34'),
(8, 8, 8, 1, '2018-02-28 11:29:51'),
(9, 9, 9, 1, '2018-03-01 10:14:44'),
(10, 10, 10, 1, '2018-03-01 10:15:22'),
(11, 11, 11, 1, '2018-03-03 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `practicals`
--

CREATE TABLE `practicals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cont_asses` float NOT NULL,
  `final_exam` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practicals`
--

INSERT INTO `practicals` (`id`, `user_id`, `cont_asses`, `final_exam`, `create_at`) VALUES
(2, 1, 20, 30, '2018-02-25 12:33:52'),
(3, 1, 25, 45, '2018-02-26 09:49:55'),
(4, 1, 25, 30, '2018-02-27 13:29:56'),
(5, 1, 25, 10, '2018-02-27 13:30:23'),
(6, 1, 50, 50, '2018-02-28 09:32:46'),
(7, 1, 30, 50, '2018-02-28 11:28:34'),
(8, 1, 30, 50, '2018-02-28 11:29:51'),
(9, 1, 20, 30, '2018-03-01 10:14:44'),
(10, 1, 20, 30, '2018-03-01 10:15:22'),
(11, 1, 0, 0, '2018-03-03 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `progran_name` varchar(50) NOT NULL,
  `program_duration` int(11) NOT NULL,
  `semester_duration` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `department_id`, `user_id`, `progran_name`, `program_duration`, `semester_duration`, `create_at`) VALUES
(1, 2, 0, 'BSC in CIVIL Engineering', 48, 4, '2018-02-25 15:16:57'),
(2, 1, 0, 'BSC in CSE Engineering', 48, 6, '2018-02-25 11:57:44'),
(3, 3, 0, 'Engineering', 48, 4, '2018-02-25 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `routins`
--

CREATE TABLE `routins` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shift` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routins`
--

INSERT INTO `routins` (`id`, `program_id`, `semester_id`, `session_id`, `section_id`, `user_id`, `shift`, `create_at`) VALUES
(3, 1, 1, 1, 0, 0, '1st Shift', '2018-02-27 09:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `routine_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `sat` int(11) DEFAULT NULL,
  `sun` int(11) DEFAULT NULL,
  `mon` int(11) DEFAULT NULL,
  `tue` int(11) DEFAULT NULL,
  `wed` int(11) DEFAULT NULL,
  `thu` int(11) DEFAULT NULL,
  `fri` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `routine_id`, `user_id`, `period`, `sat`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `create_at`) VALUES
(9, 3, 1, 1, 26, 27, 28, 29, 30, 31, NULL, '2018-02-27 09:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `section_name`, `create_at`) VALUES
(1, 'A', '2018-02-26 11:13:09'),
(2, 'B', '2018-02-26 11:13:26'),
(3, 'C', '2018-02-26 11:13:34'),
(4, 'D', '2018-02-26 11:13:40'),
(5, 'E', '2018-02-26 11:13:51'),
(6, 'F', '2018-02-26 11:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semester_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `semester_name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semester_id`, `user_id`, `semester_name`, `create_at`) VALUES
(1, 0, 'First Semester', '2018-02-25 11:20:23'),
(2, 0, 'Second Semester', '2018-02-25 11:20:45'),
(3, 0, 'Third Semester', '2018-02-25 11:20:54'),
(4, 0, 'Six Semester', '2018-02-25 11:21:24'),
(5, 0, 'Seven Semester', '2018-02-25 11:22:37'),
(6, 0, 'Eight Semester', '2018-02-25 11:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `year`, `create_at`) VALUES
(1, 0, '2002-2003', '2018-02-25 11:23:49'),
(2, 0, '2003-2004', '2018-02-25 11:24:01'),
(3, 0, '2004-2005', '2018-02-25 11:25:21'),
(4, 0, '2005-2006', '2018-02-25 11:25:28'),
(5, 0, '2006-2007', '2018-02-25 11:25:37'),
(6, 0, '2007-2008', '2018-02-25 11:25:49'),
(7, 0, '2008-2009', '2018-02-25 11:25:55'),
(8, 0, '2010-2011', '2018-02-25 11:26:03'),
(9, 0, '2011-2012', '2018-02-25 11:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `user_id`, `setting_name`, `setting_key`, `value`, `create_at`) VALUES
(35, 1, 'Institute', 'settings', 'EuitSols Training Institute', '2018-02-25 11:18:39'),
(36, 1, 'address', 'settings', 'H#259/1, Shapnil, 3<sup>rd</sup> Floor, Senpara Parbata, Mirpur-10, Dhaka-1216, Bangladesh', '2018-02-25 11:18:39'),
(37, 1, 'history', 'settings', 'European IT Solutions (EUITSols) started off as a IT and web based \r\nsolutions, services and web design company in Ireland, Germany and \r\nBangladesh in 2009. Over the years, EUITSols has delivered successful \r\nprojects in multiple platforms to clients in ', '2018-02-25 11:18:40'),
(38, 1, 'copyright', 'settings', ' Copyright © 2018 Euitsols.com | All Rights Reserved ', '2018-02-25 11:18:40'),
(39, 1, 'institue_email', 'settings', 'training@euitsols-inst.com', '2018-02-25 11:18:40'),
(40, 1, 'logo', 'settings', '2018-02-28_11-02-15default-logo.png', '2018-02-28 10:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `section_id` int(20) NOT NULL,
  `semester_id` int(20) NOT NULL,
  `session_id` int(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `post_code` varchar(20) NOT NULL,
  `district` varchar(255) NOT NULL,
  `require_credit` int(11) NOT NULL,
  `telephone_no` varchar(15) NOT NULL,
  `passport_no` varchar(255) NOT NULL,
  `marital_status` varchar(30) NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `entry_date` varchar(10) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `graduation_date` date NOT NULL,
  `graduation_name` varchar(255) NOT NULL,
  `hold_bar` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `parmanent_address` varchar(255) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `hsc_gpa` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `tution_fee` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hold_bar_date` date NOT NULL,
  `hold_bar_information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `student_id`, `program_id`, `section_id`, `semester_id`, `session_id`, `user_id`, `student_name`, `mobile_no`, `email`, `nationality`, `country`, `post_code`, `district`, `require_credit`, `telephone_no`, `passport_no`, `marital_status`, `birth_place`, `entry_date`, `religion`, `graduation_date`, `graduation_name`, `hold_bar`, `gender`, `father_name`, `mother_name`, `father_occupation`, `parmanent_address`, `present_address`, `hsc_gpa`, `date_of_birth`, `blood_group`, `tution_fee`, `due`, `photo`, `create_at`, `hold_bar_date`, `hold_bar_information`) VALUES
(1, '20181', 1, 1, 1, 1, 1, 'Faruk Ahamed', '0178964858', 'faruk@gmail.com', 'Bangladeshi', 'Bangladesh', '1216', 'Kurigram', 140, '+4564647', '0123456789', 'Unmarried', 'Kurigram, Nageswari', '2018-02-25', 'Islam', '2018-02-05', 'BSC In Cse', 'asdf', 'Male', 'Mr.Mizanur Rahman', 'Begum .........', 'Business', 'Kurigram, Ghogadaha', 'Shenpara, parbata 259/1, Dhaka 1216', '5.00', '1997-02-04', 'A+', '5000', '2000', '90f00735faruk.jpg', '2018-02-28 09:00:14', '2018-02-07', 'fdsa'),
(2, '20182', 1, 1, 1, 1, 1, 'Faruk Ahamed', '0178964858', 'faruk@gmail.com', 'Bangladeshi', 'Bangladesh', '1216', 'Kurigram', 140, '+4564647', '0123456789', 'Unmarried', 'Kurigram, Nageswari', '2018-02-25', 'Islam', '2018-02-05', 'BSC In Cse', 'asdf', 'Male', 'Mr.Mizanur Rahman', 'Begum .........', 'Business', 'Kurigram, Ghogadaha', 'Shenpara, parbata 259/1, Dhaka 1216', '5.00', '1997-02-04', 'A+', '5000', '2000', '1ed2f0a5image1.jpg', '2018-02-27 13:17:51', '2018-02-07', 'fdsa'),
(3, '20183', 1, 1, 1, 1, 1, 'Mahafujur Rahman', '0178964858', 'Mahafuj@gmail.com', 'Bangladeshi', 'Bangladesh', '1216', 'Kurigram', 140, '+4564647', '0123456789', 'Unmarried', 'Kurigram, Nageswari', '2018-02-25', 'Islam', '2018-02-05', 'BSC In Cse', 'asdf', 'Male', 'Mr.Mizanur Rahman', 'Begum .........', 'Business', 'Kurigram, Ghogadaha', 'Shenpara, parbata 259/1, Dhaka 1216', '5.00', '1997-02-04', 'A+', '5000', '2000', '042a2f40image2.jpg', '2018-02-27 13:17:55', '2018-02-07', 'fdsa'),
(4, '20184', 1, 1, 1, 1, 1, 'Nayon Hosain', '0178964858', 'Nayon@gmail.com', 'Bangladeshi', 'Bangladesh', '1216', 'Kurigram', 140, '+4564647', '0123456789', 'Unmarried', 'Kurigram, Nageswari', '2018-02-25', 'Islam', '2018-02-05', 'BSC In Cse', 'asdf', 'Male', 'Mr.Mizanur Rahman', 'Begum .........', 'Business', 'Kurigram, Ghogadaha', 'Shenpara, parbata 259/1, Dhaka 1216', '5.00', '1997-02-04', 'A+', '5000', '2000', '8cf251b2images.jpg', '2018-02-27 13:18:01', '2018-02-07', 'fdsa'),
(5, '20185', 1, 1, 1, 1, 1, 'Arif Babu', '0178964858', 'arif@gmail.com', 'Bangladeshi', 'Bangladesh', '1216', 'Kurigram', 140, '+4564647', '0123456789', 'Unmarried', 'Kurigram, Nageswari', '2018-02-25', 'Islam', '2018-02-05', 'BSC In Cse', 'asdf', 'Male', 'Mr.Mizanur Rahman', 'Begum .........', 'Business', 'Kurigram, Ghogadaha', 'Shenpara, parbata 259/1, Dhaka 1216', '5.00', '1997-02-04', 'A+', '5000', '2000', 'ffcd9d28images.png', '2018-02-27 13:18:04', '2018-02-07', 'fdsa'),
(6, '20190', 2, 1, 1, 1, 1, 'Arif Babu', '', '', 'Dinajpuri', '3', '91710', '91710', 3, '', '', 'Married', '', '', '', '0000-00-00', '', '', 'Male', 'ABC', 'ABCD', 'Business', '', '', '', '', '', '', '', 'c68e87ee', '2018-02-28 09:33:44', '0000-00-00', ''),
(7, '1990', 1, 1, 1, 1, 1, 'Nayan', '01796173584', 'jhkhk', 'Bangladeshi', 'Bangladesh', '1216', 'Naogaon', 3, '0178956486', '', '', '', '2018-02-28', '', '0000-00-00', '', '', '', '', '', '----Select----', 'Naogaon', 'Dhaka , Dhanmondi', '', '2018-02-14', '', '', '', 'c9994decimages.jpg', '2018-02-28 11:20:37', '0000-00-00', ''),
(8, '1991', 1, 1, 2, 1, 1, 'Siyam Ahamed Nahid', '01796173485', '', 'Bangladesh', 'Bangladesh', '5489', 'Naogaon', 0, '', '', '', '', '2018-02-09', '', '0000-00-00', '', '', 'Male', 'MR............', 'Mst.........', '', 'Naogaon', 'Dhaka', '', '2018-02-08', '', '', '', 'e1116b1327545416_2012916932297823_1829002932811663465_n.jpg', '2018-03-01 10:13:40', '0000-00-00', ''),
(9, '1992', 1, 1, 2, 1, 1, 'Mahafujur Rahman', '9096280101', '', 'Dinajpuri', 'Bangladesh', '91710', 'kurigram', 3, '', '524', 'Unmarried', '', '2018-02-14', 'Islam', '2018-01-30', '', '', 'Male', 'MR............', 'Mst.........', 'Business', 'kjk', 'hjmh', '', '2018-02-13', '', '', '', '7401dcf227545416_2012916932297823_1829002932811663465_n.jpg', '2018-03-01 10:13:27', '0000-00-00', ''),
(10, '1993', 3, 1, 1, 3, 1, 'Abu', '9096280101', '', 'Dinajpuri', 'Bangladesh', '91710', '91710', 3, '', '', 'Married', '', '2018-02-13', 'Islam', '2018-02-13', '', '', '', 'MR............', 'Mst.........', '', 'gdfg', 'gcfgb', '', '2018-01-31', '', '', '', '40e9bf08images.jpg', '2018-02-28 13:38:01', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `theories`
--

CREATE TABLE `theories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cont_asses` float NOT NULL,
  `final_exam` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theories`
--

INSERT INTO `theories` (`id`, `user_id`, `cont_asses`, `final_exam`, `create_at`) VALUES
(2, 1, 80, 20, '2018-02-25 12:33:52'),
(3, 1, 25, 45, '2018-02-26 09:49:55'),
(4, 1, 10, 20, '2018-02-27 13:29:56'),
(5, 1, 10, 10, '2018-02-27 13:30:23'),
(6, 1, 50, 50, '2018-02-28 09:32:46'),
(7, 1, 50, 50, '2018-02-28 11:28:34'),
(8, 1, 50, 50, '2018-02-28 11:29:50'),
(9, 1, 20, 30, '2018-03-01 10:14:44'),
(10, 1, 20, 30, '2018-03-01 10:15:21'),
(11, 1, 20, 80, '2018-03-03 11:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `last_login` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `email`, `phone_no`, `role`, `status`, `last_login`, `create_at`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 'admin', 'active', '', '2018-02-14 14:02:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branchs`
--
ALTER TABLE `branchs`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `setting_id` (`setting_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_courses`
--
ALTER TABLE `class_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`course_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `mark_distribution_id` (`mark_distribution_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `course_marks`
--
ALTER TABLE `course_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `faculty_id` (`department_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `markdistributions`
--
ALTER TABLE `markdistributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mark_id` (`mark_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theory_id` (`theory_id`),
  ADD KEY `practical_id` (`practical_id`);

--
-- Indexes for table `practicals`
--
ALTER TABLE `practicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `faculty_id` (`department_id`);

--
-- Indexes for table `routins`
--
ALTER TABLE `routins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`program_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routine_id` (`routine_id`),
  ADD KEY `period` (`period`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `admin_id` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `theories`
--
ALTER TABLE `theories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branchs`
--
ALTER TABLE `branchs`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class_courses`
--
ALTER TABLE `class_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `class_teachers`
--
ALTER TABLE `class_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_marks`
--
ALTER TABLE `course_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markdistributions`
--
ALTER TABLE `markdistributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `practicals`
--
ALTER TABLE `practicals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routins`
--
ALTER TABLE `routins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `theories`
--
ALTER TABLE `theories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branchs`
--
ALTER TABLE `branchs`
  ADD CONSTRAINT `branchs_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`setting_id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_courses`
--
ALTER TABLE `class_courses`
  ADD CONSTRAINT `class_courses_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `class_courses_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD CONSTRAINT `class_rooms_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD CONSTRAINT `class_teachers_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`mark_distribution_id`) REFERENCES `markdistributions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON UPDATE CASCADE;

--
-- Constraints for table `course_marks`
--
ALTER TABLE `course_marks`
  ADD CONSTRAINT `course_marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`s_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `course_marks_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`branch_id`) ON UPDATE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_ibfk_5` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON UPDATE CASCADE;

--
-- Constraints for table `markdistributions`
--
ALTER TABLE `markdistributions`
  ADD CONSTRAINT `markdistributions_ibfk_1` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`practical_id`) REFERENCES `practicals` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`theory_id`) REFERENCES `theories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_5` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON UPDATE CASCADE;

--
-- Constraints for table `routins`
--
ALTER TABLE `routins`
  ADD CONSTRAINT `routins_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`routine_id`) REFERENCES `routins` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_4` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
