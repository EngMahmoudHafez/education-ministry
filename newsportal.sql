-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2023 at 11:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'مدير المشروع', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2023-12-05 22:02:34'),
(3, 'مدير فرعى', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2021-11-10 18:28:11', '2023-12-05 22:02:40'),
(4, 'أحمد', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2021-11-10 18:28:32', '2023-12-05 22:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'المعلمين ', 'كل ما يخص المعلمين', '2021-06-05 18:30:00', '2023-12-05 19:34:11', 1),
(5, 'الجامعات الحكومية', 'كل ما يخص الجامعات الحكومية', '2021-06-13 18:30:00', '2023-12-05 20:50:18', 1),
(6, 'باحثين', 'الباحثين', '2021-06-21 18:30:00', '2023-12-05 20:56:24', 1),
(7, 'اولياء الامور', 'ما يهتم به اولياء الامور', '2021-06-21 18:30:00', '2023-12-05 20:57:06', 1),
(8, 'طلاب', 'طلاب', '2021-11-07 18:17:28', '2023-12-05 20:58:00', 1),
(9, 'الجامعات الخاصة', 'الجامعات الخاصة', '2023-12-05 20:58:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int NOT NULL,
  `postId` int DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, 16, 'عبده حافظ مصطفي', 'hafz7062@gmail.com', 'ألف مبروك', '2023-12-05 22:06:56', 1),
(5, 25, 'محمود محمد  مصطفي', 'hafz7062@gmail.com', 'dd', '2023-12-05 23:45:27', 0),
(6, 16, 'asmaa abdallah', 'Asmaa@1.com', 'فخر للوطن', '2023-12-07 16:57:42', 1),
(7, 25, 'أحمد', 'phpgurukulofficial@gmail.com', 'hi', '2023-12-07 20:45:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` text NOT NULL,
  `ssn` text NOT NULL,
  `contact_type` enum('شكوى','اقتراح','استفسار','بلاغ') NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `name`, `email`, `phone`, `ssn`, `contact_type`, `content`, `date`) VALUES
(1, 'محمود', 'سشش@بيب', '12151', '548545', 'شكوى', 'يصصصص', '2023-12-05 23:48:53'),
(2, 'محمود محمد عبده حافظ مصطفي', 'hafz7062@gmail.com', '201068063836', '123456789123456', 'شكوى', 'hfgfgfdg', '2023-12-06 00:00:04'),
(3, 'محمود محمد عبده حافظ مصطفي', 'hafz7062@gmail.com', '201068063836', '123456789123456', 'شكوى', 'hfgfgfdg', '2023-12-06 00:00:36'),
(4, 'محمود محمد عبده حافظ مصطفي', 'hafz7062@gmail.com', '201068063836', '123456789123456', 'استفسار', 'hgfhghg', '2023-12-06 00:01:01'),
(5, 'أحمد', 'phpgurukulofficial@gmail.com', '201060000036', '123456789123456', 'بلاغ', 'اهلا', '2023-12-06 00:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2021-06-29 18:30:00', '2021-11-06 18:30:00'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2021-06-29 18:30:00', '2021-11-06 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(16, '4 ميداليات فضية وبرونزية يحقّقها طلبة التعليم في المملكة ضمن بطولة التميّز المهني للمحترفين بروسيا', 8, 10, '<div style=\"text-align: right; \"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">حقّق طلاب وطالبات التعليم في المملكة 4 ميداليات في بطولة التميّز المهني للمحترفين (المسابقات الروسية للمهارات) التي أُقيمت فعاليتها في روسيا الاتحادية بمدينة سانت بطرسبيرغ، على مدى أسبوع؛ بمشاركة طلبة يمثلون 12 دولة.</span></div><div style=\"text-align: right; \"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وحصد كل من الطالب يزن أحمد المالكي \"متنافس\" من تعليم الطائف، والطالب محمد ياسر كتوعة \"خبير\" من تعليم جدة، الميدالية الفضية في مجال المختبرات الكيميائية، فيما نال الطالب سعود عبدالعزيز آل مصالح \"متنافس\" من تعليم عسير الميدالية الفضية في مجال التركيبات الكهربائية.</span></div><div style=\"text-align: right; \"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وفازت الطالبتان؛ ريم أحمد الفطيس \"متنافسة\" من تعليم الطائف، وإيلان وليد الحركان \"خبيرة\" من تعليم القصيم، بالميدالية الفضية في مجال التحكم الصناعي، بينما حصل الطالب عبدالرحمن سعد الأحمري \"متنافس\" من تعليم عسير على الميدالية البرونزية في مجال التصميم الميكانيكي الهندسي.</span></div><div style=\"text-align: right; \"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وتسعى وزارة التعليم من خلال المشاركة في هذه البطولة الدولية إلى تنمية مهارات الطلاب والطالبات المشاركين في العديد من المجالات العلمية، وتطوير قدراتهم في علوم الرياضيات والهندسة، وتعزيز معارفهم ومداركهم في مجال تكنولوجيا المعلومات، حيث تهدف المسابقات الروسية للمهارات إلى تحسين مهارات الطلبة في قطاع التكنولوجيا والاقتصاد الرقمي، وتبادل أفضل الممارسات التعليمية، وتجسير الفجوة بين نظام التعليم واحتياجات الاقتصاد العالمي والصناعة.</span></div><div style=\"text-align: right; \"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وتضمّنت بطولة التميّز المهني للمحترفين بروسيا الاتحادية ورش عمل تنافسية، ترتكز على التدريب الجماعي للمشاركين على مهارات حديثة متنوعة؛ لتأهيلهم على مهن المستقبل، إلى جانب العديد من المناقشات والجلسات الإثرائية، إضافةً إلى معرض مصاحب لعرض أحدث التقنيات العلمية والصناعية، بحضور 50 ألف مشارك و1500 خبير لمئة مجال تنافسي. <br>​</span><br></div><p style=\"margin-bottom: 10px; color: rgb(66, 66, 66); line-height: 1.6; text-align: right;\"><br style=\"font-family: CoconNextArabic; font-size: 12px;\"></p>', '2023-12-05 21:53:28', '2023-12-07 22:38:07', 1, '4-ميداليات-فضية-وبرونزية-يحقّقها-طلبة-التعليم-في-المملكة-ضمن-بطولة-التميّز-المهني-للمحترفين-بروسيا', '6d2a9a0d94e1603692073f486a3520e2jpeg', 23, 'مدير المشروع', 'admin'),
(25, 'بحضور الممثل الخاص لرئيس وزراء بريطانيا لشؤون التعليم لدى المملكة..وزير التعليم يشارك في اجتماعات الطاولة المستديرة بين الجامعات السعودية والبريطانية', 5, 3, '<div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">شارك معالي وزير التعليم الأستاذ يوسف بن عبدالله البنيان اليوم في اجتماعات الطاولة المستديرة بين الجامعات السعودية والجامعات في المملكة المتحدة، بحضور البروفيسور السير ستيف سميث الممثل الخاص لرئيس وزراء بريطانيا لشؤون التعليم لدى المملكة العربية السعودية، وقيادات التعليم الجامعي وممثلي عدد من الجامعات في البلدين، وذلك بمقر وزارة التعليم بالرياض.</span></div><div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">ورحّب وزير التعليم في كلمته الافتتاحية بالسير ستيف سميث، وممثلي الجامعات البريطانية والسعودية؛ منوهاً بدور اجتماعات الطاولة المستديرة في تعزيز الشراكة الإستراتيجية المستمرة بين السعودية والمملكة المتحدة في مجال التعليم، والتي بدأت في عام 2018 عندما وقّع صاحب السمو الملكي الأمير محمد بن سلمان ولي العهد رئيس مجلس الوزراء –حفظه الله-&nbsp; ورئيسة وزراء المملكة المتحدة مذكرة تفاهم لتأسيس الشراكة التعليمية الإستراتيجية بين البلدين.</span></div><div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وقال معاليه: \"تركّز شراكتنا الإستراتيجية على ستة مجالات رئيسة، وهي؛ بناء شراكة أقوى وأعمق في مجال التعليم، ودعم التطوير المهني للتربويين السعوديين وتعزيز معارفهم ومهاراتهم وقدراتهم، وكذلك تعزيز التعاون والشراكات في مجال التعليم الجامعي، بما في ذلك التعاون البحثي، وابتعاث الطلبة، والتعليم العابر للحدود الوطنية\".</span></div><div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وأضاف الوزير البنيان أن الشراكة التعليمية مع المملكة المتحدة تهدف إلى زيادة مشاركة قطاع التعليم الخاص البريطاني في نظام التعليم السعودي وإنشاء المدارس والجامعات البريطانية، ومعالجة الفجوات في المهارات وتدريب المتخصصين في الرعاية الصحية، إضافةً إلى دعم تطوير التعليم، بما يتماشى مع طموح رؤية السعودية 2030، وذلك من خلال مشاركة السياسات المتعلقة بالاحتياجات التعليمية الخاصة والإعاقات (SEND) وتطوير المناهج الدراسية.</span></div><div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وأكد الوزير البنيان أهمية العمل ضمن هذه الشراكة؛ على افتتاح جامعتين بريطانيتين في المملكة بحلول عام 2025، وتفعيل برامج التبادل الطلابي في الجامعات السعودية؛ لضمان حصول طلابنا وطالبتنا على أحدث المعارف والتدريب العملي، إلى جانب تعزيز الفرص البحثية للباحثين من البلدين، وإقامة مشاريع بحثية مشتركة تؤدي إلى مخرجات عالية الجودة.</span></div><div style=\"color: rgb(33, 37, 41); font-family: CoconNextArabic; font-size: 12px; text-align: right;\"><span class=\"ms-rteFontSize-4\" style=\"font-size: 18pt;\">وتناول برنامج عمل اجتماعات الطاولة المستديرة بين الجامعات السعودية والجامعات في المملكة المتحدة، مناقشة موضوع الشراكة العالمية في التعليم ضمن إطار المملكة المتحدة للعلوم والتكنولوجيا، والاستثمار في التعليم الجامعي بالمملكة، ومبادرة المدينة التعليمية الابتكارية السعودية، وكذلك التعاون الثنائي بين الجانبين في مجال البحث والابتكار، واستعراض المنظومة الوطنية للبحث والتطوير والابتكار في المملكة وتوجهاتها الإستراتيجية، إضافةً إلى دور المجلس الثقافي البريطاني في دعم التعاون التعليمي الجامعي بين البلدين، مع عقد لقاءات ثنائية بين الجامعة السعودية ونظيراتها البريطانية.​</span></div>', '2023-12-05 22:32:09', '2023-12-07 20:46:56', 1, 'بحضور-الممثل-الخاص-لرئيس-وزراء-بريطانيا-لشؤون-التعليم-لدى-المملكة..وزير-التعليم-يشارك-في-اجتماعات-الطاولة-المستديرة-بين-الجامعات-السعودية-والبريطانية', '36915ca15521765d26186ab113767c37jpeg', 9, 'مدير المشروع', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int NOT NULL,
  `CategoryId` int DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'الوكلاء', 'الوكلاء', '2021-06-21 18:30:00', '2023-12-05 21:02:08', 1),
(4, 3, 'معلم اول', 'معلم اول \n\n', '2021-06-29 18:30:00', '2023-12-05 21:04:11', 1),
(5, 3, 'مشرفون', 'مشرفون', '2021-06-29 18:30:00', '2023-12-05 21:04:31', 1),
(6, 5, 'هندسة', 'هندسة', '2021-06-30 18:30:00', '2023-12-05 21:05:10', 1),
(7, 6, 'دراسات عليا', 'دراسات عليا', '2021-06-30 18:30:00', '2023-12-05 21:03:26', 1),
(8, 6, 'باحثين قدامى', 'باحثين قدامى', '2021-06-30 18:30:00', '2023-12-05 21:05:46', 1),
(9, 7, 'مجلس أمناء', 'مجلس امناء', '2021-06-30 18:30:00', '2023-12-05 21:06:22', 1),
(10, 8, 'ثانوى', 'ثانوى', '2021-11-07 18:18:25', '2023-12-05 21:06:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`);

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`),
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`),
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`);

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
