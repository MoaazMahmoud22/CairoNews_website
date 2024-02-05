-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:48 PM
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
-- Database: `caironews`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` longtext NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`Content`, `category`, `ArticleID`, `image`, `DateAdded`) VALUES
('  A Decade After Sacramento Showed Up for the Kings, the Kings Return the Favor\nThe surprising Kings are pushing Golden State in their first-round N.B.A. playoff matchup. Sacramento fans have waited a long time for a team that matched their fervor.', 'sport', 38, '../images/01.53.5724streeter-sot-lede-lvtb-jumbo.webp', '2023-05-05 10:38:26'),
('  Wolves 2-0 Crystal Palace: Joachim Andersen’s early own goal and Ruben Neves’ late penalty take home side away from danger', 'sport', 39, '../images/10.09.0201.57.27bh7m17do.png', '2023-05-09 08:09:02'),
('  F1 Sprint Shootout: New format with second qualifying session confirmed for 2023 season', 'sport', 40, '../images/01.59.33skysports-f1-george-russell_6132955.jpg', '2023-05-05 10:38:26'),
('  artists\r\nEvery Painting by Johannes Vermeer, Ranked\r\nAlthough he produced fewer than 40 paintings, almost every one of them is memorable.', 'art', 41, '../images/02.00.51617vcuxl.png', '2023-05-05 10:38:26'),
('  Embattled Belgian Museum Director to Depart, $30 M. Louise Bourgeois Spider Could Smash Records, and More: Morning Links for April 25, 2023', 'art', 42, '../images/02.01.4796yf27dq.png', '2023-05-05 10:38:26'),
('FOLLOW US\r\nIcon LinkPlus Icon\r\nIcon LinkPlus Icon\r\nIcon LinkPlus Icon\r\nIcon LinkPlus Icon\r\nIcon LinkPlus Icon\r\nIcon LinkPlus Icon\r\nPlus IconClick to expand the Mega Menu\r\nMenu\r\nREAD NEXT\r\nLandmark Acquisition of Reynolds Portrait by LA’s Getty Museum and London’s National Portrait Gallery Is Finalized\r\nARTnews\r\nSUBSCRIBE\r\nTO ART IN AMERICA\r\nPlus IconClick to Expand Search Input\r\nhome\r\nartnews\r\nnews\r\n', 'art', 43, '../images/02.05.009sre75mu.png', '2023-05-05 10:38:26'),
('  Chicken thighs are the unsung heroes of the protein realm. Whether you bake, braise, glaze or grill them, they always cook up juicy and delicious', 'food', 44, '../images/02.07.221525187349003.jpeg', '2023-05-05 10:38:26'),
('  ENTONVILLE, ARK. — Frozen food startup Counter has closed $1.2 million in seed funding ahead of its launch in Sam’s Club stores across the country this summer', 'food', 45, '../images/02.07.43CounterPkgNewLead (1).jpg', '2023-05-05 10:38:26'),
('  LAS VEGAS — The International Pizza Expo took place March 28-30 in Las Vegas', 'food', 46, '../images/02.08.00donna-berry-pizza_lead_AdSt_Zarya-Maxim.jpg', '2023-05-05 10:38:26'),
('  Science Book, The: Everything You Need to Know About the World and How It Works.', 'science', 47, '../images/02.08.25scbook7.jpg', '2023-05-05 10:38:26'),
('  A traditional-style general reference book for kids covering all the key subjects including Arts, People, History, Earth, Nature, Science, Technology, Space, and the Human Body in alphabetic order.', 'science', 48, '../images/02.08.52scbookchild4.jpg', '2023-05-05 10:38:26'),
('  A traditional-style general reference book for kids covering all the key subjects including Arts, People, History, Earth, Nature, Science, Technology, Space, and the Human Body in alphabetic order.', 'science', 49, '../images/02.09.23scbookchild5.jpg', '2023-05-05 10:38:26'),
('Dutch Cup: PSV Eindhoven beat Ajax on penalties to retain trophy', 'sport', 62, '../images/03.18.36_129559057_gettyimages-1252449884.jpg', '2023-05-05 10:38:26'),
('Mikel Arteta says Arsenal Premier League title race with Man City is not over as they prepare to face Frank Lampard Chelsea', 'sport', 63, '../images/03.31.371ht0ro58.png', '2023-05-05 10:38:26'),
('Black holes resolve paradoxes by destroying quantum states\r\nA classic quantum experiment done near a black hole would create a paradox, physicists report. But not if the black hole collapses quantum states.', 'science', 64, '../images/02.02.14b8b4gvot.png', '2023-05-05 10:38:26'),
('  Is it better to boil or steam vegetables?\r\nIt is better, nutritionally speaking, to steam vegetables, but that doesn’t mean you have to, says our panel of cooks', 'food', 67, '../images/12.43.44wh59jrjj.png', '2023-05-05 10:43:44'),
('  Is your fridge a vegetable gIn her fortnightly food column, cook and author Alice Zaslavsky shares tips and recipes with Australian produce. This week – shchi, and how to avoid wilted vegraveyard? How to revive dead produce into crisper soup', 'food', 68, '../images/12.47.09e7ked79i.png', '2023-05-05 10:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `author_article`
--

CREATE TABLE `author_article` (
  `ArticleID` int(11) NOT NULL,
  `AuthorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author_article`
--

INSERT INTO `author_article` (`ArticleID`, `AuthorName`) VALUES
(38, 'moaaz'),
(39, 'moaaz'),
(40, 'moaaz'),
(41, 'moaaz'),
(42, 'moaaz'),
(43, 'moaaz'),
(44, 'moaaz'),
(45, 'moaaz'),
(46, 'moaaz'),
(47, 'moaaz'),
(48, 'moaaz'),
(49, 'moaaz'),
(62, 'mennashrief'),
(63, 'mennashrief'),
(64, 'moaaz'),
(67, 'moaaz'),
(68, 'mennashrief');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `CID` int(11) NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` text NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`CID`, `DateAdded`, `content`, `ArticleID`, `username`) VALUES
(154, '2023-05-02 21:00:00', 'ssss', 64, 'nourhan'),
(155, '2023-05-02 21:00:00', 'wow', 63, 'nourhan'),
(156, '2023-05-03 11:46:47', 'wow', 64, 'nada'),
(157, '2023-05-03 11:49:35', 'Hello', 64, 'nada'),
(158, '2023-05-03 11:53:20', 'nice article', 64, 'MennaMansour'),
(160, '2023-05-05 08:55:13', 'nice', 63, 'nada');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedID` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedID`, `content`, `username`) VALUES
(46, 'Nice Website', 'Ahmed'),
(47, 'Wonderfull!\r\n', 'Moaaz'),
(49, 'Beutfulllll', 'nada'),
(53, 'nice\r\n', 'nada');

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE `jokes` (
  `JokesID` int(11) NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`JokesID`, `Content`) VALUES
