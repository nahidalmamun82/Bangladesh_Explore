-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 07:23 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(10, 'Dhaka'),
(11, 'barishal'),
(12, 'Chittagong'),
(13, 'Khulna'),
(14, 'Mymensingh'),
(15, 'Rajshahi'),
(16, 'Rangpur'),
(17, 'Sylhet	');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Md. Nahid Al', 'Mamun', 'nahidalmamun82@gmail.com', 'This is tese massage.', 1, '2020-07-25 19:59:16'),
(6, 'Alamin', 'Hossain', 'helo@gmail.com', 'This massage for alamin...it is very importent.', 0, '2020-07-25 21:05:55'),
(8, 'rasel', 'Hossain', 'fg@gmail.com', 'fhus gfru  efgr f egfry fgf fgfguiff yf f f f fyuegf fue fefg', 1, '2020-07-25 23:52:01'),
(9, 'rasel', 'Hossain', 'fg@gmail.com', 'fhus gfru  efgr f egfry fgf fgfguiff yf f f f fyuegf fue fefg', 0, '2020-07-26 09:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Training with live project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(16, 'About us', '<p>introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.&nbsp;HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.</p>\r\n<p>HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below</p>'),
(18, 'Privacy Policy', '<p>introd uced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.&nbsp;HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.</p>\r\n<p>HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below</p>'),
(19, 'DMCA', '<p>introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.&nbsp;HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.</p>\r\n<p>HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below.HTTP 1.1 introduced a new class of headers, Cache-Control response headers, to give Web publishers more control over their content, and to address the limitations of Expires. You can set four different types of HTTP headers which will have different effects on our caches and on web browsers. If you use more than one type, they are prioritized in the order listed below</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(21, 10, 'Beautiful Lalbagh Fort', '<p><strong>Lalbagh Fort</strong>&nbsp;(also&nbsp;<strong>Fort Aurangabad</strong>) is an incomplete 17th-century&nbsp;<a title="Mughal Empire" href="https://en.wikipedia.org/wiki/Mughal_Empire">Mughal</a>&nbsp;fort complex that stands before the&nbsp;<a title="Buriganga River" href="https://en.wikipedia.org/wiki/Buriganga_River">Buriganga River</a>&nbsp;in the southwestern part of&nbsp;<a title="Dhaka" href="https://en.wikipedia.org/wiki/Dhaka">Dhaka</a>,&nbsp;<a title="Bangladesh" href="https://en.wikipedia.org/wiki/Bangladesh">Bangladesh</a>. The construction was started in 1678 AD by&nbsp;<a class="mw-redirect" title="Mughal emperor" href="https://en.wikipedia.org/wiki/Mughal_emperor">Mughal</a>&nbsp;<a title="Subahdar" href="https://en.wikipedia.org/wiki/Subahdar">Subahdar</a>&nbsp;<a title="Muhammad Azam Shah" href="https://en.wikipedia.org/wiki/Muhammad_Azam_Shah">Muhammad Azam Shah</a>, who was son of Emperor&nbsp;<a title="Aurangzeb" href="https://en.wikipedia.org/wiki/Aurangzeb">Aurangzeb</a>&nbsp;and later emperor himself. His successor,&nbsp;<a title="Shaista Khan" href="https://en.wikipedia.org/wiki/Shaista_Khan">Shaista Khan</a>, did not continue the work, though he stayed in Dhaka up to 1688.</p>\r\n<p>The fort was never completed, and unoccupied for a long period of time. Much of the complex was built over and now sits across from modern buildings.</p>\r\n<p>The Mughal prince&nbsp;<a class="mw-redirect" title="Muhammad Azam" href="https://en.wikipedia.org/wiki/Muhammad_Azam">Muhammad Azam</a>, third son of Aurangzeb started the work of the fort in 1678 during his vice-royalty in&nbsp;<a title="Bengal" href="https://en.wikipedia.org/wiki/Bengal">Bengal</a>. He stayed in Bengal for 15 months. The fort remained incomplete when he was called away by his father Aurangzeb.</p>\r\n<p><a title="Shaista Khan" href="https://en.wikipedia.org/wiki/Shaista_Khan">Shaista Khan</a>&nbsp;was the new&nbsp;<a title="Subahdar" href="https://en.wikipedia.org/wiki/Subahdar">subahdar</a>&nbsp;of Dhaka in that time, and he did not complete the fort. In 1684, the daughter of Shaista Khan named Iran Dukht Pari Bibi died there. After her death, he started to think the fort as unlucky, and left the structure incomplete.<sup id="cite_ref-2" class="reference"><a href="https://en.wikipedia.org/wiki/Lalbagh_Fort#cite_note-2">[2]</a></sup>&nbsp;Among the three major parts of Lalbagh Fort, one is the tomb of&nbsp;<a class="mw-redirect" title="Bibi Pari" href="https://en.wikipedia.org/wiki/Bibi_Pari">Bibi Pari</a>.</p>\r\n<p>After Shaista Khan left Dhaka, it lost its popularity. The main cause was that the capital was moved from Dhaka to Murshidabad. After the end of the royal Mughal period, the fort became abandoned. In 1844, the area acquired its name as Lalbagh replacing Aurangabad, and the fort became Lalbagh Fort</p>', 'upload/f40280e129.jpg', 'admin', 'Lalbagh Fort, Dhaka', '2020-08-19 02:54:11', 1),
(23, 10, 'National Martyrs'' Memorial', '<p><strong>National Martyrs'' Memorial</strong><span>&nbsp;(</span><em>Jatiya Smriti Saudha</em><span>) is the national monument of Bangladesh</span><span>, set up in the memory of those who died in the Bangladesh libaretion wer</span><span>&nbsp;of 1971, which brought independence and separated Bangladesh from Pakistan</span><span>. The monument is located in&nbsp;</span><a title="Savar" href="https://en.wikipedia.org/wiki/Savar">Savar</a><span>, about 35&nbsp;km north-west of the capital,&nbsp;</span><a title="Dhaka" href="https://en.wikipedia.org/wiki/Dhaka">Dhaka</a><span>.</span><sup id="cite_ref-bpedia_1-0" class="reference"><a href="https://en.wikipedia.org/wiki/National_Martyrs%27_Memorial#cite_note-bpedia-1">[1]</a></sup><span>&nbsp;It was designed by&nbsp;</span><a title="Syed Mainul Hossain" href="https://en.wikipedia.org/wiki/Syed_Mainul_Hossain">Syed Mainul Hossain</a><span>&nbsp;and built by&nbsp;</span><a title="Concord Group" href="https://en.wikipedia.org/wiki/Concord_Group">Concord Group</a>.</p>\r\n<h2><span id="History" class="mw-headline">History</span></h2>\r\n<p>Plans for the monument were initiated in 1976. Following the site selection, road and land development, a nationwide design competition was held in June,1978. Following evaluation of the 57 submissions,&nbsp;<a title="Syed Mainul Hossain" href="https://en.wikipedia.org/wiki/Syed_Mainul_Hossain">Syed Mainul Hossain</a>''s design was chosen. The main structure and the artificial lake and other facilities were completed in 1982. It was Inaugurated at 16 December 1982.</p>\r\n<h2><span id="Description" class="mw-headline">Description</span></h2>\r\n<p><span>The architecture is composed of seven pairs of triangular-shaped walls or prisms; the outermost pair being the shortest in height but widest in span, the inner pairs gradually change their aspect ratio and the innermost pair thus forms the peak point of the architecture. Each of these seven pairs of walls represents a significant chapter in the history of Bangladesh, namely the Language Movement in 1952, the provincial election victory of the United Front in 1954, the Constitution Movement in 1956, the movement against Education Commission in 1962, 6-point Movement in 1966, the Mass Uprising in 1969, and finally the climactic event of Liberation War in 1971, through which Bangladesh was liberated.</span></p>', 'upload/91428fba49.jpg', 'admin', 'National Martyrs'' Memorial, Dhaka, National Memorial', '2020-08-19 03:01:12', 1),
(24, 11, 'Daughter of ocean Kuakata.', '<p><strong>Kuakata</strong><span>&nbsp;is a beach town known for its panoramic sea beach.</span><span>&nbsp;It is in southeastern&nbsp;</span><a title="Bangladesh" href="https://en.wikipedia.org/wiki/Bangladesh">Bangladesh</a><span>&nbsp;and is the number sizeable tourist destination in the country. Kuakata beach is a sandy expanse 18 kilometres (11&nbsp;mi) long and 3 kilometres (1.9&nbsp;mi) wide.</span><span>&nbsp;From the beach one can have an unobstructed view of both sunrise and sunset over the Bay of Bengal.</span></p>\r\n<p><span style="font-size: 1.5em;">Etymology</span></p>\r\n<p><span><span>The name Kuakata originated from the word ''kua'' &mdash; the Bengali word for "well" which was dug on the seashore by the early&nbsp;</span><a title="Rakhine people" href="https://en.wikipedia.org/wiki/Rakhine_people">Rakhine</a><span>&nbsp;settlers(Burmese tribes) in quest of collecting drinking water.</span><span>They landed on the Kuakata coast in the 18th century after being expelled from Arakan (Myanmar) by the Burmese extremests .</span><span>&nbsp;Afterwards, it has become a tradition of digging wells in the neighbourhoods of Rakhaine tribes for water.</span></span></p>\r\n<p><span style="font-size: medium;"><strong>Description</strong></span></p>\r\n<p>Kuakata offers a full view of the sunrise and sunset from the same white sandy beach in the water of the&nbsp;<a title="Bay of Bengal" href="https://en.wikipedia.org/wiki/Bay_of_Bengal">Bay of Bengal</a>. Locally known as Shagor Kannya (Daughter of Ocean), the long strip of dark, marbled sand stretches for about 18 kilometres (11&nbsp;mi). The long, wide beach at Kuakata has a typical natural setting. This sandy beach has gentle slopes into the Bay of Bengal. Kuakata is also a sanctuary for migratory winter birds.</p>\r\n<p>On the eastern end of the beach is Gongamati Reserved Forest, an evergreen mangrove forest and snippet of the original Kuakata. (When the Rakhines settled in the area in 1784, Kuakata was part of the larger&nbsp;<a title="Sundarbans" href="https://en.wikipedia.org/wiki/Sundarbans">Sundarbans</a>&nbsp;forest. However, the Sundarbans is one-hour away by speed boat.) As a mangrove forest, Gongamati, like the Sundarbans, offers some protection against tidal surges. However, it too is being threatened by logging and deforestation. The best way to reach the forest is by foot or bike along the beach, where flag-flying fishing boats can be seen trawling the coast. Visiting Gangamati in the late afternoon is a perfect time to watch the sun cast shadows on the exposed mangrove roots.</p>\r\n<p>On 13 September 2007 the government had announced a red alert in Kuakata as caution for a possible tsunami.</p>', 'upload/709a529912.jpg', 'admin', 'kuakata, Barishal', '2020-08-19 03:11:23', 1),
(25, 12, 'Cox''s Bazar Sea Beach', '<h4 class="float-left">Brief</h4>\r\n<h4 class="float-left">Cox&rsquo;s Bazar is a District under Chittagong Division, which is famous for its longest unbroken sandy sea beach. It is located 150 km south of the industrial port- Chittagong. Cox&rsquo;s Bazar is considered as having the longest sea beach&nbsp;in the world, with a total of&nbsp;121 kilometer&nbsp;long.&nbsp;The name Cox&rsquo;s Bazar was derived from its founder,&nbsp;Captain Cox. He founded the very attractive beach in 1798. Then the Cox&rsquo;s Bazar beach started only as a small port and health resort.</h4>\r\n<div class="content ">\r\n<p>Though the beach is considered to be the longest beach in the world, it has been the least crowded among the other beaches. Here, visitors can enjoy the relaxing breeze of the Bay of Bengal Sea and the peacefulness of the place. The Cox&rsquo;s bazar beach certainly has the finest leisure it can offer to each of its visitors. People can take a timely stroll along the lengthened stretch of the beach and enjoy the view of the amazing seascape. Visitors can also enjoy water sport activities like scuba diving, surfing, and try some boat rides.</p>\r\n<p>There are also other wonderful places to see around the Cox&rsquo;s beach bazar. One of these is the beautiful Himchari waterfall, located 18 kilometer south of Cox&rsquo;s Bazar sea beach. This is the most visited place in the district, with its beautiful refreshing green hills and the wonderful water fall, where visitors can bathe and swim apart from the sea itself.<br />Another attraction is the Moheshkhali Island near the Cox&rsquo;s beach bazar coast. The island can be reached via speedboat. Here, visitors can view the breath-taking view of the island. With the bright green color of its mangrove forest that will surely amaze everyone who come to see the place. This is definitely the next best thing to explore after one&rsquo;s beach trip.</p>\r\n<p>Cox&rsquo;s Beach Bazar really is the place best recommended for people who seeks for serene, soberness and relaxing vacation. Every Cox&rsquo;s Beach Bazar trip will surely please and satisfy everyone who visits here.</p>\r\n<p><span>Laboni Beach:</span><br />Laboni beach is the longest and main beach of Cox&rsquo;s Bazar. It is the closest sea beach to the town. At here a traveler can easily enjoy the scenic beauty of Bay of Bengal Sea. Its a place for enjoyment, many people come here around the year including the foreigners. You can enjoy sunbathe, surfing, jogging, cycling and swimming in this beach. It is best place for swimming and relaxation. Not only in day time, you can enjoy beauty of sea at night from this beach as it is totally safe place for tourist. The beach is well appreciated during sunsets and sunrise, where people can witness the sea as it changes its colors twice in a day. It is best for swimming and relaxation. Close to the beach, there are a lot of small shops selling souvenirs, locally made cigars &amp; beauty products (sandal wood based), handmade clothes, bed sheets, dresses, shoes and beach accessories to the tourists. It is a nice place for our tourism. So, come &amp; let&rsquo;s enjoy the beauty of Laboni Beach.</p>\r\n<p><span>Inani Beach:</span>&nbsp;To know about Inani click on<span><a href="http://offroadbangladesh.com/places/inani-beach/" target="_blank">&nbsp;Inani Beach</a></span></p>\r\n<p><span>Kolatoli Beach:</span>&nbsp;To know about Kolatoli click on&nbsp;<span><a href="http://offroadbangladesh.com/places/kolatoli-beach/" target="_blank">Kolatoli Beach&nbsp;</a></span></p>\r\n</div>', 'upload/173ceaad97.jpg', 'admin', 'chittagong', '2020-08-19 03:16:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(2, 'First-slider Title will go here.', 'upload/slider/eb33978756.jpg'),
(3, 'Second slider Title will go here.', 'upload/slider/9c33bf8120.jpg'),
(4, 'Third slider Title will go here.', 'upload/slider/44d5c41570.jpg'),
(6, 'Forth slider Title will go here.', 'upload/slider/4cdee313b5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/live', 'http://twitter.com', 'http://linkedin.com/live', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Md. Nahid Al Mamun ', 'admin', '202cb962ac59075b964b07152d234b70', 'nahidalmamun82@gmail.com', '<p>I am Nahid Al Mamun&nbsp;</p>', 0),
(2, 'Mamun Hossain', 'Author', '202cb962ac59075b964b07152d234b70', 'mamun@gmail.com', '<p>I am Mamun Hossain</p>', 1),
(3, 'Al Amin', 'Editor', '202cb962ac59075b964b07152d234b70', 'alamin@gmail.com', '<p>I am Al Amin</p>', 2),
(5, '', 'nahid', '202cb962ac59075b964b07152d234b70', 'nahid@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Hello Bangladesh', 'Home Of Nature', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
