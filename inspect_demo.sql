-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 07:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inspect_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `rrweb_event`
--

CREATE TABLE `rrweb_event` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `event_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`event_data`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rrweb_event`
--

INSERT INTO `rrweb_event` (`id`, `session_id`, `event_data`, `created_at`) VALUES
(94, 'session_1709230113198', '{\"type\":0,\"data\":{},\"timestamp\":1709230103143}', '2024-02-29 18:08:33'),
(95, 'session_1709230113198', '{\"type\":1,\"data\":{},\"timestamp\":1709230103216}', '2024-02-29 18:08:33'),
(96, 'session_1709230113198', '{\"type\":4,\"data\":{\"href\":\"http://127.0.0.1:5500/frontend/index.html\",\"width\":982,\"height\":776},\"timestamp\":1709230103217}', '2024-02-29 18:08:33'),
(97, 'session_1709230113198', '{\"type\":2,\"data\":{\"node\":{\"type\":0,\"childNodes\":[{\"type\":1,\"name\":\"html\",\"publicId\":\"\",\"systemId\":\"\",\"id\":2},{\"type\":2,\"tagName\":\"html\",\"attributes\":{\"lang\":\"en\"},\"childNodes\":[{\"type\":2,\"tagName\":\"head\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n        \",\"id\":5},{\"type\":2,\"tagName\":\"meta\",\"attributes\":{\"charset\":\"UTF-8\"},\"childNodes\":[],\"id\":6},{\"type\":3,\"textContent\":\"\\n        \",\"id\":7},{\"type\":2,\"tagName\":\"meta\",\"attributes\":{\"name\":\"viewport\",\"content\":\"width=device-width, initial-scale=1.0\"},\"childNodes\":[],\"id\":8},{\"type\":3,\"textContent\":\"\\n        \",\"id\":9},{\"type\":2,\"tagName\":\"title\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"RRWeb Event Handler\",\"id\":11}],\"id\":10},{\"type\":3,\"textContent\":\"\\n        \",\"id\":12},{\"type\":5,\"textContent\":\" Include rrweb via a script tag \",\"id\":13},{\"type\":3,\"textContent\":\"\\n        \",\"id\":14},{\"type\":2,\"tagName\":\"script\",\"attributes\":{\"src\":\"https://unpkg.com/rrweb\"},\"childNodes\":[],\"id\":15},{\"type\":3,\"textContent\":\"\\n    \",\"id\":16}],\"id\":4},{\"type\":3,\"textContent\":\"\\n    \",\"id\":17},{\"type\":2,\"tagName\":\"body\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n        \",\"id\":19},{\"type\":2,\"tagName\":\"section\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n            \",\"id\":21},{\"type\":2,\"tagName\":\"div\",\"attributes\":{\"class\":\"header\"},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n                \",\"id\":23},{\"type\":2,\"tagName\":\"h1\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"Event Handler for RRWeb Interface\",\"id\":25}],\"id\":24},{\"type\":3,\"textContent\":\"\\n                \",\"id\":26},{\"type\":2,\"tagName\":\"button\",\"attributes\":{\"onclick\":\"appendFunction()\"},\"childNodes\":[{\"type\":3,\"textContent\":\"Append\",\"id\":28}],\"id\":27},{\"type\":3,\"textContent\":\"\\n            \",\"id\":29}],\"id\":22},{\"type\":3,\"textContent\":\"\\n        \",\"id\":30}],\"id\":20},{\"type\":3,\"textContent\":\"\\n        \",\"id\":31},{\"type\":2,\"tagName\":\"section\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n            \",\"id\":33},{\"type\":2,\"tagName\":\"div\",\"attributes\":{\"class\":\"body\"},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n                \",\"id\":35},{\"type\":2,\"tagName\":\"div\",\"attributes\":{\"class\":\"para_1\"},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n                    \",\"id\":37},{\"type\":2,\"tagName\":\"p\",\"attributes\":{\"id\":\"message\"},\"childNodes\":[{\"type\":3,\"textContent\":\"This is a sample code for recording user events.\",\"id\":39}],\"id\":38},{\"type\":3,\"textContent\":\"\\n                    \",\"id\":40},{\"type\":2,\"tagName\":\"label\",\"attributes\":{\"for\":\"name\"},\"childNodes\":[{\"type\":3,\"textContent\":\"Username\",\"id\":42}],\"id\":41},{\"type\":3,\"textContent\":\"\\n                    \",\"id\":43},{\"type\":2,\"tagName\":\"input\",\"attributes\":{\"type\":\"text\",\"id\":\"name\",\"placeholder\":\"Enter your name\"},\"childNodes\":[],\"id\":44},{\"type\":3,\"textContent\":\"\\n                \",\"id\":45}],\"id\":36},{\"type\":3,\"textContent\":\"\\n            \",\"id\":46}],\"id\":34},{\"type\":3,\"textContent\":\"\\n        \",\"id\":47}],\"id\":32},{\"type\":3,\"textContent\":\"\\n        \",\"id\":48},{\"type\":2,\"tagName\":\"section\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n            \",\"id\":50},{\"type\":2,\"tagName\":\"div\",\"attributes\":{\"class\":\"footer\"},\"childNodes\":[{\"type\":3,\"textContent\":\"\\n                \",\"id\":52},{\"type\":2,\"tagName\":\"p\",\"attributes\":{\"style\":\"margin-top: 100px; color: grey\"},\"childNodes\":[{\"type\":3,\"textContent\":\"© Copyright Mihir-Nikunj 2023\",\"id\":54}],\"id\":53},{\"type\":3,\"textContent\":\"\\n            \",\"id\":55}],\"id\":51},{\"type\":3,\"textContent\":\"\\n        \",\"id\":56}],\"id\":49},{\"type\":3,\"textContent\":\"\\n        \",\"id\":57},{\"type\":2,\"tagName\":\"script\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"SCRIPT_PLACEHOLDER\",\"id\":59}],\"id\":58},{\"type\":3,\"textContent\":\"\\n    \",\"id\":60},{\"type\":5,\"textContent\":\" Code injected by live-server \",\"id\":61},{\"type\":3,\"textContent\":\"\\n\",\"id\":62},{\"type\":2,\"tagName\":\"script\",\"attributes\":{},\"childNodes\":[{\"type\":3,\"textContent\":\"SCRIPT_PLACEHOLDER\",\"id\":64}],\"id\":63},{\"type\":3,\"textContent\":\"\\n\\n\\n\",\"id\":65}],\"id\":18}],\"id\":3}],\"id\":1},\"initialOffset\":{\"left\":0,\"top\":0}},\"timestamp\":1709230103221}', '2024-02-29 18:08:33'),
(98, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":976,\"y\":41,\"id\":3,\"timeOffset\":0}]},\"timestamp\":1709230107588}', '2024-02-29 18:08:33'),
(99, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":862,\"y\":53,\"id\":22,\"timeOffset\":-445},{\"x\":743,\"y\":65,\"id\":22,\"timeOffset\":-391},{\"x\":598,\"y\":79,\"id\":22,\"timeOffset\":-340},{\"x\":412,\"y\":83,\"id\":22,\"timeOffset\":-286},{\"x\":266,\"y\":83,\"id\":22,\"timeOffset\":-231},{\"x\":233,\"y\":83,\"id\":22,\"timeOffset\":-165},{\"x\":232,\"y\":83,\"id\":22,\"timeOffset\":-111},{\"x\":202,\"y\":83,\"id\":22,\"timeOffset\":-57},{\"x\":171,\"y\":83,\"id\":22,\"timeOffset\":-7}]},\"timestamp\":1709230108089}', '2024-02-29 18:08:33'),
(100, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":126,\"y\":89,\"id\":18,\"timeOffset\":-464},{\"x\":106,\"y\":93,\"id\":18,\"timeOffset\":-408},{\"x\":96,\"y\":93,\"id\":18,\"timeOffset\":-352},{\"x\":93,\"y\":92,\"id\":18,\"timeOffset\":-286},{\"x\":82,\"y\":87,\"id\":22,\"timeOffset\":-229},{\"x\":78,\"y\":84,\"id\":22,\"timeOffset\":-135},{\"x\":76,\"y\":81,\"id\":22,\"timeOffset\":-65},{\"x\":71,\"y\":81,\"id\":22,\"timeOffset\":0}]},\"timestamp\":1709230108597}', '2024-02-29 18:08:33'),
(101, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":63,\"y\":81,\"id\":27,\"timeOffset\":-456},{\"x\":55,\"y\":81,\"id\":27,\"timeOffset\":-406}]},\"timestamp\":1709230109105}', '2024-02-29 18:08:33'),
(102, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":1,\"id\":27,\"x\":49,\"y\":81},\"timestamp\":1709230109264}', '2024-02-29 18:08:33'),
(103, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":5,\"id\":27},\"timestamp\":1709230109265}', '2024-02-29 18:08:33'),
(104, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":0,\"id\":27,\"x\":49,\"y\":81},\"timestamp\":1709230109410}', '2024-02-29 18:08:33'),
(105, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":2,\"id\":27,\"x\":49,\"y\":81},\"timestamp\":1709230109411}', '2024-02-29 18:08:33'),
(106, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":0,\"texts\":[],\"attributes\":[],\"removes\":[],\"adds\":[{\"parentId\":34,\"nextId\":null,\"node\":{\"type\":2,\"tagName\":\"div\",\"attributes\":{\"class\":\"para_2\"},\"childNodes\":[],\"id\":66}},{\"parentId\":66,\"nextId\":null,\"node\":{\"type\":3,\"textContent\":\"\\n            \",\"id\":67}},{\"parentId\":66,\"nextId\":67,\"node\":{\"type\":2,\"tagName\":\"input\",\"attributes\":{\"type\":\"text\",\"id\":\"email\",\"placeholder\":\"Enter your email\"},\"childNodes\":[],\"id\":68}},{\"parentId\":66,\"nextId\":68,\"node\":{\"type\":3,\"textContent\":\"\\n                \",\"id\":69}},{\"parentId\":66,\"nextId\":69,\"node\":{\"type\":2,\"tagName\":\"label\",\"attributes\":{\"for\":\"email\"},\"childNodes\":[],\"id\":70}},{\"parentId\":66,\"nextId\":70,\"node\":{\"type\":3,\"textContent\":\"\\n                \",\"id\":71}},{\"parentId\":66,\"nextId\":71,\"node\":{\"type\":2,\"tagName\":\"p\",\"attributes\":{},\"childNodes\":[],\"id\":72}},{\"parentId\":66,\"nextId\":72,\"node\":{\"type\":3,\"textContent\":\"\\n                \",\"id\":73}},{\"parentId\":72,\"nextId\":null,\"node\":{\"type\":3,\"textContent\":\"This is a sample code after clicking the button.\",\"id\":74}},{\"parentId\":70,\"nextId\":null,\"node\":{\"type\":3,\"textContent\":\"Email\",\"id\":75}}]},\"timestamp\":1709230109415}', '2024-02-29 18:08:33'),
(107, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":49,\"y\":81,\"id\":27,\"timeOffset\":-321},{\"x\":50,\"y\":81,\"id\":27,\"timeOffset\":-56}]},\"timestamp\":1709230109620}', '2024-02-29 18:08:33'),
(108, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":52,\"y\":81,\"id\":27,\"timeOffset\":-199},{\"x\":65,\"y\":90,\"id\":18,\"timeOffset\":-145},{\"x\":75,\"y\":98,\"id\":18,\"timeOffset\":-87},{\"x\":89,\"y\":113,\"id\":38,\"timeOffset\":-35}]},\"timestamp\":1709230110120}', '2024-02-29 18:08:33'),
(109, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":92,\"y\":115,\"id\":38,\"timeOffset\":-500},{\"x\":99,\"y\":121,\"id\":38,\"timeOffset\":-447},{\"x\":101,\"y\":125,\"id\":36,\"timeOffset\":-381},{\"x\":104,\"y\":128,\"id\":36,\"timeOffset\":-326},{\"x\":108,\"y\":133,\"id\":36,\"timeOffset\":-263},{\"x\":112,\"y\":138,\"id\":44,\"timeOffset\":-206},{\"x\":112,\"y\":141,\"id\":44,\"timeOffset\":-138},{\"x\":115,\"y\":143,\"id\":44,\"timeOffset\":-41}]},\"timestamp\":1709230110636}', '2024-02-29 18:08:33'),
(110, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":1,\"id\":44,\"x\":115,\"y\":143},\"timestamp\":1709230110690}', '2024-02-29 18:08:33'),
(111, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":6,\"id\":27},\"timestamp\":1709230110692}', '2024-02-29 18:08:33'),
(112, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":5,\"id\":44},\"timestamp\":1709230110693}', '2024-02-29 18:08:33'),
(113, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":0,\"id\":44,\"x\":115,\"y\":143},\"timestamp\":1709230110782}', '2024-02-29 18:08:33'),
(114, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":2,\"type\":2,\"id\":44,\"x\":115,\"y\":143},\"timestamp\":1709230110782}', '2024-02-29 18:08:33'),
(115, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":1,\"positions\":[{\"x\":115,\"y\":143,\"id\":44,\"timeOffset\":-428}]},\"timestamp\":1709230111150}', '2024-02-29 18:08:33'),
(116, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":5,\"text\":\"M\",\"isChecked\":false,\"id\":44},\"timestamp\":1709230112227}', '2024-02-29 18:08:33'),
(117, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":5,\"text\":\"Mi\",\"isChecked\":false,\"id\":44},\"timestamp\":1709230112454}', '2024-02-29 18:08:33'),
(118, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":5,\"text\":\"Mih\",\"isChecked\":false,\"id\":44},\"timestamp\":1709230112592}', '2024-02-29 18:08:33'),
(119, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":5,\"text\":\"Mihi\",\"isChecked\":false,\"id\":44},\"timestamp\":1709230112735}', '2024-02-29 18:08:33'),
(120, 'session_1709230113198', '{\"type\":3,\"data\":{\"source\":5,\"text\":\"Mihir\",\"isChecked\":false,\"id\":44},\"timestamp\":1709230112872}', '2024-02-29 18:08:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rrweb_event`
--
ALTER TABLE `rrweb_event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rrweb_event`
--
ALTER TABLE `rrweb_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