(9, 'Why do we tell actors to “break a leg?”\r\nBecause every play has a cast. Here are some dark jokes to check out if you have a morbid sense of humor.'),
(10, 'Helvetica and Times New Roman walk into a bar.\r\n“Get out of here!” shouts the bartender. “We don’t serve your type.”'),
(11, 'Yesterday I saw a guy spill all his Scrabble letters on the road. I asked him, “What’s the word on the street?”\r\nOnce my dog ate all the Scrabble tiles. For days he kept leaving little messages around the house. Don’t miss these hilarious egg puns that will absolutely crack you up.'),
(12, 'مرة واحد نام متاخر لقي الحلم بدأ.'),
(13, 'مره نقاش بنته تعبت سنفرها برا.'),
(14, 'مره فرخه جابت مجموع دخلت كلية حقوووووك');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `ArticleID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `LinkID` int(11) NOT NULL,
  `link_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`ArticleID`, `username`, `LinkID`, `link_url`) VALUES
(63, 'ahmed', 15, 'thearticle.php?articleID=63'),
(63, 'nada', 18, 'thearticle.php?articleID=63'),
(39, 'nada', 20, 'thearticle.php?articleID=39'),
(68, 'nada', 27, 'thearticle.php?articleID=68'),
(67, 'nada', 28, 'thearticle.php?articleID=67');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `content` varchar(5000) NOT NULL,
  `NotificationID` int(11) NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`content`, `NotificationID`, `DateAdded`) VALUES
('GT handed MI their biggest defeat (by runs) in IPL since 2017 by defeating them by 55 runs at the Narendra Modi Stadium in Ahmedabad. GT recorded their biggest total in IPL by scoring 207/6. They restricted MI to 152/9. GT spinner Noor Ahmad took three wickets in the match. GT have jumped to the second position on points table.', 11, '2023-05-03 15:55:02'),
('Wicketkeeper-batter Rishabh Pant has been effectively ruled out of Asia Cup in September and ODI World Cup in October-November, Cricbuzz reported. It will take seven to eight months for Pant to be cricket-fit, the report added. The report further stated that Pant will take at least a couple of weeks to walk without any help.', 29, '2023-05-03 16:00:02'),
('Aditya Birla Sun Life Insurance Company Limited aims to empower you to fulfil your life goals, meet responsibilities and financially secure your family even in your absence. It urges customers to make right investment with ABSLI Nishchit Aayush savings life insurance plan with guaranteed income*, lumpsum benefits at policy maturity, choice of income variant and life cover across policy term.', 30, '2023-05-03 16:00:12'),
('The Supreme Court (SC) on Tuesday stayed a Madras High Court order in January that set aside the ban on the sale of gutka, pan masala and other tobacco products in Tamil Nadu. \"It is a public health concern and my duty is to protect people of the state,\" senior advocate Kapil Sibal, appearing for the state government, said.', 31, '2023-05-03 16:00:20'),
('American singer, activist and actor Harry Belafonte passed away on Tuesday aged 96. Harry, who campaigned for black civil rights in the US, died of congestive heart failure at his New York home, his spokesman Ken Sunshine said. Mourning his demise, Oprah Winfrey wrote on Instagram, \"Thank you for your music, your artistry, activism, fight for civil rights and justice.\"\r\n\r\n', 32, '2023-05-03 16:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `image` varchar(1000) NOT NULL,
  `StoryID` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expiration_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`image`, `StoryID`, `timestamp`, `expiration_Time`) VALUES
