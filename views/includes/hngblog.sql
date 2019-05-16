-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 04:31 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hngblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) UNSIGNED NOT NULL,
  `catTitle` varchar(255) DEFAULT NULL,
  `catSlug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`, `catSlug`) VALUES
(1, 'Back End', 'back-end'),
(2, 'Development', 'development'),
(5, 'FrontEnd', 'frontend'),
(4, 'Design', 'design'),
(6, 'News', 'news'),
(7, 'General', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'lekia', '$2y$10$oBc2BhaSHV8GWgff66v9leBjlIqseExL62KaVFQbyh2OFHwruaBMO', 'lekiagospel@gmail.com'),
(2, 'Demo', '$2y$10$Jw0RSR.hVqfM2Y9W40xxGuhidZilkPiXE.NABhxOTChE9aldH1N3K', 'info@hng.tech'),
(3, 'Yiga', '$2y$10$juNypYWYEpRz/iVNlvL7u.7.CDdsxCABseX0.kbp2q1aFPD8BmUVC', 'Yigaue20@yahoo.com'),
(5, 'prosper', '$2y$10$6yFgEiu8o5LiOAVzjzYkFOdnUNrVDSM6NQtUCsSdUR2TcIiFs.jxC', 'Yigaue20@yahoo.com'),
(6, 'peace', '$2y$10$bW4QIzyQTb8IylCEaNvx2eeHe.ROSbbgFLldeceIBO9WuI.JrtxdG', 'info@jarazone.com'),
(7, 'deborah', '$2y$10$UgjNNQvqSnL197r.z/ywFOKuqLVd5umUUUeeYIdJLIVgLagQAyZJa', 'pindroptech@gmail.com'),
(8, 'esther', '$2y$10$gxe.qoh00iMgHwH0txkxI..n/xKLvUhUjsAJgutw9p1yNotT5/Mvy', 'esther@peace.com');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) UNSIGNED NOT NULL,
  `memberID` int(4) DEFAULT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `memberID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(3, 1, '5 THINGS I WISH I KNEW YEARS AGO AS A DEVELOPER IN SECURING MY DREAM JOB', '<p>Hello developer, I am glad you found this article. I wrote this with you in mind, and it is meant to guard you on this path. Why bear another burden when there is help? Life is lot easier when there are those on whose shoulders you can climb. Here I will be sharing briefly with you some truth that will boast your velocity whether as beginner, intermediate or you&rsquo;ve been around a while.</p>', '<h2>5 THINGS I WISH I KNEW YEARS AGO AS A DEVELOPER IN SECURING MY DREAM JOB</h2>\r\n<p>Hello developer, I am glad you found this article. I wrote this with you in mind, and it is meant to guard you on this path. Why bear another burden when there is help? Life is lot easier when there are those on whose shoulders you can climb. Here I will be sharing briefly with you some truth that will boast your velocity whether as beginner, intermediate or you&rsquo;ve been around a while. Becoming a developer is challenging and yet exciting. You&rsquo;ve to love the job, or I should call it calling. It is something that you can&rsquo;t do casually. It requires a consistent and conscientious effort. The discipline, dedication and diligence are not words but in doing. Nobody pays to hear you talk as developer, you paid to do. So, sharpening your skills is top priority. &lsquo;Okay, enough intro let&rsquo;s get to it&rsquo;. You are right we&rsquo;re getting there. I will list them out and we begin.</p>\r\n<ul>\r\n<li>Get a corner in the room</li>\r\n<li>Work your corner before inviting guest</li>\r\n<li>Keep up the standard</li>\r\n<li>Who say your dream Job is impossible?</li>\r\n<li>Don&rsquo;t reinvent the wheels, Leverage on platforms</li>\r\n</ul>\r\n<h2>Get a Corner in the Room</h2>\r\n<p>Joining the world of developers may sound exciting. You may have excitedly proclaimed &lsquo;I am a developer&rsquo;, only to discover your excitement just died the next minute on peeping in. You don&rsquo;t have be discouraged, we all felt that way too. There are millions of developers round the world and you just +1. This should not scare you. You are unique in the million. Whatever, has brought you the developers society needs you. The number of developers is not important as it is that you get a corner. Look for aa niche and fit yourself. This is this place where you have passion for and wish pour your life, as life is not long enough for any of us. Choosing a language and start with it till you are proficient enough. Don&rsquo;t be carried away by the trends and all the buzz. Just pick a tool and master. This leads us to the next point.</p>\r\n<h2>Work your corner before inviting Guest</h2>\r\n<p>This is important. There are young developers who so out to impress. This is should not be your trade. You could waste precious hours if you do not plan your route as a developer. There are myriads of information available to you, but you don&rsquo;t need all of them. you need to be selective where you quench your hunger. How many hours can you invest to build your skills? Information is good, but skills is what people are paying for. You have to invest time and get rid of distractions. Get to know the fundamentals involve your field. Don&rsquo;t start by going for the jobs. Work your skills enough. You can do some task and project along the way but keep that big company out of it.</p>\r\n<h2>Keep Up the Standard</h2>\r\n<p>You are not done yet but you are close. After building your skills and choosing your tools, it is time to go a little out. Now you&rsquo;re ready to add more load. I call this keeping up the standard. Maintaining your relevance as a developer is challenging too. This is because technology is fast evolving and their new innovations and practice almost every day. It is not easy to keep up the with the trends, but you can if you have worked on your foundation adequately Make research for what skills and requirement is needed to land your dream job. Add these to your cart and gradually work on them. When you&rsquo;re ready attack with full force.</p>', '2013-06-05 23:20:24'),
(6, 2, 'Rewrite Your Life', '<p>People have asked â€˜how do I fulfill purposeâ€™; how do I live life to the fullest? Some have lived lives worth celebrating, yet others have passed by on earth hardly noticed. The valley of the ordinary life seems not to let go, whilst they yearn for a better life, their lives do not seem to rise above the roof top. </p>', '<h2>Rewrite your Life</h2>\r\n<p>People have asked â€˜how do I fulfill purposeâ€™; how do I live life to the fullest? Some have lived lives worth celebrating, yet others have passed by on earth hardly noticed. The valley of the ordinary life seems not to let go, whilst they yearn for a better life, their lives do not seem to rise above the roof top. \r\nCan everyone live an extraordinary life? The answer is no. can anyone live an extraordinary life? Yes. Can I live an extraordinary life? Can I really make my life count after all I have been through? â€“ Yes you can, but you alone can decide that. Your life was design to drip milk and honey; to be what the nations will look upon in admiration. But right now that may seem the opposite or there is this lump of dissatisfaction in your breast. It has not always been easy, and will not ever be. But the truth is, you can get better and quickly.\r\n.</p>', '2013-06-06 08:28:35'),
(7, 3, 'This is a Test', '<p>This is working</p>', '<p>Ya it will work</p>', '2019-05-01 12:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts_seo`
--

