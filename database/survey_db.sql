-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 04:05 PM
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
-- Database: `survey_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `survey_id`, `user_id`, `answer`, `question_id`, `date_created`) VALUES
(1, 1, 2, 'Sample Only', 4, '2020-11-10 14:46:07'),
(2, 1, 2, '[JNmhW],[zZpTE]', 2, '2020-11-10 14:46:07'),
(3, 1, 2, 'dAWTD', 1, '2020-11-10 14:46:07'),
(4, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. Aliquam id viverra nisl. Proin quis posuere nulla. Nullam suscipit eget leo ut suscipit.', 4, '2020-11-10 15:59:43'),
(5, 1, 3, '[qCMGO],[JNmhW]', 2, '2020-11-10 15:59:43'),
(6, 1, 3, 'esNuP', 1, '2020-11-10 15:59:43'),
(7, 6, 4, 'UlkTK', 5, '2024-04-23 01:01:50'),
(8, 6, 4, 'grndU', 6, '2024-04-23 01:01:50'),
(9, 6, 4, 'vofDc', 7, '2024-04-23 01:01:50'),
(10, 6, 4, 'udYKD', 8, '2024-04-23 01:01:50'),
(11, 6, 4, 'oFqUc', 9, '2024-04-23 01:01:50'),
(12, 6, 4, 'المقرر جيد لكن كان يفضل المزيد من الأمثلة العملية.', 10, '2024-04-23 01:01:50'),
(13, 6, 5, 'YfglJ', 5, '2024-04-23 01:06:20'),
(14, 6, 5, 'grndU', 6, '2024-04-23 01:06:20'),
(15, 6, 5, 'lZcxN', 7, '2024-04-23 01:06:20'),
(16, 6, 5, 'BQoNP', 8, '2024-04-23 01:06:20'),
(17, 6, 5, 'GmJeV', 9, '2024-04-23 01:06:20'),
(18, 6, 5, 'المقرر ممتاز', 10, '2024-04-23 01:06:20'),
(19, 6, 6, 'UlkTK', 5, '2024-04-23 12:43:21'),
(20, 6, 6, 'grndU', 6, '2024-04-23 12:43:21'),
(21, 6, 6, 'NJhAi', 7, '2024-04-23 12:43:21'),
(22, 6, 6, 'BQoNP', 8, '2024-04-23 12:43:21'),
(23, 6, 6, 'GmJeV', 9, '2024-04-23 12:43:21'),
(24, 6, 6, 'المقرر رائع ولكن يحتاج للمزيد من المحاضرات الاضافية', 10, '2024-04-23 12:43:21'),
(25, 6, 7, 'UlkTK', 5, '2024-04-30 23:38:50'),
(26, 6, 7, 'grndU', 6, '2024-04-30 23:38:50'),
(27, 6, 7, 'NJhAi', 7, '2024-04-30 23:38:50'),
(28, 6, 7, 'BQoNP', 8, '2024-04-30 23:38:50'),
(29, 6, 7, 'GmJeV', 9, '2024-04-30 23:38:50'),
(30, 6, 7, 'المقرر رائع!', 10, '2024-04-30 23:38:50'),
(31, 8, 10, 'dlJGC', 11, '2024-05-01 23:18:45'),
(32, 6, 10, 'UlkTK', 5, '2024-05-01 23:19:20'),
(33, 6, 10, 'Ckadc', 6, '2024-05-01 23:19:20'),
(34, 6, 10, 'vofDc', 7, '2024-05-01 23:19:20'),
(35, 6, 10, 'udYKD', 8, '2024-05-01 23:19:20'),
(36, 6, 10, 'GmJeV', 9, '2024-05-01 23:19:20'),
(37, 6, 10, 'المقرر رائع', 10, '2024-05-01 23:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `frm_option` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `order_by` int(11) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `frm_option`, `type`, `order_by`, `survey_id`, `date_created`) VALUES
(1, 'Sample Survey Question using Radio Button', '{\"cKWLY\":\"Option 1\",\"esNuP\":\"Option 2\",\"dAWTD\":\"Option 3\",\"eZCpf\":\"Option 4\"}', 'radio_opt', 3, 1, '2020-11-10 12:04:46'),
(2, 'Question for Checkboxes', '{\"qCMGO\":\"Checkbox label 1\",\"JNmhW\":\"Checkbox label 2\",\"zZpTE\":\"Checkbox label 3\",\"dOeJi\":\"Checkbox label 4\"}', 'check_opt', 2, 1, '2020-11-10 12:25:13'),
(4, 'Sample question for the text field', '', 'textfield_s', 1, 1, '2020-11-10 13:34:21'),
(5, 'يرتبط المقرر الدراسي بالتخصص مع ربطة بأمثلة عملية', '{\"UlkTK\":\"أوافق بشدة\",\"YfglJ\":\"أوافق\",\"mzpNV\":\"غير موافق\",\"HZwcy\":\"غير موافق بشدة\"}', 'radio_opt', 0, 6, '2024-04-23 00:50:05'),
(6, 'المقرر له أهداف واضحة ومعلنة', '{\"grndU\":\"أوافق بشدة\",\"Ckadc\":\"أوافق\",\"PMBfN\":\"غير موافق\",\"EGhLO\":\"غير موافق بشدة\"}', 'radio_opt', 0, 6, '2024-04-23 00:50:59'),
(7, 'المقرر يزودني بالمعرفة المفيدة والفهم المتعمق', '{\"NJhAi\":\"أوافق بشدة\",\"vofDc\":\"أوافق\",\"lZcxN\":\"غير موافق\",\"sGzqr\":\"غير موافق بشدة\"}', 'radio_opt', 0, 6, '2024-04-23 00:51:48'),
(8, 'يتم تقديم المحاضرات وفقًا لمواعيد الجداول المحددة والمعلنة', '{\"BQoNP\":\"أوافق بشدة\",\"AKFzr\":\"أوافق\",\"udYKD\":\"غير موافق\",\"mrSjp\":\"غير موافق بشدة\"}', 'radio_opt', 0, 6, '2024-04-23 00:52:25'),
(9, 'تساهم المحاضرات في فهم موضوع المقرر', '{\"GmJeV\":\"أوافق بشدة\",\"oFqUc\":\"أوافق \",\"TXStr\":\"غير موافق\",\"gIdmG\":\"غير موافق بشدة\"}', 'radio_opt', 0, 6, '2024-04-23 00:53:06'),
(10, 'اكتب مدي استفادتك من المقرر وكيف يمكن التحسين من وجهة نظرك ؟', '', 'textfield_s', 0, 6, '2024-04-23 00:57:37'),
(11, 'المقرر له أهداف واضحة ومعلنة', '{\"dlJGC\":\"أوافق\",\"wMTaE\":\"غير موافق\",\"vNkoZ\":\"أوافق بشدة\",\"JympS\":\"غير موافق بشدة\"}', 'radio_opt', 0, 8, '2024-05-01 23:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `survey_set`
--

CREATE TABLE `survey_set` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_set`
--

