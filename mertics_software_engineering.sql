-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: custsql-ipg22.eigbox.net
-- Generation Time: Jan 09, 2020 at 12:57 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mertics_software_engineering`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` int(11) NOT NULL,
  `added_by` varchar(450) NOT NULL,
  `name` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`id`, `added_by`, `name`, `mobile`) VALUES
(1, 'ilham', '50', 'null'),
(2, 'ilham', '50', 'null'),
(3, 'ilham', 'safeek', '777140803'),
(4, 'ilham', 'safeek', '7777589478'),
(5, 'ilham', 'safeek', '+94777140803'),
(6, 'ilham', 'safeek', '+9476272825'),
(7, 'ilham', 'safeek', '+94762728241'),
(8, 'ilham', 'safeek', ''),
(9, 'ilham', 'safeek', '40');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'CODE@123', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `idteam` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `post_title` varchar(200) NOT NULL,
  `photo` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(3000) NOT NULL DEFAULT '',
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`idteam`, `name`, `email`, `post_title`, `photo`, `description`, `type`) VALUES
(1, 'Ilham Safeek', 'ilham@mertics.com', 'Founder, Chief Executive Officer, Chief Architect', 'assets/img/team/ilhamsafeek-profile.png', 'Prior to founding Mertics, Ilham was at Jobsplus Digital Online (pvt) Ltd. as senior software engineer for 2 years. During this period, he engaged with developing plug and play Enterprise software solutions developmet and developed telco applications as a partner of Dialog Axiata. Jobsplus Digital Online (pvt) Ltd was the first company he worked and he was the solution architect for the first freelancing web portal in Sri Lanka which launched in 2016 in Colombo by the company. He is a java expert and he played a wide range of roles from the development to marketing own products as he worked as freelancer. He has 3 years experience in solution architecture field. He is a Information Technology Honours degree holder from the University of Moratuwa, Sri Lanka.', 'leader'),
(2, 'Amjad Azeez', 'amjad@mertics.com', 'Chief Executive Officer', 'assets/img/team/amjadazeez-profile.png', 'Prior to founding Mertics, Amjad was at LSEG Business Services (Pvt) Ltd as an Information Risk Technical Analyst. He was responsible for analyze, define, create and control user access and access risks. Amjad started his career at Aitken Spence Technologies (Pvt) Ltd as an Intern Software Engineer, where as a member of Oracle Enterprise Resource Planning team, he implemented soultions using Oracle ERP and Oracle APEX. He was resposible for evaluating and assessing new technologies in research and development projects. Thereafter, he joined LineaSix (Pvt) Ltd as Software Engineer. He was responsible for Finacle core customizations and implementing and designing, developing APIs through WSO2 APIM. During that period, he won \"Fintech Hack 2017\" hackathon hosted by Nations Trust Bank. He holds a B.Sc (Hons) in Information Technology from University of Moratuwa.', 'leader'),
(3, 'Zufry Ahmed', 'zufry@mertics.com', 'Chief Marketing Executive', 'assets/img/team/zufryahmed-profile.png', 'Zufry worked at Oklo (pvt) Ltd and axienta (pvt) Ltd as software automation engineer and  project coordinator before he joined mertics Software Engineering. In his previous working period he gained vast knowledge and experience in Enterprise Resource Planning projects for various industries such as Sales Force Automation, FMCG, Telco and Tour Management software projects. He holds BSc(Hons) in Information Technology degree from University of Moratuwa.', 'leader'),
(4, 'Irfan Banna', 'irfan@mertics.com', 'Software Engineer', 'assets/img/team/irfanbanna-profile.png', '', 'team');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`) VALUES
(1, 'ilham');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `idvacancy` int(10) UNSIGNED NOT NULL,
  `vacancy` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(5000) NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT '',
  `closing_date` varchar(45) NOT NULL DEFAULT '',
  `experience` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`idvacancy`, `vacancy`, `description`, `type`, `closing_date`, `experience`) VALUES
(1, 'Java Developer', 'Experience with MySQL/Oracle/SQL Server.  Good with problem solving and analytical skill.  Self-starter and effective team player.  Experience with Spring framework and Hibernate.  Experience with Tomcat servers.  Strong understanding of Core Java and advanced working knowledge of J2EE (JSPs, Servlets, Web Services and JDBC) is a must.  Written & verbal communication skills should be excellent.  Determining design methodologies and tool sets; completing programming using languages and software products; designing and conducting tests.  Designing, coding and debugging of J2EE Applications as per the product standard.  Be proactive about solving problems even if it\'s outside of your area and be ready to take on additional initiatives and responsibilities as they emerge.  Should be comfortable working in a high energy environment and be eager to solve tough challenges.  Follow best practices and develop reusable code', 'Full time', '12/11/2018', '1+ year'),
(2, 'Project Manager', 'Translate business and user requirements into technical specifications. Manage full life-cycle software development projects in an Agile environment. Design, scope, and execute project plans working with cross-functional teams. Expert at building, and maintaining important project documentation outlining scope, cost, schedule, solution, risks, and issues. Experience optimizing change and release management processes. Skilled at Root Cause Analysis (RCA) for the purpose of product improvements. Skilled in communication, highly adaptable, and capable of handling multiple projects', 'Full time', '25/11/2018', '1+ year'),
(3, 'QA Engineer', 'Create test plans and test cases. Review user interfaces for conformity and functionality. Efficiently execute test cases across all functional areas of our products. Review product user interface for conformity to design guidelines. Find, isolate, document, regress, and track bugs through resolution. Interpret and report testing results, and be a vocal proponent for quality in every phase of the development process. Work with Software Development Engineers to understand the overall technical architecture and how each feature is implemented', 'Full time', '25/11/2018', '1+ year'),
(4, 'Content Writer', '', 'Full time', '25/11/2018', '1+ year'),
(5, 'Mobile App Developer', 'Experience in developing Android / iOS / Windows Mobile Apps based on Cordova.  Ability to debug apps using Android Studio / X Code / Visual Studio.  Good understanding of core Javascript concepts and PEST services.  Basic understanding of software design patterns and object-oriented programming concepts.  Experience in developing test-driven and maintainable code.  Experience in Git or any other version control system.  Contributed to at least one app in Google Play or Apple Store.  Ability to produce quality outcome within short timelines.  Knowledge in Ul / UX design would be an advantage.  Knowledge in CSS/SCSS would be an advantage.   Strong command over English language.  Positive attitude and can-do mind-set', 'Full time', '15/01/2019', '1+ year'),
(6, 'PHP Developer', 'Ability to write valid, clean, efficient and well structured & documented code.  Produce detailed specifications.  Troubleshoot, test and maintain the core product software and databases to ensure strong optimization and functionality.  Contribute in all phases of the development lifecycle.  Develop and deploy new features to facilitate related procedures and tools if necessary.  Experience with the OOPS, MySQL, Apache, HTML, JavaScript and Ajax.  Knowledge on CMS like Magento and at least one frameworks like AngularJS/ ReactJS/ CI/ YII/ Ionic/ Python.  Very good understanding of database technologies and SQL Optimization.  Proficient in writing Web services.  Familiarity with Web technologies trends and the evolution of Internet.  Good knowledge of Version Control tools like GIT.  Passion for best design and coding practices and a desire to develop new bold ideas.  Good written and verbal communication skills', 'Full time', '15/01/2019', '1+ year'),
(7, 'Business Analyst', 'Prepare detail requirement specifications, functional specification, use case & work floor diagrams & manage the requirements throughout the project life-cycle.  Works with business partner to elicit high-level requirements and capture business needs.  Road map planning, business process redesign, gap analysis & developing proof-of-concepts.  Clearly articulates and documents business requirements.  Assesses the risks of various solutions and prioritizes competing business demands.  Build strong relationship with senior stakeholders locally as well as globally.  Proactively resolves customer satisfaction issues. Support ongoing business intelligence, competitive & best practice efforts.  Knowledge of consulting practices, solution conceptualization current technology concepts', 'Full time', '25/11/2018', '1+ year'),
(8, 'Software Engineer - Angular Js', 'We are hiring software engineers! (Short project contract )? We are looking for individuals with creativity coupled with good analytical and problem-solving skills. The ideal candidate should be passionate about learning and using new technologies (Sounds in Angular and ionic frameworks).', 'Contract Basis', '08/03/2019', '1+ year');

-- --------------------------------------------------------

--
-- Table structure for table `woki_history`
--

CREATE TABLE `woki_history` (
  `id` int(11) NOT NULL,
  `type` varchar(450) NOT NULL,
  `sender` varchar(300) NOT NULL,
  `receiver` varchar(300) NOT NULL,
  `time` date NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `woki_history`
--

INSERT INTO `woki_history` (`id`, `type`, `sender`, `receiver`, `time`, `amount`) VALUES
(1, 'transfer', '+94762068698', '+94777140803', '0000-00-00', 2),
(2, 'transfer', '+94762068698', '+94777140803', '0000-00-00', 10),
(3, 'transfer', '+94762068698', '+94777140803', '0000-00-00', 15),
(4, 'transfer', '+94762068698', '+94777140803', '0000-00-00', 2.3),
(5, 'transfer', '+94776565724', '+94777140803', '2013-10-10', 12.5),
(6, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 3),
(7, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 3.12),
(8, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 2),
(9, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 3),
(10, 'transfer', '+94776565724', '+94777140803', '2017-04-00', 2.5),
(11, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 2),
(12, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 2),
(13, 'transfer', '+94776565724', '+94777140803', '0000-00-00', 5),
(14, 'transfer', '+94762068698', '+94777140803', '0000-00-00', 1),
(15, 'transfer', '+94762728241', '+94777140803', '0000-00-00', 1000),
(16, 'transfer', '+94777140803', '+94777140803', '0000-00-00', 100),
(17, 'transfer', '+94777140803', '+94777140803', '0000-00-00', 100),
(18, 'transfer', '+94777140803', '+94777140803', '0000-00-00', 350),
(19, 'transfer', '+94762728241', '+94777140803', '0000-00-00', 3500),
(20, 'transfer', '+94762728241', '+94777140803', '0000-00-00', 20),
(21, 'transfer', '+94777140803', '+94777140803', '2023-12-24', 20),
(22, 'transfer', '+94777140803', '+94777140803', '0000-00-00', 10),
(23, 'transfer', '+94777140803', '777140803', '0000-00-00', 20),
(24, 'transfer', '+94762728241', '777140803', '0000-00-00', 200),
(25, 'transfer', '+94762728241', '+94777140803', '0000-00-00', 100),
(26, 'transfer', '+94777140803', '+94762728241', '0000-00-00', 200),
(27, 'transfer', '+94777140803', '+94762728241', '0000-00-00', 2000),
(28, 'transfer', '+94777140803', 'null', '0000-00-00', 200),
(29, 'transfer', '+94777140803', '+94762728241', '0000-00-00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `woki_places`
--

CREATE TABLE `woki_places` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `offer_item` varchar(250) NOT NULL,
  `offer_price` varchar(250) NOT NULL,
  `logo` varchar(2500) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `radius` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `woki_places`
--

INSERT INTO `woki_places` (`id`, `name`, `location`, `offer_item`, `offer_price`, `logo`, `contact`, `radius`) VALUES
(12, 'Sangari La', '43434343,35436464', 'Chicken', '20000', 'ewtwertwetwt', '3435498376493', '200'),
(14, 'Perl City', '17 Bauddhaloka Mawatha, Colombo 00400', 'Chicken', '20000', 'ewtwertwetwt', '3435498376493', '300'),
(15, 'Taj Samudra', 'No 25 Galle Face Center Rd, Colombo 80000', 'Bun', '20000', '3534635', '3435498376493', '200'),
(16, 'Sangari La hotel and bakery', 'No 25 Galle Face Center Rd, Colombo 80000', 'Bun', '20000', 'ewtwertwetwt', '3435498376493', '300'),
(18, 'KFC', 'No 25 Galle Face Center Rd, Colombo 80000', 'Bun', '30000', '3534635', '235756876896', '200'),
(25, 'ilham', '', '', '17400', '', '+94762728241', ''),
(43, 'Ilham', '43434343,35436464', 'Bun', '-30.749999999999993', 'ewtwertwetwt', '+94770581168', '200'),
(46, 'ilham', '', '', '21.7', '', '+94762068698', ''),
(47, 'ilham', '', '', '14.879999999999999', '', '+94776565724', ''),
(49, 'ilham', '', '', '2231', '', '+94777140803', ''),
(50, 'ilham', '', '', '49', '', '+94762068698', ''),
(54, 'ilham', '', '', '50', '', '756804300', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`idteam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`idvacancy`);

--
-- Indexes for table `woki_history`
--
ALTER TABLE `woki_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woki_places`
--
ALTER TABLE `woki_places`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `idteam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `idvacancy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `woki_history`
--
ALTER TABLE `woki_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `woki_places`
--
ALTER TABLE `woki_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
