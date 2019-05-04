-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2019 at 12:00 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uomleoso_leo`
--

-- --------------------------------------------------------

--
-- Table structure for table `green_map`
--

CREATE TABLE `green_map` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` varchar(8) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `green_map`
--

INSERT INTO `green_map` (`id`, `name`, `year`, `address`, `lat`, `lon`, `url`) VALUES
(1, 'à·ƒà·™à¶±à·™à·„à·ƒ', '2017/18', 'Methodist elders home, moratumulla', 6.7892018, 79.8970876, 'http://www.uomleos.org/2017/11/24/%e0%b7%83%e0%b7%99%e0%b6%b1%e0%b7%99%e0%b7%84%e0%b7%83/'),
(2, 'Apeksha', '2017/18', 'Maharagama Cancer Hospital- Child Unit', 6.837244, 79.92032, 'http://www.uomleos.org/2017/12/24/à¶…à¶´à·šà¶šà·Šà·‚à·-apeksha/'),
(7, 'à·ƒà·’à¶Ÿà·’à¶­à·’  à·ƒà·’à¶­à·Š à¶»à·–', '2017/18', 'Singithi Preschool, Bandaranayake Mawatha, katubedda', 6.7956739, 79.8983553, 'http://www.uomleos.org/2017/11/24/%e0%b7%83%e0%b7%92%e0%b6%9f%e0%b7%92%e0%b6%ad%e0%b7%92-%e0%b7%83%e0%b7%92%e0%b6%ad%e0%b7%8a-%e0%b6%bb%e0%b7%96/'),
(8, 'à¶¯à·’à¶»à·’ à¶½à·’à¶º à¶¢à¶ºà¶¸à¶œ - à·ƒà¶»à·” à¶šà¶½ à¶¯à·’à·€à·’ à¶¸à·„', '2017/18', 'à·„à¶´à·”à¶œà¶½ à¶±à·à¶œà·™à¶±à·„à·’à¶» à·€à·à·ƒà¶±à· à·ƒà¶«à·ƒ à·ƒà¶¸à·’à¶­à·’à¶º, à¶¶à¶§à·”à·€à¶±à·Šà¶­à·”à¶©à·à·€ à¶´à·à¶», à·€à¶šà·Šà·€à·™à¶½à·Šà¶½', 6.076585, 80.195876, 'http://www.uomleos.org/2017/09/20/diriliya-jayamaga-sarukala-divimaga/'),
(11, 'Golden Netz', '2017/18', 'X Sports Arena, Mattakkuliya', 6.974179, 79.876146, 'http://www.uomleos.org/2018/04/02/golden-netz/'),
(12, 'à¶šà·œà·…à·œà¶¸à·Šà¶­à·œà¶§à·’à¶±à·Š à¶ºà·à¶½à·Šà¶´à·à¶±à¶¸à¶§ | Beach cleaning', '2017/18', 'Casuarina Beach, Jaffna', 9.763272, 79.887869, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155549210633369'),
(13, 'à¶šà·œà·…à·œà¶¸à·Šà¶­à·œà¶§à·’à¶±à·Š à¶ºà·à¶½à·Šà¶´à·à¶±à¶¸à¶§ | Vision', '2017/18', 'Vaazhvaham blind school, Jaffna', 9.661498, 80.025547, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155572756583369'),
(14, 'à¶šà·œà·…à·œà¶¸à·Šà¶­à·œà¶§à·’à¶±à·Š à¶ºà·à¶½à·Šà¶´à·à¶±à¶¸à¶§ | Kolam Competition', '2017/18', 'Chunnagum Kovil, Jaffna', 9.6619498, 80.0221979, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155572736648369'),
(15, 'à¶šà·œà·…à·œà¶¸à·Šà¶­à·œà¶§à·’à¶±à·Š à¶ºà·à¶½à·Šà¶´à·à¶±à¶¸à¶§ | Pongal Celebration', '2017/18', 'Jaffna', 9.6619498, 80.0221979, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155572728248369'),
(16, 'Burn Less â€“ Save More', '2017/18', 'Moratuwa, Srilanka', 6.788071, 79.891281, 'http://www.uomleos.org/2018/04/01/burn-less-save-more/'),
(17, 'DaVinci â€“ à·ƒà·’à¶­à·”à·€à¶¸à·Š à¶­à¶»à¶Ÿà¶º', '2017/18', 'The Ceylon School for the Deaf & Blind, 521, Galle Road,, Dehiwala-Mount Lavinia', 6.8102365, 79.8809132, 'http://www.uomleos.org//2018/04/01/davinci-à·ƒà·’à¶­à·”à·€à¶¸à·Š-à¶­à¶»à¶Ÿà¶º/'),
(18, 'à¶½à·’à¶ºà· à¶´à·à¶¯à·”à¶» -2018', '2017/18', 'Old Gymnasium, University of Moratuwa.', 6.7959957, 79.8979652, 'http://www.uomleos.org/2018/02/10/leo-padura/'),
(19, 'Mid-year review 2017/18', '2017/18', 'Department of Electronic & Telecommunication Engineering, University of Moratuwa', 6.7963941, 79.8992495, 'http://www.uomleos.org/2018/02/10/mid-year-review/'),
(21, 'à¶…à¶šà·”à¶»à¶§ à¶‘à·…à·’à¶ºà¶šà·Š', '2017/18', 'Batuwangala Central College, Neluwa.', 6.372826, 80.3552698, 'http://www.uomleos.org/2018/01/30/1673/'),
(22, 'à¶…à¶´à·’à¶§à¶­à·Š à¶±à¶­à·Šà¶­à¶½à·Š', '2017/18', 'à¶¶à¶§à¶œà¶±à·Šà·€à·’à¶½ â€œà·ƒà·”à·€à·ƒà·™à¶­â€ à·…à¶¸à· à¶¸à¶°à·ƒà·Šà¶®à·à¶±à¶º, à¶œà·à¶½à·Šà¶½.', 6.0507722, 80.2007912, 'http://www.uomleos.org/2018/01/30/%E0%B6%85%E0%B6%B4%E0%B7%92%E0%B6%A7%E0%B6%AD%E0%B7%8A-%E0%B6%B1%E0%B6%AD%E0%B7%8A%E0%B6%AD%E0%B6%BD%E0%B7%8A/'),
(23, 'Shramadhana Campaign', '2017/18', 'Sri Pushparama Viharaya, Matara', 5.9525242, 80.5473142, 'http://www.uomleos.org/2018/01/30/shramadhana-campaign/'),
(24, 'Surakimu Mihikatha', '2017/18', 'Galkissa', 6.831561, 79.8631, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155527259103369'),
(25, 'à¶’à¶šà· à·ƒà·à¶šà·Šà¶šà·”à·€à·š', '2017/18', 'University of Moratuwa, Katubedda', 6.796877, 79.901778, 'http://www.uomleos.org/2017/11/24/drama-%E0%B6%92%E0%B6%9A%E0%B7%8F-%E0%B7%83%E0%B7%8F%E0%B6%9A%E0%B7%8A%E0%B6%9A%E0%B7%94%E0%B7%80%E0%B7%9A/'),
(26, 'Sihinayata Piyaapath | Phase 1 | Paraaliya', '2017/18', 'Sri Jinarathana maha vidyalaya, Paraaliya', 6.167507, 80.091205, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155054729463369'),
(27, 'Sihinayata Piyaapath | Phase 2 | Atugoda,Kegalle', '2017/18', 'à¶…à¶§à·”à¶œà·œà¶© à·à·Šâ€à¶»à·“ à·ƒà·”à¶¸à¶‚à¶œà¶½ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º-à¶šà·‘à¶œà¶½à·Šà¶½', 7.202935, 80.331214, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155066593488369'),
(28, 'à¶…à¶»à¶«', '2017/18', 'à¶¸à·à¶­à¶» à¶¸à·”à¶½à¶§à·’à¶ºà¶± à¶œà·œà¶¸à·Šà¶¶à¶¯à·Šà¶¯à¶½ à¶†à¶»à¶«à·Šâ€à¶ºà¶º', 6.165206, 80.586318, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155093729393369'),
(29, 'Sihinayata Piyaapath | Phase 4 | Buluthota', '2017/18', 'à¶»/à¶‡à¶¹à·’/à¶¶à·”à·…à·”à¶­à·œà¶§ à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º', 6.316232, 80.843315, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155124461633369'),
(30, 'Heartbeat - Phase 1 | Thawalama | Leadership & Motivation', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155124970798369'),
(31, 'Heartbeat - Phase 1 | Thawalama | Shade for hopes', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'http://Www.uomleos.org/2017/09/20/heartbeat/'),
(32, 'Heartbeat - Phase 1 | Thawalama | Night Camp Fire', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155124970798369'),
(33, 'Hearbeat - Phase 1 | Thawalama | Research About Flood', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155124970798369'),
(34, 'Heartbeat - Phase 1 | Thawalama |  Knowing About Diabetes', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155124970798369'),
(35, 'Heartbeat - Phase 1 | Thawalama | Education With Humanity', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155125027383369'),
(36, 'Heartbeat - Phase 1 | Thawalama | Aware About Dengue', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à¶½à·Šà·€à·’à¶§à·’à¶œà¶½, à¶­à·€à¶½à¶¸', 6.334727, 80.342198, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155125027383369'),
(37, 'à¶†à·à·“à¶»à·Šà·€à·à¶¯ à¶¶à·à¶°à·’ à¶´à·–à¶¢à· à¶´à·’à¶‚à¶šà¶¸', '2017/18', 'à·à·Šâ€à¶»à·“ à·€à·’à¶¢à¶ºà¶»à·à¶¸ à·€à·’à·„à·à¶»à·ƒà·Šà¶®à·à¶±à¶º,à¶¸à·œà¶»à¶§à·”à·€', 6.813177, 79.867655, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155187880378369'),
(38, 'Speak-Up | Phase1', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'https://www.facebook.com/128029283368/photos/?tab=album&album_id=10155223712993369'),
(39, 'Firmstance | Phase 1 | Awareness on Leoism', '2017/18', 'University of Moratuwa, Bandaranayake rd, Katubedda', 6.796378, 79.901788, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155252498558369'),
(40, 'à·ƒà·Šà·€à¶´à·Šà¶±', '2017/18', 'Rathmalana school for the dead and Blind', 6.810589, 79.883528, 'http://www.uomleos.org/2017/10/31/swapna/'),
(41, 'à·ƒà·™à¶±à·™à·„à·ƒà¶§ à·ƒà·”à·€à·ƒà·™à¶­', '2017/18', 'à·ƒà·žà¶›à·Šâ€à¶º à·€à·›à¶¯à·Šâ€à¶º à¶±à·’à¶½à¶°à·à¶»à·“ à¶šà·à¶»à·Šà¶ºà·à¶½à¶º, à¶­à·’à·ƒà·Šà·ƒà¶¸à·„à·à¶»à·à¶¸', 6.279154, 81.287669, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155292246843369'),
(42, 'Sihinayata Piyaapath | Phase 6 | Aluthwala', '2017/18', 'à¶…à¶½à·”à¶­à·Šà·€à¶½ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º', 6.183862, 80.135189, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155292451003369'),
(43, 'Sihinayata Piyaapath | Phase 7 | Heenitigala', '2017/18', 'à·à·à¶»à·’à¶´à·”à¶­à·Šâ€à¶» à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à·„à·“à¶±à·’à¶§à·’à¶œà¶½, à¶œà·à¶½à·Šà¶½', 6.016241, 80.277448, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155354383148369'),
(44, 'à¶¯à¶¸à·’à¶­à·” à·ƒà·€à·’à¶º', '2017/18', 'à·ƒà·”à¶°à¶»à·Šà¶¸à·à¶»à·à¶¸ à·€à·’à·„à·à¶»à·ƒà·Šà¶®à·à¶±à¶º, à·„à¶´à·”à¶œà¶½', 6.073553, 80.196556, 'http://www.uomleos.org/2017/12/24/%E0%B6%AF%E0%B6%B8%E0%B7%92%E0%B6%AD%E0%B7%94-%E0%B7%83%E0%B7%80%E0%B7%92%E0%B6%BA-damithu-saviya/'),
(45, 'Sihinayata Piyaapath | Phase 8 | Thulhiriya', '2017/18', 'à¶°à¶»à·Šà¶¸à·ƒà·’à¶»à·’ à·ƒà·šà¶±à·à¶±à·à¶ºà¶š à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶ºà·š, à¶­à·”à¶½à·Šà·„à·’à¶»à·’à¶º, à¶šà·‘à¶œà¶½à·Šà¶½', 7.270163, 80.223443, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155377452098369'),
(46, 'à¶…à¶´à·’ à¶…à¶šà·”à¶»à¶§ à¶¸à·à¶½à·’ à¶±à·œà·€à·™à¶¸à·”', '2017/18', 'à·€à·“à¶» à¶´à·”à¶»à¶±à·Š à¶…à¶´à·Šà¶´à·” à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶¸à·œà¶»à¶§à·”à·€', 6.778565, 79.882795, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155377527153369'),
(47, 'Heartbeat Phase - 2 | Kekirawa | Education with Humanity', '2017/18', 'à¶¸à·„à¶‰à¶½à·”à¶´à·Šà¶´à¶½à·Šà¶½à¶¸ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·à¶šà·’à¶»à·à·€', 8.097571, 80.442172, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155401420428369'),
(48, 'Heartbeat Phase - 2 | Kekirawa | Knowing about Diabetes & Cancer', '2017/18', 'à¶¸à·„à¶‰à¶½à·”à¶´à·Šà¶´à¶½à·Šà¶½à¶¸ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·à¶šà·’à¶»à·à·€', 8.097571, 80.442172, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155401441703369'),
(49, 'Heartbeat Phase - 2 | Kekirawa | Leadership & Motivation', '2017/18', 'à¶¸à·„à¶‰à¶½à·”à¶´à·Šà¶´à¶½à·Šà¶½à¶¸ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·à¶šà·’à¶»à·à·€', 8.098558, 80.442172, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155401450893369'),
(50, 'Heartbeat Phase - 2 | Kekirawa | Parents awareness session', '2017/18', 'à¶¸à·„à¶‰à¶½à·”à¶´à·Šà¶´à¶½à·Šà¶½à¶¸ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·à¶šà·’à¶»à·à·€', 8.098558, 80.442172, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155401455758369'),
(51, 'Heartbeat Phase - 2 | Kekirawa | à·ƒà¶»à·’à¶œà¶¸à¶§ à¶…à¶»à·”à¶­à¶šà·Š', '2017/18', 'à¶¸à·„à¶‰à¶½à·”à¶´à·Šà¶´à¶½à·Šà¶½à¶¸ à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·à¶šà·’à¶»à·à·€', 8.098558, 80.442172, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155401458643369'),
(52, 'Heartbeat Phase - 3 | Kallagama | Education with Humanity', '2017/18', 'à¶±à·€à·œà¶¯à·Šâ€à¶ºà· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·‘à¶½à·Šà¶½à¶œà¶¸', 6.328254, 80.850759, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155412910528369'),
(53, 'Heartbeat Phase - 3 | Kallagama |Knowing about diabetes & cancer', '2017/18', 'à¶±à·€à·œà¶¯à·Šâ€à¶ºà· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·‘à¶½à·Šà¶½à¶œà¶¸', 6.328609, 80.850949, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155412918733369'),
(54, 'Heartbeat Phase - 3 | Kallagama | Leadership & Motivation', '2017/18', 'à¶±à·€à·œà¶¯à·Šâ€à¶ºà· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·‘à¶½à·Šà¶½à¶œà¶¸', 6.328609, 80.850949, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155412921583369'),
(55, 'à¶´à·à·„à·à·ƒà¶» à·„à·™à¶§à¶šà·Š', '2017/18', 'à¶±à·€à·œà¶¯à·Šâ€à¶ºà· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶šà·‘à¶½à·Šà¶½à¶œà¶¸', 6.328609, 80.850949, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155417225583369'),
(56, 'Mora Leo League 2018', '2017/18', 'Somaweera Chandrasiri Ground, Piliyandala', 6.799938, 79.92302, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155528274648369'),
(57, 'à¶´à·à·„à·à·ƒà¶» à·„à·™à¶§à¶šà·Š |à¶¯à·™à·€à¶± à¶…à¶¯à·’à¶ºà¶» | à¶¸à¶­à·”à¶œà¶¸', '2017/18', 'à¶¶à¶´/à¶¸à¶­à·”/à·„à¶½à·Šà·€à¶½ à·ƒà·“.à¶©à¶¶à·Š.à¶©à¶¶à·Š à¶šà¶±à·Šà¶±à¶±à·Šà¶œà¶» à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º', 6.516841, 80.11824, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155568991393369'),
(58, 'Navigation | Sex Education | Leadership Camp', '2017/18', 'WP/Mt/ Halwala C.W.W. Kannangara Maha Vidyalaya', 6.516841, 80.11824, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155569024748369'),
(59, 'Navigation - Camp Fire', '2017/18', 'WP/Mt Halwala C.W.W. Kannangara Maha Vidyalaya', 6.516841, 80.11824, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155569101173369'),
(60, 'Navigation | HIKE & CLOSING CEREMONY', '2017/18', 'WP/Mt Halwala C.W.W. Kannangara Maha Vidyalaya', 6.516841, 80.11824, 'http://www.uomleos.org/event/navigation-leadership-camp/'),
(61, 'à¶½à·’à¶ºà· à¶´à·à¶¯à·”à¶» 2018', '2017/18', 'University of Moratuwa', 6.796877, 79.901778, 'http://www.uomleos.org/2018/02/10/leo-padura/'),
(62, 'Firmstance | Phase 03 | Workshop on Photoshop & Photography', '2017/18', 'University of Moratuwa', 6.796877, 79.901778, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155595821478369'),
(64, 'à¶†à·à·’à¶‚à·ƒà¶±à·', '2017/18', 'Eldersâ€™ home of Polathugoda, Thihagoda', 6.013339, 80.566004, 'http://www.uomleos.org/2017/09/19/aashinsana/'),
(65, 'Sihinayata Piyaapath | phase 3 | waliwa, morawaka', '2017/18', 'à·€à·à¶½à·“à·€ à¶¶à·žà¶¯à·Šà¶° à¶¸à·„à· à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶¸à·œà¶»à·€à¶š', 6.26528, 80.491047, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155112604113369'),
(66, 'Speak-Up | phase - 2', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155289401618369'),
(67, 'Speak-Up | phase - 3', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'http://www.uomleos.org/event/speak-phase-04/'),
(68, 'Speak-Up | Phase - 4', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'http://www.uomleos.org/event/speak-phase-04-2/'),
(69, 'Speak-Up | Phase - 5', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155618216203369'),
(70, 'Speak-Up | phase - 6', '2017/18', 'Toyota Auditorium, Rathmalana', 6.819545, 79.880083, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155669904378369'),
(71, 'Swapna', '2017/18', 'Rathmalana Blind and deaf school', 6.810591, 79.883576, 'http://www.uomleos.org/recentprojets/page/3/'),
(72, '15th Installation Ceremony', '2017/18', 'University of Moratuwa', 6.798382, 79.902653, 'http://www.uomleos.org/2017/09/20/15th-installation-ceremony-of-uom-leos/'),
(73, 'A-2 Leo Camp', '2017/18', 'National Youth Corps Training Center - Naula', 7.687601, 80.647609, 'http://www.uomleos.org/2018/04/01/leo-youth-camp/'),
(74, 'à¶‰à¶´à¶ºà·”à¶¸à·Š à¶±à·’à¶¸à·à·€à·”à¶¸à·Š', '2017/18', 'à¶´à¶½à·Šà¶½à·™à¶œà¶¸ à·ƒà¶¸à·Šà¶¶à·à¶°à·’ à·€à·à¶©à·’à·„à·’à¶§à·’ à¶±à·’à·€à·à·ƒà¶º', 6.342485, 80.559658, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773391658369'),
(75, 'à·ƒà¶»à¶«', '2017/18', 'à¶¯à·™à¶±à·’à¶ºà·à¶º à¶´à¶½à·Šà¶½à·™à¶œà¶¸ à·ƒà¶¸à·Šà¶¶à·à¶°à·’ à·€à·à¶©à·’à·„à·’à¶§à·’ à¶±à·’à·€à·à·ƒà¶º', 6.342485, 80.559658, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773396358369'),
(76, 'Sihinayata Piyaapath | Phase 9 | Pundalu Oya', '2017/18', 'à¶´à·–à¶©à·…à·”à¶”à¶º à¶¢à¶ºà·„à·™à·… à¶¢à·à¶­à·’à¶š à¶´à·à·ƒà¶½', 7.013128, 80.66321, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773436103369'),
(77, 'à·€à·’à¶¯à·” à¶±à·à¶«à·ƒ', '2017/18', 'à¶´à·–à¶©à¶½à·”à¶”à¶º à¶¢à¶ºà·„à·™à·… à¶¢à·à¶­à·’à¶š à¶´à·à·ƒà¶½', 7.013128, 80.66321, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773439938369'),
(80, 'à¶šà·”à·ƒà·š à¶œà·’à¶±à·Šà¶¯à¶»', '2017/18', 'Fort Railway station', 6.933492, 79.850506, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773497173369'),
(85, 'Sihinayata Piyaapath | Phase 5 | Meepawala', '2017/18', 'à¶¸à·“à¶´à·à·€à¶½ à¶…à¶¸à¶»à·ƒà·–à¶»à·’à¶º à·€à·’à¶¯à·Šâ€à¶ºà·à¶½à¶º, à¶œà·à¶½à·Šà¶½', 6.106777, 80.220629, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155779239208369'),
(86, 'Awurudu Waram - Twinning Project | Perak, Malaysia', '2017/18', 'Precious Gift Orphanage Society, Perak', 4.597592, 101.069658, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155773448443369'),
(87, 'Beach Cleaning - Twinning | Galle fort beach', '2017/18', 'Galle Fort Beach, Sri Lanka', 6.025183, 80.219654, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155730884208369'),
(88, 'Beach Cleaning - Twinning | Muizenberg Beach, South Africa', '2017/18', 'Muizenberg Beach, South Africa', -34.108731, 18.470163, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155730884208369'),
(95, 'à¶¯à¶ºà·à¶±à·Šà·€à·’à¶­ à¶…à·ƒà¶´à·”à·€à¶š à¶±à·™à¶­à·Š à·ƒà·’à¶­à·Š à¶…à¶©à·„à·à¶»à¶º', '2018/19', 'katuwana,Matara.', 6.2636238, 80.6909448, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155981013258369'),
(96, 'à¶¯à¶ºà·à¶±à·Šà·€à·’à¶­ à¶…à·ƒà¶´à·”à·€à¶š à¶±à·™à¶­à·Š à·ƒà·’à¶­à·Š à¶…à¶©à·„à·à¶»à¶º', '2018/19', 'nelumdeniya ,Kegalle.', 7.230844299999999, 80.26001, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155981013258369'),
(97, 'à¶¯à¶ºà·à¶±à·Šà·€à·’à¶­ à¶…à·ƒà¶´à·”à·€à¶š à¶±à·™à¶­à·Š à·ƒà·’à¶­à·Š à¶…à¶©à·„à·à¶»à¶º', '2018/19', 'galle,', 6.0535185, 80.2209773, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10155981013258369'),
(98, '16th Installation Ceremony of UoM Leos', '2018/19', 'university of Moratuwa', 6.7968412, 79.9009061, 'https://www.facebook.com/events/2089171418011617/'),
(99, 'à·ƒà¶¯à·Šà¶°à¶»à·Šà¶¸ à·€à¶»à·Šà·‚à·', '2018/19', 'university of Moratuwa', 6.7968412, 79.9009061, 'https://www.facebook.com/events/534214216994555/'),
(102, 'LEAP - Leadership Campaign', '2018/19', 'pallekiruwa , badulla.', 6.993400899999999, 81.0549815, 'https://www.facebook.com/events/2164131920498097/'),
(104, 'Mahesh Abeywickrama Memorial Debate Competition 2018', '2018/19', 'University of Moratuwa', 6.7968412, 79.9009061, 'https://www.facebook.com/events/706792482993871/'),
(105, 'à¶´à·”à·…à·”à·€à¶±à·Šà¶±à¶‚ à¶…à¶½à·Šà¶½à¶œà¶±à·Šà¶± - Catch if Possible.', '2018/19', 'University of Moratuwa', 6.7968412, 79.9009061, 'https://www.facebook.com/events/2246353068772417/'),
(106, 'à¶±à·à¶« à¶¯à·’à¶ºà·€à¶» - à¶´à·…à¶¸à·” à¶…à¶¯à·’à¶ºà¶»', '2018/19', 'athimale,Monaaragala.', 6.824897, 81.453991, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156040358728369'),
(107, 'à¶†à¶»à·à¶¸ à¶»à·à¶´à·', '2018/19', 'thapowanaya,kegalle.', 7.2510907, 80.35368199999999, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156072266123369'),
(108, 'à·„à·™à¶§ à¶±à·’à¶ºà¶¸à·” à¶…à¶´à·’', '2018/19', 'Wakwella Road, Galle 99999', 6.059552399999999, 80.20312, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156103510873369'),
(109, 'à¶±à·à¶« à¶¯à·’à¶ºà·€à¶» -à¶¯à·™à·€à¶± à¶…à¶¯à·’à¶ºà¶»-à¶…à¶§à·”à¶œà·œà¶© à·à·Šâ€à¶»à·“ à·ƒà·”à¶¸', '2018/19', 'atugoda, kegalle.', 7.202292099999999, 80.33079239999999, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156110583173369'),
(110, 'à·ƒà·Šà¶±à·šà·„ à·ƒà¶±à·Šà¶­à·à¶±-victoria elders home', '2018/19', 'rajagiriya', 6.9094108, 79.8942538, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156119961853369'),
(112, 'HEALTH CAMP', '2018/19', 'Baddegama', 6.168829199999999, 80.1793976, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156151328053369'),
(113, 'à¶†à¶­à·Šà¶¸ à¶¢à·“à·€à· 2018', '2018/19', 'university of moratuwa', 6.7968412, 79.9009061, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156121833998369'),
(114, 'à¶±à·à¶« à¶¯à·’à¶ºà·€à¶» - à¶­à·”à¶±à·Šà·€à¶± à¶…à¶¯à·’à¶ºà¶»', '2018/19', 'Bodhiraja Maha Vidyalaya,\nThiranagama,\nHikkaduwa.', 6.1222708, 80.1168162, 'https://www.facebook.com/UOMLEOS/posts/10156193092288369?__tn__=-R'),
(115, 'à¶±à·à¶« à¶¯à·’à¶ºà·€à¶» phase 4', '2018/19', 'Hiswella Kanishta Vidyalaya.,\nGampaha.', 7.0883754, 79.9906888, 'https://www.facebook.com/UOMLEOS/photos/a.412788668368/10156194561728369/?type=3&__tn__=-R'),
(116, 'à¶±à·à¶« à¶¯à·’à¶ºà·€à¶» phase 5', '2018/19', 'Kolonna National School,\nKolonna.', 6.4036506, 80.69372179999999, 'https://www.facebook.com/UOMLEOS/photos/a.412788668368/10156207082683369/?type=3&__xts__%5B0%5D=68.ARCyb4kEcSibtuFfTfYdF2QzMPF6e386BS0V-5RGx8DYFP0BVw4dkUzo1K8wwdd98LUwISTguRVaiullWwPoNOnqAVmctUwQ_KPhdE4WnpUNHQNQhAcHAtL8aouOSVWb1NBwDaozGyo6H82_jo0lv0K8Yfhqyp_S0GGvIe4fJTHkzQJAndhhcGxrjzGga5eUz4MGIEVHx17MH07Xl4rcxad5-HguSHdOt6Ck-zI2yPz3oPEOIpwyKuRufr1C_OcxUNx7eaGT0MKeehkBN66ZxJn29CvakykLTslljmvu64n8LNGKvZlywVZy-ZuDEqejD1-vg3dqji9T_8JzOVTd&__tn__=-R'),
(118, 'L E A P - 2 . 0', '2018/19', 'Kothmale', 7.0223089, 80.5910567, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156207645248369&__xts__%5B0%5D=68.ARBEPrZjpgkry2tOVOZVsP2HepaQKgZdxPIVVKxu-yMIv1OG4oCmfYxbuKW_h7ulAP3WACdFOKJUCzvukC0jeE2N_2gae6YTx1sr_1clDmqVAWP_SPTtkFCJW4D6SX8fdtOk44x_pQHEd-m6BcH3hVDsAYjv6UDSf0jxF8QR9VWTACMh4yTJJbwgAmSESocEc_kFHjBwQFspODfbbQW2jUe36wB0o-qu6S9cufIkF2lB4d3qzNJgmxzVYX61IdiXt2ujHmiJxjvfe8m9xXxwtQbAAXi804aQ6jvV1IEDa8RnPpEN6eAP_PXU-6wzXL_J659heiwK1Ve8mNd_p7aijwkuR_mDDqPYUi9hDKQ_3MRuCuszbIt9ju4KV8A3VD8-pG-uHkAhI-fH1ofOW'),
(119, 'Wings for dreams', '2018/19', 'Meth Mihira Educational Center, \nMoratuwa', 6.788070599999999, 79.8912813, 'https://www.facebook.com/UOMLEOS/posts/10156209550753369?__tn__=-R'),
(120, 'LEAD', '2018/19', 'University of Moratuwa', 6.7973214, 79.9012281, 'https://www.facebook.com/UOMLEOS/photos/a.412788668368/10156220316773369/?type=3&__tn__=-R'),
(121, 'à¶…à·ƒà·Šà·€à·à·ƒà·’à¶½à·Šà¶½ 2018', '2018/19', 'Home for elders, \nMoratuwa', 6.7838881, 79.88472010000001, 'https://www.facebook.com/UOMLEOS/videos/773678776325928/?__xts__[0]=68.ARBE04kcNyi4jj3xVHZqgVWziNPeP9KwJX_736tlS2e2rHU07Wt1MV_isbM6JXoA9kpMmXFaxgz1qofNx_KeGypF9n-3syLmrrPRbpDR2_TrjCZBTQB3FBND1q8tLSbh3vV7-Q6kETSv-cW8-I-AaLSUQqk7pjEFbqlSHBeIM83YHkG5Np6P0HiEWNg8fhZ8Cse3uiXA-4JcdsTP8_GTP0Q0Fg5L-zUyHnfbYSYsuk91JXUFUQD5OZ40Uq4Gt1VWKXhZvMGf3c3pwGNqmXA_z0o6MV_6sZQ60Ft_OODz2LRsGTQNBeS8_aLegXecH_tmQUcyN8Al4Yp_CUEVKaEIJFBALBF_o3Mf&__tn__=-R'),
(122, 'A December to Remember', '2018/19', 'Vanrith Elders Home,\nGalle', 6.0359557, 80.2110041, 'http://www.uomleos.org/event/a-december-to-remember/?fbclid=IwAR3R57jHrkID0PaKND3qXL-UCh4SF9Q4pk_jp_y1b-cceAv4rKpxJawAlxQ'),
(123, 'L E A P - 3.0', '2018/19', 'Sri Sankalpa Sunday School,\nMoratuwa', 6.788070599999999, 79.8912813, 'https://www.facebook.com/UOMLEOS/posts/10156318622013369?__tn__=-R'),
(124, 'WARNA stage 2', '2018/19', 'wanathawilluwa', 8.1869315, 79.8611832, 'https://www.youtube.com/watch?v=_8NZHw6lSEw&feature=youtu.be&fbclid=IwAR08-xJv_V8tjrmzTv8fAkPubQqznp76ocuwj74cp0P3x6KdLZgXpdxDBXU'),
(125, 'Alone Paw Prints (International Twinning)', '2018/19', 'university of moratuwa,\nKatubedda,\nMoratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/events/613941019078845/'),
(126, 'GREEN WAVES', '2018/19', 'Angulana, Sri Lanka', 6.7976114, 79.8737836, 'https://www.facebook.com/events/1649115625191236/'),
(127, 'à¶šà·œà·…à·œà¶¸à·Šà¶­à·œà¶§à·’à¶±à·Š à¶ºà·à¶½à·Šà¶´à·à¶±à¶¸à¶§', '2018/19', 'Jaffna', 9.6614981, 80.02554649999999, 'https://www.facebook.com/events/1013694655504993/'),
(128, 'A December to Remember', '2018/19', 'vanrith elders home,\nGalle', 6.0359557, 80.2110041, 'https://www.facebook.com/events/281219375853394/'),
(129, 'à¶´à·”à·…à·”à·€à¶±à·Šà¶±à¶‚ à¶…à¶½à·Šà¶½à¶œà¶±à·Šà¶± - Catch if Possible.', '2018/19', 'university of moratuwa,\nKatubedda,\nMoratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/events/2246353068772417/'),
(130, 'à¶½à·’à¶ºà· à¶´à·à¶¯à·”à¶» - 2019', '2018/19', 'university of moratuwa,\nkatubedda,\nmoratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/events/394305037780517/'),
(131, 'SHE', '2018/19', 'University of Moratuwa, 10400 Katubedda, Sri Lanka', 6.795002999999999, 79.9007589, 'https://www.facebook.com/events/594220294358995/'),
(132, 'The Symphony Of Cure', '2018/19', 'Apeksha hospital,\nMaharagama.', 6.8372443, 79.9203196, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156373589723369'),
(133, 'Heal All', '2018/19', 'University of moratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156476177388369'),
(134, 'L E A D Workshop', '2018/19', 'university of moratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156364638738369'),
(135, 'à¶½à·’à¶ºà· à¶‘à¶šà·Šà¶š à¶…à·€à·”à¶»à·”à¶¯à·” - 2019', '2018/19', 'university of moratuwa', 6.795002999999999, 79.9007589, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156506433583369'),
(136, 'GREEN WAVES', '2018/19', 'Rathmalana', 6.8195453, 79.8800832, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156513326903369'),
(137, 'GREEN WAVES', '2018/19', 'angulana', 6.7976114, 79.8737836, 'https://www.facebook.com/pg/UOMLEOS/photos/?tab=album&album_id=10156513326903369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `green_map`
--
ALTER TABLE `green_map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `green_map`
--
ALTER TABLE `green_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