INSERT INTO `survey_set` (`id`, `title`, `description`, `user_id`, `start_date`, `end_date`, `date_created`) VALUES
(6, 'Advanced Database - CSE323', 'Feedback survey for Advanced Database - CSE323 ', 0, '2024-01-01', '2024-07-23', '2024-04-23 00:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2 = Staff, 3= Student',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+123456789', 'Sample address', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2020-11-10 08:43:06'),
(4, 'Ahmed', 'Mohamed', 'E', '8747808787', 'Mansoura', 'ahmed@nmu.edu.eg', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2020-11-10 16:21:02'),
(5, 'Abdallah', 'Monir', 'Amir', '+20123456789', 'Mansoura', 'abdallah@nmu.edu.eg', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2024-04-23 00:58:48'),
(6, 'Mazen', 'Fathy', 'E', '12345', 'Mahala', 'mazen@nmu.edu.eg', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2024-04-23 01:03:00'),
(7, 'Ahmed', 'Haseeb', 'A', '12345', 'Mansoura', 'abed@nmu.edu.eg', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2024-04-23 01:03:30'),
(8, 'Karen', 'Gerges', 'Y', '12345', 'Cairo', 'karen@nmu.edu.eg', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2024-04-23 01:04:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_set`
--
ALTER TABLE `survey_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `survey_set`
--
ALTER TABLE `survey_set`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