CREATE TABLE `blog_posts_seo` (
  `postID` int(11) UNSIGNED NOT NULL,
  `memberID` int(4) NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postSlug` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts_seo`
--

INSERT INTO `blog_posts_seo` (`postID`, `memberID`, `postTitle`, `postSlug`, `postDesc`, `postCont`, `postDate`) VALUES
(1, 1, 'Bendless Love', 'bendless-love', '<p>That\'s right, baby. I ain\'t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him! Interesting. No, wait, the other thing: tedious. Hey, guess what you\'re accessories to. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate.</p>', '<h2>The Mutants Are Revolting</h2>\r\n<p>We don\'t have a brig. And until then, I can never die? We need rest. The spirit is willing, but the flesh is spongy and bruised. And yet you haven\'t said what I told you to say! How can any of us trust you?</p>\r\n<ul>\r\n<li>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.</li>\r\n<li>Bender?! You stole the atom.</li>\r\n<li>I was having the most wonderful dream. Except you were there, and you were there, and you were there!</li>\r\n</ul>\r\n<h3>The Series Has Landed</h3>\r\n<p>Fry! Stay back! He\'s too powerful! No. We\'re on the top. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<h4>Future Stock</h4>\r\n<p>Does anybody else feel jealous and aroused and worried? We\'re also Santa Claus! You\'re going back for the Countess, aren\'t you? Well, let\'s just dump it in the sewer and say we delivered it.</p>\r\n<ol>\r\n<li>Spare me your space age technobabble, Attila the Hun!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n<li>I guess if you want children beaten, you have to do it yourself.</li>\r\n<li>Yeah. Give a little credit to our public schools.</li>\r\n</ol>\r\n<h5>The Why of Fry</h5>\r\n<p>Who are you, my warranty?! Shinier than yours, meatbag. Dr. Zoidberg, that doesn\'t make sense. But, okay! Yes, except the Dave Matthews Band doesn\'t rock.</p>', '2013-05-29 00:00:00'),
(2, 2, 'That Darn Katz!', 'that-darn-katz', '<p>Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. Fry, you can\'t just sit here in the dark listening to classical music. And yet you haven\'t said what I told you to say! How can any of us trust you?</p>', '<h2>Xmas Story</h2>\r\n<p>It must be wonderful. Does anybody else feel jealous and aroused and worried? Is today\'s hectic lifestyle making you tense and impatient? Soothe us with sweet lies. That\'s right, baby. I ain\'t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him!</p>\r\n<ul>\r\n<li>Goodbye, friends. I never thought I\'d die like this. But I always really hoped.</li>\r\n<li>They\'re like sex, except I\'m having them!</li>\r\n<li>Come, Comrade Bender! We must take to the streets!</li>\r\n</ul>\r\n<h3>Anthology of Interest I</h3>\r\n<p>Hey, whatcha watching? They\'re like sex, except I\'m having them! Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Yes, except the Dave Matthews Band doesn\'t rock. I suppose I could part with \'one\' and still be feared&hellip;</p>\r\n<h4>Teenage Mutant Leela\'s Hurdles</h4>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! It\'s a T. It goes \"tuh\". I guess if you want children beaten, you have to do it yourself.</p>\r\n<ol>\r\n<li>Spare me your space age technobabble, Attila the Hun!</li>\r\n<li>Well, thanks to the Internet, I\'m now bored with sex. Is there a place on the web that panders to my lust for violence?</li>\r\n</ol>\r\n<h5>The Farnsworth Parabox</h5>\r\n<p>Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. We need rest. The spirit is willing, but the flesh is spongy and bruised. It must be wonderful.</p>', '2013-06-05 23:10:35'),
(3, 3, 'How Hermes Requisitioned His Groove Back', 'how-hermes-requistioned-his-groove-back', '<p>You\'re going back for the Countess, aren\'t you? Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. Now Fry, it\'s been a few years since medical school, so remind me. Disemboweling in your species: fatal or non-fatal? I don\'t want to be rescued. Leela, are you alright? You got wanged on the head.</p>', '<h2>The Luck of the Fryrish</h2>\r\n<p>Professor, make a woman out of me. I am the man with no name, Zapp Brannigan! Good man. Nixon\'s pro-war and pro-family. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<ul>\r\n<li>Who are those horrible orange men?</li>\r\n<li>Is today\'s hectic lifestyle making you tense and impatient?</li>\r\n</ul>\r\n<h3>Lethal Inspection</h3>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. No. We\'re on the top. Does anybody else feel jealous and aroused and worried? Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. It must be wonderful.</p>\r\n<h4>Where No Fan Has Gone Before</h4>\r\n<p>Who are those horrible orange men? Bender, we\'re trying our best. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Look, last night was a mistake.</p>\r\n<ol>\r\n<li>I\'m sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.</li>\r\n<li>Stop it, stop it. It\'s fine. I will \'destroy\' you!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n</ol>\r\n<h5>Fear of a Bot Planet</h5>\r\n<p>Why yes! Thanks for noticing. Hey, guess what you\'re accessories to. Yes, except the Dave Matthews Band doesn\'t rock. Take me to your leader! Daddy Bender, we\'re hungry.</p>', '2013-06-05 23:20:24'),
(6, 1, 'The Cyber House Rules', 'the-cyber-house-rules', '<p>You guys realize you live in a sewer, right? Uh, is the puppy mechanical in any way? Come, Comrade Bender! We must take to the streets! I daresay that Fry has discovered the smelliest object in the known universe! Good news, everyone! There\'s a report on TV with some very bad news!</p>', '<h2>The Luck of the Fryrish</h2>\r\n<p>Professor, make a woman out of me. I am the man with no name, Zapp Brannigan! Good man. Nixon\'s pro-war and pro-family. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<ul>\r\n<li>Who are those horrible orange men?</li>\r\n<li>Is today\'s hectic lifestyle making you tense and impatient?</li>\r\n</ul>\r\n<h3>Lethal Inspection</h3>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. No. We\'re on the top. Does anybody else feel jealous and aroused and worried? Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. It must be wonderful.</p>\r\n<h4>Where No Fan Has Gone Before</h4>\r\n<p>Who are those horrible orange men? Bender, we\'re trying our best. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Look, last night was a mistake.</p>\r\n<ol>\r\n<li>I\'m sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.</li>\r\n<li>Stop it, stop it. It\'s fine. I will \'destroy\' you!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n</ol>\r\n<h5>Fear of a Bot Planet</h5>\r\n<p>Why yes! Thanks for noticing. Hey, guess what you\'re accessories to. Yes, except the Dave Matthews Band doesn\'t rock. Take me to your leader! Daddy Bender, we\'re hungry.</p>', '2013-06-06 08:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_cats`
--

CREATE TABLE `blog_post_cats` (
  `id` int(11) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post_cats`
--

INSERT INTO `blog_post_cats` (`id`, `postID`, `catID`) VALUES
(25, 2, 5),
(21, 6, 4),
(24, 2, 1),
(4, 3, 2),
(20, 6, 1),
(16, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
