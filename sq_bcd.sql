-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2017 at 03:27 PM
-- Server version: 5.6.28
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sq_bcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_setting`
--

CREATE TABLE `about_setting` (
  `about_id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_setting`
--

INSERT INTO `about_setting` (`about_id`, `title`, `content`, `lang_id`) VALUES
(2, 'COMPANY BIOS', '<p>BC&amp;D International Limited has developed its expertise in architectural and interior designs, corporate branding, and administration of projects since its original founding as Chan and Associates under the directorship of Mr. Brian Chan 25 years ago.</p>\r\n', 1),
(3, '', '<p>BC&amp;&rsquo;s portfolio of works includes five star hotels, premium residential towers, private apartment, Grade A corporate buildings, and institutional works all across Greater China and S.E. Asia. Our clients include private developers, major corporations, as well as public and private authorities.</p>\r\n', 1),
(4, '', '<p>We have 50 staffs working in our Hong Kong Studio. They approach each project as an unique opportunity without stylistic biases.&nbsp; In order to provide more professional and high quality to our Clients, a willingness to anticipate our&nbsp;clients&rsquo; needs&nbsp;and being able to consider contextual issues such as financial, geographical, historical, and environmental concerns, our list of repeating clients is a testimony to the trust that we have gained in the industry.</p>\r\n', 1),
(5, 'BRIAN CHAN, FOUNDER AND MANAGING DIRECTOR', '<p>Mr. Brian Chan studied his M. Arch degree from Cornell University, New York, U.S.A in 1987.&nbsp; Upon graduation, Mr. Chan worked in New York State on large scale institutional projects in Long Island and New England with Fred Thomas &amp; Partners P.E., and in California on various residential developments projects, before returning to Hong Kong and becoming&nbsp;a full partner at LWK &amp; Partners Architects. &ldquo;Brian Chan and Associates&rdquo; was found in 1992.</p>\r\n', 1),
(6, '', '<p>Owing to Cornell&rsquo;s approach towards design thinking, Mr. Chan practices architectural design in a holistic manner: a building should be imagined as an integral whole so that both interior and exterior expressions can be achieved&nbsp;simultaneously&nbsp;in accordance to the clients&rsquo; needs thus streamlining the design and construction processes. Mr. Chan also believes that architectural and interior design is interrelated, so BC&amp;D International Limited was established.</p>\r\n', 1),
(7, '', '<p>Mr. Chan is a participating member of AAP (The Association of Architectural Practices), and also a professional member of HKIDA (Hong Kong Interior Design Association); a guest critic of the accredited academic and vocational institutions such as School of Architecture, Hong Kong Chinese University; Hong Kong Polytechnic University; a member of the panel of Judges of the Asia Pacific Interior Design Awards and a guest speaker at hospitality conventions.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(2) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address`, `lang_id`) VALUES
(1, '15/F Citicorp Centre,<br>18 Whitfield Road,<br>Tin Hau, Hong Kong', 1),
(2, '銅鑼灣威菲路道18號<br>萬國寶通中心15樓<br><br>', 2),
(3, '铜锣湾威菲路道18号<br>万国宝通中心15楼<br><br>', 3),
(4, '', 4),
(5, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lon` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`email`, `phone`, `email2`, `lat`, `lon`) VALUES
('support@bcd-intl.com', '8888 8888', 'recruitment@bcd-intl', '22.286125', '114.190211');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `set_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`set_id`, `create_date`) VALUES
(1, '2017-02-07 12:01:02'),
(2, '2017-02-07 12:01:06'),
(3, '2017-02-07 12:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category_setting`
--

CREATE TABLE `gallery_category_setting` (
  `category_id` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `set_id` int(10) NOT NULL,
  `lang_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_category_setting`
--

INSERT INTO `gallery_category_setting` (`category_id`, `category`, `set_id`, `lang_id`) VALUES
(1, 'Commercial & Institutional', 1, 1),
(2, '', 1, 2),
(3, '', 1, 3),
(4, '', 1, 4),
(5, '', 1, 5),
(6, 'Hospitality', 2, 1),
(7, '', 2, 2),
(8, '', 2, 3),
(9, '', 2, 4),
(10, '', 2, 5),
(11, 'Residential', 3, 1),
(12, '', 3, 2),
(13, '', 3, 3),
(14, '', 3, 4),
(15, '', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lang_setting`
--

CREATE TABLE `lang_setting` (
  `lang_id` int(2) NOT NULL,
  `lang_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `open` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_setting`
--

INSERT INTO `lang_setting` (`lang_id`, `lang_code`, `display_name`, `open`) VALUES
(1, 'EN', 'ENG', 1),
(2, 'ZH', '繁', 1),
(3, 'CN', '簡', 1),
(4, 'JP', '日', 0),
(5, 'IT', 'IT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(2) NOT NULL,
  `url` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `url`, `name`, `lang_id`) VALUES
(1, 'about.php', 'About', 1),
(2, 'gallery.php', 'Gallery', 1),
(4, 'news.php', 'News', 1),
(5, 'contact.php', 'Contact', 1),
(6, 'about.php', '關於我們', 2),
(7, 'gallery.php', '項目', 2),
(8, 'news.php', '最新資訊', 2),
(9, 'contact.php', '聯絡我們', 2),
(10, 'about.php', '关于我们', 3),
(11, 'gallery.php', '项目', 3),
(12, 'news.php', '最新资讯', 3),
(13, 'contact.php', '联络我们', 3);

-- --------------------------------------------------------

--
-- Table structure for table `photo_slider`
--

CREATE TABLE `photo_slider` (
  `photo_id` int(11) NOT NULL,
  `photo_path` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_slider`
--

INSERT INTO `photo_slider` (`photo_id`, `photo_path`) VALUES
(1, 'images/photo_slider/1.jpg'),
(2, 'images/photo_slider/2.jpg'),
(3, 'images/photo_slider/3.jpg'),
(4, 'images/photo_slider/4.jpg'),
(7, 'images/photo_slider/5.jpg'),
(24, 'images/photo_slider/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(10) NOT NULL,
  `set_id` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `set_id`, `status`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 3, 0),
(7, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_photo`
--

CREATE TABLE `project_photo` (
  `project_photo_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `photo_path` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_photo`
--

INSERT INTO `project_photo` (`project_photo_id`, `project_id`, `photo_path`) VALUES
(1, 1, 'images/project_photo/1/1.jpg'),
(2, 1, 'images/project_photo/1/2.jpg'),
(3, 1, 'images/project_photo/1/3.jpg'),
(4, 1, 'images/project_photo/1/4.jpg'),
(5, 1, 'images/project_photo/1/5.jpg'),
(6, 2, 'images/project_photo/2/6.jpg'),
(7, 2, 'images/project_photo/2/7.jpg'),
(8, 2, 'images/project_photo/2/8.jpg'),
(9, 2, 'images/project_photo/2/9.jpg'),
(10, 2, 'images/project_photo/2/10.jpg'),
(11, 3, 'images/project_photo/3/11.jpg'),
(12, 3, 'images/project_photo/3/12.jpg'),
(13, 3, 'images/project_photo/3/13.jpg'),
(14, 3, 'images/project_photo/3/14.jpg'),
(15, 3, 'images/project_photo/3/15.jpg'),
(16, 3, 'images/project_photo/3/16.jpg'),
(17, 4, 'images/project_photo/4/17.jpg'),
(18, 4, 'images/project_photo/4/18.jpg'),
(19, 4, 'images/project_photo/4/19.jpg'),
(20, 4, 'images/project_photo/4/20.jpg'),
(21, 4, 'images/project_photo/4/21.jpg'),
(22, 4, 'images/project_photo/4/22.jpg'),
(23, 4, 'images/project_photo/4/23.jpg'),
(24, 5, 'images/project_photo/5/24.jpg'),
(25, 5, 'images/project_photo/5/25.jpg'),
(26, 5, 'images/project_photo/5/26.jpg'),
(27, 5, 'images/project_photo/5/27.jpg'),
(28, 5, 'images/project_photo/5/28.jpg'),
(29, 5, 'images/project_photo/5/29.jpg'),
(30, 5, 'images/project_photo/5/30.jpg'),
(31, 5, 'images/project_photo/5/31.jpg'),
(32, 5, 'images/project_photo/5/32.jpg'),
(33, 6, 'images/project_photo/6/33.jpg'),
(34, 6, 'images/project_photo/6/34.jpg'),
(35, 6, 'images/project_photo/6/35.jpg'),
(36, 6, 'images/project_photo/6/36.jpg'),
(37, 6, 'images/project_photo/6/37.jpg'),
(38, 7, 'images/project_photo/7/38.jpg'),
(39, 7, 'images/project_photo/7/39.jpg'),
(40, 7, 'images/project_photo/7/40.jpg'),
(41, 7, 'images/project_photo/7/41.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_section`
--

CREATE TABLE `project_section` (
  `project_section_id` int(10) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(10) NOT NULL,
  `section_set_id` int(10) NOT NULL,
  `lang_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_section`
--

INSERT INTO `project_section` (`project_section_id`, `content`, `project_id`, `section_set_id`, `lang_id`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sit expedita, iusto repellendus cumque, officia architecto consequatur illo fuga eum sed ut autem eos voluptas. Nemo, a, rem! Atque quisquam aperiam eaque tenetur autem, soluta itaque omnis. Minus nesciunt, sint, animi illum quo ab voluptate esse delectus unde maiores iure, quasi a suscipit ipsam aliquid voluptatem. Perspiciatis eveniet, pariatur illum aut cum dolor neque consequatur error aliquid facilis in quasi temporibus assumenda tempore, doloremque autem saepe enim nihil. Voluptates asperiores ullam voluptate quas similique ratione quia hic, eum distinctio laboriosam, consectetur tempora voluptatibus optio natus cumque est necessitatibus dolore alias.</p>\r\n', 1, 1, 1),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sit expedita, iusto repellendus cumque, officia architecto consequatur illo fuga eum sed ut autem eos voluptas. Nemo, a, rem! Atque quisquam aperiam eaque tenetur autem, soluta itaque omnis. Minus nesciunt, sint, animi illum quo ab voluptate esse delectus unde maiores iure, quasi a suscipit ipsam aliquid voluptatem. Perspiciatis eveniet, pariatur illum aut cum dolor neque consequatur error aliquid facilis in quasi temporibus assumenda tempore, doloremque autem saepe enim nihil. Voluptates asperiores ullam voluptate quas similique ratione quia hic, eum distinctio laboriosam, consectetur tempora voluptatibus optio natus cumque est necessitatibus dolore alias.</p>\r\n', 1, 1, 2),
(3, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sit expedita, iusto repellendus cumque, officia architecto consequatur illo fuga eum sed ut autem eos voluptas. Nemo, a, rem! Atque quisquam aperiam eaque tenetur autem, soluta itaque omnis. Minus nesciunt, sint, animi illum quo ab voluptate esse delectus unde maiores iure, quasi a suscipit ipsam aliquid voluptatem. Perspiciatis eveniet, pariatur illum aut cum dolor neque consequatur error aliquid facilis in quasi temporibus assumenda tempore, doloremque autem saepe enim nihil. Voluptates asperiores ullam voluptate quas similique ratione quia hic, eum distinctio laboriosam, consectetur tempora voluptatibus optio natus cumque est necessitatibus dolore alias.</p>\r\n', 1, 1, 3),
(4, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sit expedita, iusto repellendus cumque, officia architecto consequatur illo fuga eum sed ut autem eos voluptas. Nemo, a, rem! Atque quisquam aperiam eaque tenetur autem, soluta itaque omnis. Minus nesciunt, sint, animi illum quo ab voluptate esse delectus unde maiores iure, quasi a suscipit ipsam aliquid voluptatem. Perspiciatis eveniet, pariatur illum aut cum dolor neque consequatur error aliquid facilis in quasi temporibus assumenda tempore, doloremque autem saepe enim nihil. Voluptates asperiores ullam voluptate quas similique ratione quia hic, eum distinctio laboriosam, consectetur tempora voluptatibus optio natus cumque est necessitatibus dolore alias.</p>\r\n', 1, 1, 4),
(5, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sit expedita, iusto repellendus cumque, officia architecto consequatur illo fuga eum sed ut autem eos voluptas. Nemo, a, rem! Atque quisquam aperiam eaque tenetur autem, soluta itaque omnis. Minus nesciunt, sint, animi illum quo ab voluptate esse delectus unde maiores iure, quasi a suscipit ipsam aliquid voluptatem. Perspiciatis eveniet, pariatur illum aut cum dolor neque consequatur error aliquid facilis in quasi temporibus assumenda tempore, doloremque autem saepe enim nihil. Voluptates asperiores ullam voluptate quas similique ratione quia hic, eum distinctio laboriosam, consectetur tempora voluptatibus optio natus cumque est necessitatibus dolore alias.</p>\r\n', 1, 1, 5),
(6, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis expedita repellendus laboriosam aliquid. Neque doloribus ea, id reprehenderit alias saepe debitis eligendi molestias odit, nesciunt rem. Dolorem saepe, provident dolore nesciunt laudantium nostrum enim natus veritatis harum maxime et iure ratione, nulla. Minus excepturi commodi tempore voluptate. Blanditiis similique dolor asperiores ex excepturi perspiciatis, dolores id esse. Voluptate beatae nesciunt cum esse ratione officiis necessitatibus blanditiis ea, laboriosam fugit vero maxime? Voluptatum illo dolorum autem pariatur quisquam. Voluptates soluta culpa necessitatibus veritatis tempora incidunt doloribus placeat repellat et facilis eum sapiente fugit numquam aut, laboriosam aspernatur, esse, magnam excepturi repudiandae amet voluptas nulla quidem. Veritatis nisi consequuntur saepe qui quisquam dignissimos assumenda, iusto odio. Dignissimos reprehenderit esse iusto cupiditate nisi enim, animi similique itaque, perspiciatis error qui. Aperiam, architecto provident.</p>\r\n', 1, 2, 1),
(7, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis expedita repellendus laboriosam aliquid. Neque doloribus ea, id reprehenderit alias saepe debitis eligendi molestias odit, nesciunt rem. Dolorem saepe, provident dolore nesciunt laudantium nostrum enim natus veritatis harum maxime et iure ratione, nulla. Minus excepturi commodi tempore voluptate. Blanditiis similique dolor asperiores ex excepturi perspiciatis, dolores id esse. Voluptate beatae nesciunt cum esse ratione officiis necessitatibus blanditiis ea, laboriosam fugit vero maxime? Voluptatum illo dolorum autem pariatur quisquam. Voluptates soluta culpa necessitatibus veritatis tempora incidunt doloribus placeat repellat et facilis eum sapiente fugit numquam aut, laboriosam aspernatur, esse, magnam excepturi repudiandae amet voluptas nulla quidem. Veritatis nisi consequuntur saepe qui quisquam dignissimos assumenda, iusto odio. Dignissimos reprehenderit esse iusto cupiditate nisi enim, animi similique itaque, perspiciatis error qui. Aperiam, architecto provident.</p>\r\n', 1, 2, 2),
(8, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis expedita repellendus laboriosam aliquid. Neque doloribus ea, id reprehenderit alias saepe debitis eligendi molestias odit, nesciunt rem. Dolorem saepe, provident dolore nesciunt laudantium nostrum enim natus veritatis harum maxime et iure ratione, nulla. Minus excepturi commodi tempore voluptate. Blanditiis similique dolor asperiores ex excepturi perspiciatis, dolores id esse. Voluptate beatae nesciunt cum esse ratione officiis necessitatibus blanditiis ea, laboriosam fugit vero maxime? Voluptatum illo dolorum autem pariatur quisquam. Voluptates soluta culpa necessitatibus veritatis tempora incidunt doloribus placeat repellat et facilis eum sapiente fugit numquam aut, laboriosam aspernatur, esse, magnam excepturi repudiandae amet voluptas nulla quidem. Veritatis nisi consequuntur saepe qui quisquam dignissimos assumenda, iusto odio. Dignissimos reprehenderit esse iusto cupiditate nisi enim, animi similique itaque, perspiciatis error qui. Aperiam, architecto provident.</p>\r\n', 1, 2, 3),
(9, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis expedita repellendus laboriosam aliquid. Neque doloribus ea, id reprehenderit alias saepe debitis eligendi molestias odit, nesciunt rem. Dolorem saepe, provident dolore nesciunt laudantium nostrum enim natus veritatis harum maxime et iure ratione, nulla. Minus excepturi commodi tempore voluptate. Blanditiis similique dolor asperiores ex excepturi perspiciatis, dolores id esse. Voluptate beatae nesciunt cum esse ratione officiis necessitatibus blanditiis ea, laboriosam fugit vero maxime? Voluptatum illo dolorum autem pariatur quisquam. Voluptates soluta culpa necessitatibus veritatis tempora incidunt doloribus placeat repellat et facilis eum sapiente fugit numquam aut, laboriosam aspernatur, esse, magnam excepturi repudiandae amet voluptas nulla quidem. Veritatis nisi consequuntur saepe qui quisquam dignissimos assumenda, iusto odio. Dignissimos reprehenderit esse iusto cupiditate nisi enim, animi similique itaque, perspiciatis error qui. Aperiam, architecto provident.</p>\r\n', 1, 2, 4),
(10, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis expedita repellendus laboriosam aliquid. Neque doloribus ea, id reprehenderit alias saepe debitis eligendi molestias odit, nesciunt rem. Dolorem saepe, provident dolore nesciunt laudantium nostrum enim natus veritatis harum maxime et iure ratione, nulla. Minus excepturi commodi tempore voluptate. Blanditiis similique dolor asperiores ex excepturi perspiciatis, dolores id esse. Voluptate beatae nesciunt cum esse ratione officiis necessitatibus blanditiis ea, laboriosam fugit vero maxime? Voluptatum illo dolorum autem pariatur quisquam. Voluptates soluta culpa necessitatibus veritatis tempora incidunt doloribus placeat repellat et facilis eum sapiente fugit numquam aut, laboriosam aspernatur, esse, magnam excepturi repudiandae amet voluptas nulla quidem. Veritatis nisi consequuntur saepe qui quisquam dignissimos assumenda, iusto odio. Dignissimos reprehenderit esse iusto cupiditate nisi enim, animi similique itaque, perspiciatis error qui. Aperiam, architecto provident.</p>\r\n', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `project_section_set`
--

CREATE TABLE `project_section_set` (
  `section_set_id` int(11) NOT NULL,
  `project_id` int(10) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_section_set`
--

INSERT INTO `project_section_set` (`section_set_id`, `project_id`, `create_date`) VALUES
(1, 1, '2017-02-07 21:24:07'),
(2, 1, '2017-02-07 21:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `project_title`
--

CREATE TABLE `project_title` (
  `project_title_id` int(10) NOT NULL,
  `project_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(10) NOT NULL,
  `lang_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_title`
--

INSERT INTO `project_title` (`project_title_id`, `project_title`, `project_id`, `lang_id`) VALUES
(1, 'Kerry Centre Hong Kong', 1, 1),
(2, '', 1, 2),
(3, '', 1, 3),
(4, '', 1, 4),
(5, '', 1, 5),
(8, 'Four Point Lhasa', 2, 1),
(9, '', 2, 2),
(10, '', 2, 3),
(11, '', 2, 4),
(12, '', 2, 5),
(15, 'Shangri-la Beijing II', 3, 1),
(16, '', 3, 2),
(17, '', 3, 3),
(18, '', 3, 4),
(19, '', 3, 5),
(22, 'Shangri-la Beijing III', 4, 1),
(23, '', 4, 2),
(24, '', 4, 3),
(25, '', 4, 4),
(26, '', 4, 5),
(29, 'Traders Kuala Lumpur', 5, 1),
(30, '', 5, 2),
(31, '', 5, 3),
(32, '', 5, 4),
(33, '', 5, 5),
(36, 'Severn Road', 6, 1),
(37, '', 6, 2),
(38, '', 6, 3),
(39, '', 6, 4),
(40, '', 6, 5),
(43, 'South Bay', 7, 1),
(44, '', 7, 2),
(45, '', 7, 3),
(46, '', 7, 4),
(47, '', 7, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_setting`
--
ALTER TABLE `about_setting`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `gallery_category_setting`
--
ALTER TABLE `gallery_category_setting`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lang_setting`
--
ALTER TABLE `lang_setting`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_slider`
--
ALTER TABLE `photo_slider`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_photo`
--
ALTER TABLE `project_photo`
  ADD PRIMARY KEY (`project_photo_id`);

--
-- Indexes for table `project_section`
--
ALTER TABLE `project_section`
  ADD PRIMARY KEY (`project_section_id`);

--
-- Indexes for table `project_section_set`
--
ALTER TABLE `project_section_set`
  ADD PRIMARY KEY (`section_set_id`);

--
-- Indexes for table `project_title`
--
ALTER TABLE `project_title`
  ADD PRIMARY KEY (`project_title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_setting`
--
ALTER TABLE `about_setting`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gallery_category_setting`
--
ALTER TABLE `gallery_category_setting`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `lang_setting`
--
ALTER TABLE `lang_setting`
  MODIFY `lang_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `photo_slider`
--
ALTER TABLE `photo_slider`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `project_photo`
--
ALTER TABLE `project_photo`
  MODIFY `project_photo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `project_section`
--
ALTER TABLE `project_section`
  MODIFY `project_section_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `project_section_set`
--
ALTER TABLE `project_section_set`
  MODIFY `section_set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `project_title`
--
ALTER TABLE `project_title`
  MODIFY `project_title_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
