-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 27, 2016 at 04:24 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `Authentication`
--

CREATE TABLE `Authentication` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authentication`
--

INSERT INTO `Authentication` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `title` varchar(255) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL,
  `toggle` enum('0','1') NOT NULL DEFAULT '1',
  `images` varchar(255) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`title`, `details`, `id`, `toggle`, `images`, `date`) VALUES
('Home', 'A home page is generally the main page a visitor navigating to a website from a web search engine will see, and may also serve as a landing page to attract the attention of visitors.[1][2] The home page is used to facilitate navigation to other pages on the site, by providing links to important and recent articles and pages, and possibly a search box.[2][3] For example, a news website may present the headlines and first paragraphs of top stories, with links to the full articles, in a dynamic web page that reflects the popularity and recentness of stories.[4]\r\n\r\nA website may have multiple home pages, although most have one.[5] Wikipedia, for example, has a home page at wikipedia.org, as well as language-specific home pages, such as en.wikipedia.org and de.wikipedia.org', 88, '1', 'upload/logo1.png', '2016/06/08'),
('Contact', 'A contact page is a standard web page on a website used to allow the visitor to contact the website owner or people who are responsible for the maintenance of the site. The page often contains one or more of the following items:\r\n\r\na mailto link to an e-mail address.\r\na description of personalia like a (organization) name, address, zip code, residential area, with sometimes a map indicating a certain physical location and a description or visualization of how to get there;\r\na set of visual icons or textual links to social networking services;\r\na contact form with entries where the visitor can fill in their name, subject and message and send or reset it.', 89, '1', 'upload/Icon-9.png', '2016/06/08'),
('About', 'Wikipedia is written collaboratively by largely anonymous volunteers who write without pay. Anyone with Internet access can write and make changes to Wikipedia articles, except in limited cases where editing is restricted to prevent disruption or vandalism. Users can contribute anonymously, under a pseudonym, or, if they choose to, with their real identity.', 90, '1', 'upload/Heatmap-icon.png', '2016/06/08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