('../images/645a6be1a4bd3_64582875b2d13_ypx1yurh.png', 12, '2023-05-09 15:50:57', '2023-05-10 14:50:57'),
('../images/645a6be95c6a9_64582871c0747_mqe9yfuc.png', 13, '2023-05-09 15:51:05', '2023-05-10 14:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `UserName` varchar(50) NOT NULL,
  `package` varchar(50) NOT NULL,
  `CrdCard` int(11) NOT NULL,
  `SubID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`UserName`, `package`, `CrdCard`, `SubID`) VALUES
('nada', '20$ per Year', 4535345, 4),
('ahmed', '10$ per Month', 5086656, 5),
('nourhan', '20$ per Year', 455757, 6),
('MennaMansour', '50$ Unlimited', 34234645, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pass`, `email`, `position`, `FullName`, `image`) VALUES
('ahmed', '1234', 'ahmed@yahoo', 'user', 'ahmed', ''),
('MennaMansour', '1234', 'mennaa@yahoo.com', 'user', 'mennamansour', '../images/12.51.07WhatsApp Image 2023-05-03 at 01.52.49.jpg'),
('mennashrief', '1234', 'menna@yahoo.com', 'author', 'MennaShrief', '../images/03.32.496.jpg'),
('moaaz', '1234', 'moaaz@yahoo.com', 'author', 'Moaaz Mahmoud', '../images/10.51.50IMG_2542.JPG'),
('mostafa', '1234', 'mostafa@yahoo.com', 'admin', 'Mostafa Mahmoud', '../images/10.49.43sasa.jpg'),
('nada', '1234', 'NadaKamel12@yahoo.com', 'user', 'Nada Kamel', '../images/07.14.5312.50.22WhatsApp Image 2023-05-01 at 07.34.24.jpg'),
('nourhan', '1234', 'nourhan@yahoo.com', 'user', 'Nourhan Magdy', '../images/01.15.54WhatsApp Image 2023-05-03 at 14.04.17.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_article`
--

CREATE TABLE `user_article` (
  `ArticleID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `likeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_article`
--

INSERT INTO `user_article` (`ArticleID`, `username`, `likeID`) VALUES
(64, 'nourhan', 7),
(63, 'nourhan', 11),
(62, 'nourhan', 12),
(39, 'ahmed', 15),
(64, 'ahmed', 17),
(62, 'ahmed', 18),
(63, 'ahmed', 19),
(67, 'nada', 22),
(63, 'nada', 24),
(39, 'nada', 26),
(68, 'nada', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ArticleID`);

--
-- Indexes for table `author_article`
--
ALTER TABLE `author_article`
  ADD KEY `ArticleID` (`ArticleID`),
  ADD KEY `author_article_ibfk_2` (`AuthorName`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CID`),
  ADD KEY `comment_ibfk_1` (`ArticleID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`JokesID`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`LinkID`),
  ADD KEY `links_ibfk_1` (`ArticleID`),
  ADD KEY `links_ibfk_2` (`username`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NotificationID`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`StoryID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`SubID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_article`
--
ALTER TABLE `user_article`
  ADD PRIMARY KEY (`likeID`),
  ADD KEY `ArticleID` (`ArticleID`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `ArticleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `jokes`
--
ALTER TABLE `jokes`
  MODIFY `JokesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `LinkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `NotificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `StoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `SubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_article`
--
ALTER TABLE `user_article`
  MODIFY `likeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_article`
--
ALTER TABLE `author_article`
  ADD CONSTRAINT `author_article_ibfk_1` FOREIGN KEY (`ArticleID`) REFERENCES `articles` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_article_ibfk_2` FOREIGN KEY (`AuthorName`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ArticleID`) REFERENCES `articles` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_ibfk_1` FOREIGN KEY (`ArticleID`) REFERENCES `articles` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `links_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_article`
--
ALTER TABLE `user_article`
  ADD CONSTRAINT `user_article_ibfk_1` FOREIGN KEY (`ArticleID`) REFERENCES `articles` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_article_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
