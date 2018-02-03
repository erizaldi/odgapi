-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2018 at 04:50 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odgapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `createdAt`, `updatedAt`) VALUES
(1, 'Celebration of Indonesia Indepedence Day', 'On the 17th of August what to do besides the ceremony? Right, the competition!', '<p>The Proclamation of Indonesian Independence was held on Friday, August 17, 1945 AD, or August 17, 2605 according to the Japanese year, read by Soekarno accompanied by Drs. Mohammad Hatta is located at Jalan Pegangsaan Timur 56, Central Jakarta.</p>\n<p>It\'s incomplete if August 17th is not followed by all kinds of competitions that are held every year. Various kinds of competitions usually always enliven this event Agustusan. Various competitions such as climbing areca nut, tug of war, and eating crackers must be in every 17-an race. And usually participants who participate also consists of various ages.</p>\n<p>Not only in the village who hold the competitions, but also in schools, offices, housing and several groups of organizations. They are very enthusiastic to participate in these competitions because it is held only once a year. Because with the race can unite the citizens.</p>', 'odg-20170819_090359.jpg', 'odg-20170819_09035Copy.jpg', 'News, ODG, Indonesia', '2017-10-09 03:09:57', '2017-11-02 08:55:17'),
(2, 'Open Fasting Together', 'After a day of fasting, the evening prayer is a sign of breaking fast.', '<p>The month of Ramadan, almost all Muslims especially in Indonesia prepare themselves both physically and inner preparation welcomed the coming of this holy month. Every Ramadan month many people who when the time to break the fast to do activities to wait for the time to break the fast (Sundanese word: Ngabuburit, people Cirebon: Nyenyore).</p>\n<p>Here are some activities that people usually do before the time to break the fast:</p>\n<p>- Listening to lectures in mosques or mosques, this activity is usually followed by breaking the fast together.&nbsp;</p>\n<p>- Looking for food to break the fast or takjilan.</p>\n<p>-&nbsp;Chatting together while waiting time to break, this activity is usually done to break the fast together.</p>', 'odg-IMG_4054.jpg', 'odg-IMG_4054Copy.jpg', 'News', '2017-10-15 00:36:54', '2017-11-03 01:34:01'),
(4, 'News Flash', 'ODG have won another project 2nd Fix Stars Mountain!', '<p class="MsoNormal"><span lang="EN-AU" style="font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ansi-language: EN-AU;">On the first day of the new financial year, ODG were awarded a large project in Papua New Guinea &ndash; the second fix for the Star Mountain project. A lot of work has gone into chasing down this opportunity.</span></p>\n<p class="MsoNormal"><span style="font-family: Arial, sans-serif; font-size: 10pt;">A&nbsp;great way to start the year, ODG are looking forward to more project awards in the weeks and months to come!</span></p>', 'odg-Papua_MapCopy.jpg', 'odg-Papua_MapCopyCopy.jpg', 'News, ODG, Project, Stars Mountain', '2017-10-20 06:33:07', '2017-11-03 01:25:10'),
(5, 'Open Fasting Together 2', 'Another photo for our open fasting together at new office at Beltway.', '<p>Another photo for our open fasting together at new office. The moment while in Kultum before adzan.</p>', 'odg-IMG_20170616_170908Copy.jpg', 'odg-IMG_20170616_170908CopyCopy.jpg', 'News, ODG, Indonesia', '2017-10-26 02:24:09', '2017-11-03 01:28:19'),
(6, 'Our President Director', 'President Director, Chris Evans give an explanation of ODG Vision and Mission.', '<p>The look of our President Director, Chris Evans, who gives an explanation of ODG Vision and Mission. If you want to see it, look it up on youtube :&nbsp;https://www.youtube.com/watch?v=hAwHVHJfCmo&amp;feature=youtu.be</p>\n<p>Like and Subscribe is always appreciated!</p>', 'odg-UntitledCopy.jpg', 'odg-UntitledCopy.jpg', 'News, ODG, Indonesia', '2017-10-26 03:26:46', '2017-11-03 01:49:06'),
(7, 'Mining Event 2017', 'The look of our stand while in event at JI-Expo Kemayoran .', '<p>Our stand in Mining Event 2017. The left side in black clothes is our President Director giving some explanation to our customers. And on the right (also in black clothes) is his bodyguard, Rudi and Sugeng.</p>', 'odg-IMG_3907Copy.JPG', 'odg-IMG_3907CopyCopy.JPG', 'News, ODG, Indonesia', '2017-10-26 04:32:18', '2017-11-03 02:23:18'),
(8, 'IABC Event 2017', 'Indonesia Australia Business Concil at JI-Expo 2017', '<p>The Gathering between Indonesia Company &amp; Australia Company.</p>', 'odg-Untitled3Copy.jpg', 'odg-Untitled3CopyCopy.jpg', NULL, '2017-10-27 03:42:46', '2017-11-07 08:54:34'),
(9, '7 Habits Training (Balikpapan)', 'The training of 7 habits in Balikpapan, Kalimantan.', '<p>After the training in Jakarta, ODG also held the 7 habits training in Balikpapan.</p>', 'odg-7_Habits_Training-Balikpapan.JPG', 'odg-7_Habits_Training-Balikpapan.JPG', 'News, ODG, Indonesia, Training, 7 Habits', '2017-12-26 01:40:03', '2017-12-26 01:40:37'),
(10, '7 Habits Training (Jakarta)', 'The training of 7 habits in Jakarta.', '<p>This is the photo when our office personel listening to lecturer about the training about what habits should they have as a person.</p>', 'odg-7_Habits_Training-Jakarta.jpg', 'odg-7_Habits_Training-Jakarta.jpg', 'News, ODG, Indonesia, Training, 7 Habits', '2017-12-26 01:43:32', '2017-12-26 01:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `createdAt`, `updatedAt`) VALUES
(1, 'ACCOUNTING/TAX STAFF', 'Kantor Akuntan Publik Bayudi Yohana Suzy Arie (KAP BYSA) berlokasi di Jakarta membuka lowongan untuk Posisi Staff Accounting & Perpajakan', '<div class="jobad-primary-details " style="box-sizing: border-box; outline: none; zoom: 1; position: relative; margin: 0px 0px 32px;">\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative;"><span style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Kualifikasi :</span></span></p>\n<ol style="box-sizing: border-box; outline: none; margin-top: 0px; margin-bottom: 1em;">\n<li style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Pendidikan Minimal D3 Akuntasi/Pajak dan S1 Akuntansi/Pajak.</span></li>\n<li style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Pengalaman kerja minimal 1 tahun.</span></li>\n<li style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Bertanggung jawab, disiplin, loyal, dan memiliki motivasi tinggi</span></li>\n</ol>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Jenis Pekerjaan : Penuh Waktu</span></p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative;">&nbsp;</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative;">&nbsp;</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; line-height: normal;"><span style="box-sizing: border-box; outline: none; font-size: 10pt; font-family: Verdana, sans-serif;">Apabila Anda memenuhi persyaratan diatas segera kirimkan CV dan foto terbaru dengan klik tombol dibawah ini</span></p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative;">&nbsp;</p>\n</div>\n<div class="jobad-primary-box jobad-primary-tool-asst  job-ad-applytool" style="box-sizing: border-box; outline: none; zoom: 1; position: relative; margin: 0px 0px 32px;">\n<div class="primary-tool-asst" style="box-sizing: border-box; outline: none; zoom: 1; position: relative;"><menu class="primary-tool-main" style="box-sizing: border-box; outline: none; zoom: 1; position: relative; margin: 0px 0px 14px; padding: 0px; text-align: center; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: normal;">\n<li id="job-ad-template-orange-btn" class="primary-tool-prime tool-apply" style="box-sizing: border-box; outline: none; list-style: none;"><a class="btn btn-primary btn-job-ad-apply" style="box-sizing: border-box; outline: none; background-color: #ff9000; color: #ffffff; display: inline-block; padding: 0px 18px; margin-bottom: 0px; font-weight: bold; line-height: 32px; white-space: nowrap; vertical-align: middle; touch-action: manipulation; cursor: pointer; user-select: none; background-image: none; border: 1px solid transparent; border-radius: 4px; text-shadow: none; min-width: 80px; min-height: auto;" target="_blank">APPLY NOW</a></li>\n<li></li>\n</menu>\n<div class="primary-tool-hint" style="box-sizing: border-box; outline: none; zoom: 1; position: relative; text-align: center; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: normal;">&nbsp;</div>\n</div>\n</div>', 'odg-Gosowong-01.jpg', 'odg-Gosowong-01-thumb.jpg', 'klkkllk', '2017-10-09 02:51:30', '2017-10-15 01:14:13'),
(2, 'Tax Accounting/Akuntansi Perpajakan', 'Kandidat yang kami butuhkan adalah seseorang yang mampu mengurus pajak sebuah perusahaan serta mampu membuat laporan keuangan dengan sangat baik.', '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">Kandidat yang kami butuhkan adalah seseorang yang mampu mengurus pajak sebuah perusahaan serta mampu membuat laporan keuangan dengan sangat baik.</span></p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">&nbsp;</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;"><span style="box-sizing: border-box; outline: none; font-weight: bold;">Kualifikasi :</span></span></p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;"><span style="box-sizing: border-box; outline: none; font-size: 12pt;">1. Pria - Wanita max 35 thn</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">2. Pendidikan min.S1 Akuntansi</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">3. Pengalaman min 1 tahun dalam bidang akuntansi dan pajak</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">4. Lancar mengoperasikan Ms Office terutama Excel , Word dan Powerpoint</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">5. Memahami Sistem Akuntansi &amp; Perpajakan dengan baik</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">6. Mampu menyusun pembukuan dari awal sampai dengan Laporan Keuangan</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">6. Mengerti dan dapat membuat laporan perpajakan (SPT masa dan SPT tahunan)</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">7. Cermat, rapih, teliti, proaktif, dan loyalitas tinggi</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">8. Mampu bekerja dalam teamwork serta memenuhi target / deadline</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">9. Mampu berkomunikasi dengan baik</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">10. Memiliki Interpersonal &amp; dedikasi kerja yang baik</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">11. Dapat berkerja fulltime</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">12. Dapat dikontrak minimal 1 tahun</span><br style="box-sizing: border-box; outline: none;" /><span style="box-sizing: border-box; outline: none; font-size: 12pt;">13. Minimal IP 3.0</span></p>', 'odg-Sangatta-01.jpg', 'odg-Sangatta-01-thumb.jpg', 'FInance', '2017-10-15 01:09:57', '2017-10-15 01:09:57'),
(3, 'Chief Financial Officer - MNC ManufacturingJakarta', 'A well respected player boasting a strong track record historically, they are a premium brand in the industry. Consequently, they are looking to bring on board a dynamic Management Accountant who can assist the business at a time of rapid growth and make a key contribution to the business.', '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;"><span style="box-sizing: border-box; outline: none; font-weight: bold;">Description</span></p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">The Controller will be reporting to the Regional Finance Controller. You will be expected to be a business partner with plan and financial management to effectively manage and control the local business. On top of that you will be needed to control and monitor all aspects financial management such as reporting, budgeting, and forecasting. The successful candidate will also be responsible for developing and implementing accounting policies and systems to monitor the organizations financial assets and provide complete and accurate financial information.</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">&nbsp;</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">Key responsibilities will include (but are not limited to):</p>\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 1em; zoom: 1; position: relative; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">&nbsp;</p>\n<ul style="box-sizing: border-box; outline: none; margin-top: 0px; margin-bottom: 1em; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">\n<li style="box-sizing: border-box; outline: none;">Constructing weekly and monthly internal reports, with detailed commentary around commercial implications</li>\n<li style="box-sizing: border-box; outline: none;">Construction of Financial Analysis, Planning and Reporting</li>\n<li style="box-sizing: border-box; outline: none;">Adherence to local and international statutory requirements and communicating it to the head office as well</li>\n<li style="box-sizing: border-box; outline: none;">Prepare and review monthly and yearly financial statement</li>\n<li style="box-sizing: border-box; outline: none;">Assisting with audit preparation and making sure timely completion of the annual finance statement</li>\n<li style="box-sizing: border-box; outline: none;">Performing daily walk through with to discuss production and costing issues.</li>\n<li style="box-sizing: border-box; outline: none;">Review Labour reporting cost, material costs, manufacturing overhead, distribution cost, returns and inventory levels</li>\n<li style="box-sizing: border-box; outline: none;">Maintain records and reconciliation controls of approved budgets</li>\n<li style="box-sizing: border-box; outline: none;">Introduction and implementation of cost saving initiatives which will impact the bottom line of the business</li>\n</ul>', 'odg-riaupulp-01.jpg', 'odg-riaupulp-01-thumb.jpg', 'lowongan', '2017-10-15 01:15:36', '2017-10-15 01:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `segment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `createdAt`, `updatedAt`, `segment`) VALUES
(1, 'Kaltim Prima Coal', 'Kaltim Prima Coal is an Indonesian incorporated company that engages in coal mining and sales for both domestic and international customers. From our head office in Sangatta, our representative offices in Jakarta, Samarinda, and Balikpapan, KPC manages a mining area of 90,938 hectares.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to KPC is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation Electrical</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Lighting Tower Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Relocation Transmission Line 70 Kv</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Installation 11 unit Additional Lighting Tower</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Lighting Plant &amp; Lighting Tower Preventive</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Electrical System Installation at ECR &amp; MCR</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Maintenance Services (UPS, PID Fixed Plant Area, Electrical and Genset)</p>', 'odg-KPC_06Copy.jpg', 'odg-KPC_LogoCopy.png', 'Mining, Coal, KPC', '2017-09-26 10:14:07', '2017-11-06 02:17:54', 2),
(2, 'Donggi Senoro (DSLNG)', 'DSLNG is the first Indonesian LNG project developed as a "downstream business activity" based on Law No. 22 of 2001, which enables separate development of upstream (feedstock gas supply) and downstream (LNG manufacturing) businesses.', '<p>Most of ODG services to&nbsp;Donggi Senoro is :</p>\n<p>- Electrical/instrument</p>\n<p>- Fire Protection</p>\n<p>- Bus Duct</p>\n<p>- Installation for Cabling &amp; Wiring Low Voltage</p>\n<p>- Termination</p>\n<p>- Lighting</p>\n<p>- Earthing &amp; Connection to Equipment</p>\n<p>- Supply Instruments Cable</p>\n<p>- Cathodic Protection</p>\n<p>- Fire and Hydrant Equipment</p>\n<p>- Valve for Water Spray System</p>\n<p>- Installation of Fire Alarm, Gas &amp; Flame Detectors.</p>', 'odg-Donggi_5Copy.jpg', 'odg-Logo_DSLNGCopy.png', 'Oil & Gas, LNG, Donggi Senoro', '2017-10-09 00:59:47', '2017-11-02 07:27:18', 4),
(3, 'Leighton Total Joint Operation', 'LEIGHTON ASIA, established in 1975, is a leading international construction company.\nEstablished in September 4, 1970 bearing the name of PT Tjahja Rimba Kentjana, restructuring its business and changed the name into PT Total Bangun Persada in early 1981.', '<p>Most of ODG Services in&nbsp;Australian Embassy is:</p>\n<p>- Electrical/Instrument and Fire Protection</p>\n<p>- MATV Cable</p>\n<p>- Lightning Protection</p>\n<p>- Lighting installation</p>\n<p>- Comm\'s &amp; Data</p>\n<p>- Transformers</p>\n<p>- Bus Duct</p>\n<p>- Fitting for Lights</p>\n<p>- MSB &amp; MSSB</p>\n<p>- Skirting Duct.</p>', 'odg-Embassy_3Copy.JPG', 'odg-Total_Logo.jpg', 'Commercial, Leighton, Total, LTJO', '2017-10-17 03:39:22', '2017-11-02 07:21:07', 3),
(4, 'PT. Freeport Indonesia', 'Is an affiliate of Freeport-McMoRan. Freeport mining, processing and exploration for ore containing copper, gold and silver. Operating in highland areas Mimika Papua Province, Indonesia. We market concentrates containing copper, gold and silver all over the world.\n', '<p>ODG focuses on building a barrack.</p>', 'odg-Freeport_2_Copy.jpg', 'odg-Logo_PT_Freeport.png', 'Freeport, Mining, Gold', '2017-10-17 03:39:54', '2017-11-02 03:08:50', 2),
(5, 'PT. Cikarang Listrindo', 'About 45 km southeast of Jakarta, starting in 1992, Cikarang Listrindo built its first power plant in the heart of Jababeka Industrial Estate and since then has set the pace for industrial development by providing its customers with a high quality supply of electricity. More than 2,000 customers in 5 industrial estates trust Cikarang Listrindo to deliver reliable and stable power.', '<p>The mainly thing PT. ODG Indonesia do in this project not about supplying some power in generator. Rather that the group, like some previously ODG project in like example Electric Steam Power Plant, focused in pulling cable and instrument piping.</p>\n<p>&nbsp;</p>\n<p>PT. ODG Indonesia always ensure to get the perfect and trouble-free results.</p>', 'odg-Cikarang_Headers_1_Copy.jpg', 'odg-Cikarang_Listrindo_LogoCopy.jpeg', 'Power, ODG', '2017-10-17 03:40:31', '2017-11-02 02:06:22', 5),
(6, 'PT. Batutua Tembaga Raya', 'PT. Batutua Tembaga Raya (BTR), in cooperation with PT Batutua Kharisma Permai (BKP), is the operator of the Wetar Copper Project, a heap leach solvent extraction-electro winning (SX-EW) Copper Project on Wetar Island, Maluku Barat Daya. A SX-EW Plant will start producing up to 25,000 tonne per annum copper cathode deposits, with development activities commencing this year.', '<p>Most of ODG services to&nbsp;PT. Batutua Tembaga Raya&nbsp;is :</p>\n<p>- Electrical/Instrument Installation</p>\n<p>- Substation Installation</p>\n<p>- Transformation</p>\n<p>- Cable Ladder Installation</p>\n<p>- Power Cable Installation</p>\n<p>- Control &amp; Instrument Cable</p>\n<p>- Lighting Pole</p>\n<p>- Earthing</p>\n<p>- Bonding and Lighning Protection</p>', 'odg-Wetar_1opy.JPG', 'odg-PT_BatutuaCopy.jpg', 'Mining, Copper, Wetar', '2017-10-23 02:30:55', '2017-11-06 02:13:10', 2),
(7, 'PT. Nusa Halmahera Minerals', 'PT Nusa Halmahera Minerals (PTNHM) is an Indonesian company owned by Newcrest 75% and PT Aneka Tambang (Persero) 25%. PTNHM operates the Gosowong gold mine in North Halmahera District, North Maluku Province, Indonesia.\nFor the year ended June 2016, the mine produced 197,463 ounces of gold.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;NHM is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Project Electrical and Instrumentation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply Equipment and Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Operation &amp; Maintenance Services</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supplied 2 Qualified Electrician and 2 Helper</p>', 'odg-Gosowong_2Copy.jpg', 'odg-Logo-NHMCopy.png', 'Mining, Gold, NHM', '2017-10-31 07:46:56', '2017-11-02 07:25:37', 2),
(8, 'Bechtel Australia', 'From intricate engineering to complex project management, our people have designed and constructed some of the country’s most significant infrastructure on which the region’s economy is built. With a portfolio spanning mines, minerals, LNG, refineries, chemical plants, power stations, and telecommunications infrastructure, Bechtel is helping build Australia’s future.', '<p>lol</p>', 'odg-Muara_TuhupCopy.JPG', 'odg-bechtelCopy.png', 'Mining, Clients, Bechtel', '2017-11-03 02:51:29', '2017-11-03 02:52:58', 2),
(9, 'Nestlé', 'Nestlé is the world’s largest food and beverage company. We have more than 2000 brands ranging from global icons to local favourites, and we are present in 191 countries around the world.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;Nestle is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation Electrical</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation Fire Protection System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation Piping System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Mechanical Work</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Termination Work</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Installation of Power Isolator</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Maintenance Services</p>', 'odg-Nestle1.JPG', 'odg-Nestle-LogoCopy.png', 'Clients, ODG, Manufacture, Nestle', '2017-11-06 02:08:44', '2017-11-06 06:26:26', 1),
(10, 'PT Agincourt Resources', 'PT Agincourt Resources has successfully managed Martabe Gold Mine in its quest to become a world class operation. Martabe Gold Mine is managed and operated by PT Agincourt Resources.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;Agincourt Resources&nbsp;is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation Electrical</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Lighting Tower Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Lighting Plant</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Electrical System Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Maintenance Services (Electrical and Genset)</p>', 'odg-Martabe_3Copy.JPG', 'odg-Agincourt-Logo_Primary-smallCopy.png', 'Martabe, Clients, ODG, Agincourt Resources', '2017-11-06 02:17:00', '2017-11-06 06:26:55', 2),
(11, 'PT Meares Soputan Mining', 'PT Meares Soputan Mining engages in gold mining. The company is based in Jakarta, Indonesia. PT Meares Soputan Mining is a subsidiary of Archipelago Resources Pty Limited.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;Meares Soputan Mining is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation of Electrical</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation of Instrumentation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Power Supply</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Power Supply Package (Elec Installation)</p>', 'odg-Tokatindung ProjectCopy.jpg', 'odg-msm_logoCopy.jpg', 'Clients, Mining, ODG, Meares Soputan Mining', '2017-11-06 06:25:06', '2017-11-06 06:44:26', 2),
(12, 'PT Darma Henwa Tbk', 'PT Darma Henwa Tbk (Company) was established as a domestic investment company (PMDN) bearing the name of PT Darma Henwa pursuant to the Law of the Republic of Indonesia, Deed No. 54, dated October 8, 1991. ', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;Darma Henwa Tbk is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation of Electrical</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply and Installation of Instrumentation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">-&nbsp;Camp Water Supply</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">-&nbsp;Installation of Lighting Tower</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Coal Terminal Upgrade</p>', 'odg-BengalonProjectCopy.JPG', 'odg-Darma_HenwaCopy.png', 'Bengalon, Clients, Darma Henwa, ODG', '2017-11-06 06:44:07', '2017-11-07 02:02:47', 2),
(13, 'British Petroleum', 'BP P.L.C. formerly British Petroleum, is a British multinational oil and gas company headquartered in London. It is one of the world\'s seven oil and gas "supermajors", whose performance in 2012 made it the world\'s sixth-largest oil and gas company.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;Darma Henwa Tbk is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Step 1 of M&amp;E Recticulation Works</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Step 2 of&nbsp;M&amp;E Recticulation Works</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Step 3 of&nbsp;M&amp;E Recticulation Works</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">-&nbsp;Step 3B of&nbsp;M&amp;E Recticulation Works</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Infra Services</p>', 'odg-Tangguh_2Copy.jpg', 'odg-BP_Helios_logoCopy.png', 'Clients, Mining, ODG, British Petroleum', '2017-11-07 02:02:26', '2017-11-13 06:27:20', 2),
(14, 'J Resources', 'The Company is listed on the Indonesia Stock Exchange (IDX) becoming, at that time, the first national “dedicated gold producer” to be traded – a proud moment. PT J Resources Nusantara (JRN), with Mr. Budiarto at the helm, then placed under J Resources Asia Pasifik Tbk in 2012.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to&nbsp;PT. J Resources is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Material Supply</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Instrumental Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Electrical Installation</p>', 'odg-Seruyung_Gold_Copy.jpg', 'odg-JResourcesCopy.jpg', 'Seruyung, Mining, Client, JResources', '2017-11-13 06:25:52', '2017-11-14 03:20:45', 2),
(15, 'Santa Fe Supraco', 'PT Supraco Indonesia is a company based in Jakarta. The company already has more than 33 years experience in providing services to the Oil and Gas, Geothermal, and Banking Industries in Indonesia.', '<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">Most of ODG services to Santa Fe is :</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply Fire Detection System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Installation of Fire Detection System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Supply &amp; Installation of Gas Detection System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Commisioning Fire/Gas System</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">- Monitoring CO2 System</p>', 'odg-Santa_fee.jpg', 'odg-santafe-v2.png', 'Clients, Mining, ODG, Santa Fe', '2017-11-14 02:28:00', '2017-11-14 04:01:17', 4),
(16, 'PT Wijaya Karya', 'WIKA was formed by the nationalization process of a Dutch company named, Naamloze Vennotschap Technische Handel Maatschappij en Bouwbedijf Vis en Co. or NV Vis en Co.', '<p>Most of ODG services to&nbsp;PT. Wijaya Karya&nbsp;is :</p>\n<p>-&nbsp;Supply Dust Suppression</p>\n<p>- Installation Dust Suppression</p>\n<p>- Supply Fire Fighting System Crushing</p>\n<p>- Installation Fire Fighting System Crushing</p>', 'odg-MelakCopy.jpg', 'odg-wika.jpg', 'Clients, Mining, ODG, Wijaya Karya', '2017-11-14 04:00:44', '2017-11-14 06:52:57', 2),
(17, 'PT Arutmin Indonesia', 'PT Arutmin Indonesia is an Indonesian leading coal mining company operated based on Perjanjian Karya Pengusahaan Pertambangan Batubara (PKP2B) with 59.261 hectare concession area.', '<p>Most of ODG services to&nbsp;PT. Wijaya Karya&nbsp;is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Instrumental Cabling Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-North&SouthCopy.jpg', 'odg-arutmin.jpg', 'Clients, Mining, ODG, Arutmin Indonesia', '2017-11-14 06:52:43', '2017-11-14 06:54:00', 2),
(18, 'PT Indominco Mandiri', 'Indominco Mandiri is a coal mining company located in Bontang City, East Kalimantan. Stood up and started operations in 1997, followed by the completion of the coal port conveyor in 1999.', '<p>Most of ODG services to&nbsp;PT.&nbsp;Indominco Mandiri is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Instrumental Cabling Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-Bontang_Copy.JPG', 'odg-indominco_mandiCopy.jpg', 'Clients, Mining, ODG, Indominco Mandiri', '2017-11-28 06:50:53', '2017-11-28 06:52:07', 2),
(19, 'Sumitomo Corporation', 'With its global network, Sumitomo Corporation engages in a multifaceted business activities by making the most of its Integrated Corporate Strength. Sumitomo Corporation is one of the largest worldwide Sogo shosha general trading companies, and is a diversified corporation. ', '<p>Most of ODG services to&nbsp;Sumitomo Corporation is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Instrumental Cabling Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-WayangWinduWestJavaCopy.JPG', 'odg-WayangWinduWestJavaCopyCopy.JPG', 'Clients, Mining, ODG, Sumitomo Corporation', '2017-11-29 07:45:54', '2017-11-30 03:21:48', 2),
(20, 'PT Newmont Nusa Tenggara', 'PT Newmont Nusa Tenggara is a subsidiary company of Newmont Mining Corporation that operates their Batu Hijau mine in Indonesia on the island of Sumbawa. In 2008 Newmont sold a 2% stake in P.T. Newmont to the local governments in Sumbawa.', '<p>Most of ODG services to&nbsp;PT Newmont Nusa Tenggara is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Instrumental Cabling Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-BatuHijauCopy.JPG', 'odg-newmontCopy.jpg', 'Clients, Mining, ODG, Newmont Nusa Tenggara', '2017-11-30 03:21:21', '2017-11-30 03:22:18', 2),
(21, 'PT. Triadi Lintas Persada', 'PT. Triadi Lintas Persada are a company engaged in medical equipment. We serves our customer since 2013 and has always been giving customer more and better product and service. To be The leading supplier of medical devices by providing good of product quality and services.', '<p>Most of ODG services to&nbsp;PT&nbsp;Triadi Lintas Persada is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-RS_Sanglah_BaliCopy.JPG', 'odg-Triadi.png', 'Commercial, Triadi, Hospital', '2017-11-30 06:33:00', '2017-11-30 06:33:57', 3),
(22, 'Boehringer Ingelheim', 'Boehringer Ingelheim is a global group of companies embracing many cultures and diverse societies. Boehringer Ingelheim is one of the pharmaceutical industry’s top 20 companies and to this day remains family-owned. In 2016, Boehringer Ingelheim achieved net sales of around 15.9 billion euros.', '<p>Most of ODG services to&nbsp;Boehringer Ingelheim is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-BoehringerCopy.JPG', 'odg-Boehringer_Ingelheim_LogoCopy.png', 'Manufacture, ODG, Boehringer Ingelheim, Clients', '2017-11-30 07:30:21', '2017-12-04 06:52:58', 1),
(23, 'Xigo', 'Xigo is a team of highly-experienced project managers based in Auckland, Wellington and Christchurch, New Zealand.', '<p>Most of ODG services to&nbsp;Xigo is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-TAC3Copy.jpg', 'odg-xigoCopy.png', 'Clients, Commercial, ODG, Xigo, PNG', '2017-12-04 06:51:54', '2017-12-04 06:52:34', 3),
(24, 'Anglo American', 'Anglo American is a multinational mining company based in Johannesburg, South Africa and London, United Kingdom. ', '<p>Most of ODG services to&nbsp;Anglo American&nbsp;is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-Star_Mountain_Copy.jpg', 'odg-anglo-american-logoCopy.png', 'Clients, Commercial, ODG, Anglo American, PNG', '2017-12-04 07:04:07', '2017-12-04 07:04:39', 3),
(25, 'Hotel Borobudur', 'Hotel Borobudur Jakarta is a five-star diamond hotel, owned and managed by Discovery Hotels and Resorts. Located right in the middle of the city, the hotel is only a short ride away from business districts, government offices, shopping malls and museums.', '<p>Most of ODG services to&nbsp;Borobudur Hotel&nbsp;is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>- Test &amp; Commisioning</p>', 'odg-BorobudurCopy.JPG', 'odg-borobudurCopy.jpeg', 'Clients, Commercial, ODG, Borobudur Hotel, Jakarta', '2017-12-05 01:34:19', '2017-12-05 01:34:46', 3),
(26, 'Unocal', 'Union Oil Company of California, Unocal is a company that was a major petroleum explorer and marketer in the late 19th century, through the 20th century, and into the early 21st century. It was headquartered in El Segundo, California, United States.', '<p>Most of ODG services to&nbsp;Unocal is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>-&nbsp;Air Conditioning Work</p>', 'odg-MahoniCopy.JPG', 'odg-UnocalCopy.png', 'Clients, Oil & Gas, Unocal, ODG', '2017-12-05 08:51:45', '2017-12-05 08:53:08', 4),
(27, 'PT. Tanjungenim Lestari', 'The PT. TanjungEnim Lestari Pulp and Paper (“TeL”) is one of the most exciting pulp millspulp and paper companies in Asia. The company is subsidiary of Marubeni Corporation – Japan.\n', '<p>Most of ODG services to&nbsp;PT. Tanjungenim Lestari is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Fire Protection Installation</p>\n<p>-&nbsp;Test / Commisioning</p>', 'odg-Musi_Pulp_AdmCopy.JPG', 'odg-tanjung_enim_lestari.png', 'Clients, Manufacturing, PT Tanjungenim Lestari', '2017-12-06 01:54:31', '2017-12-06 01:55:19', 1),
(28, 'PT Newmont Minahasa', 'PT Newmont Minahasa Raya provides one example of our efforts to improve economic and community welfare and create a lasting legacy well after our operations end.', '<p>Most of ODG services to&nbsp;PT.&nbsp;Newmont Minahasa&nbsp;is :</p>\n<p>-&nbsp;Electrical Installation</p>\n<p>- Instrumentation Installation</p>', 'odg-Minahasa_Gold.JPG', 'odg-newmont_minahasa.png', 'Clients, Oil & Gas, Newmont Minahasa', '2017-12-07 06:42:04', '2017-12-07 06:50:58', 4);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `project` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `shortDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `thumbnail`, `picture`, `project`, `createdAt`, `updatedAt`, `shortDescription`) VALUES
(1, 'Water Tank', '<p>In the project of phase 2, this is the first tank to keep and supply the water to take the next tank. Our work here to install the piping and cable instrument.</p>', 'odg-Donggi_2.jpg', 'odg-Donggi_2.jpg', 2, '2017-10-07 12:42:03', '2017-10-23 01:48:11', 'Water tank for supply the water.'),
(3, 'Condensate Tank', '<p>This is the second tank for condensate water from the first tank. We are supplying with fire piping protection and cable installation.</p>', 'odg-Donggi_3.JPG', 'odg-Donggi_3.JPG', 2, '2017-10-08 13:31:50', '2017-10-23 01:47:39', 'The second tank for condensate.'),
(4, 'Condensation Pipeline to Ship', '<p>After condensate in second tank, the result of condensation is ready to be distributed to ship.</p>', 'odg-Donggi_7.JPG', 'odg-Donggi_7.JPG', 2, '2017-10-23 01:51:44', '2017-10-23 01:51:44', 'The look of pipeline from project to ship.'),
(5, 'Wetar 1', '<p>Progress in Wetar.</p>', 'odg-Wetar_2.JPG', 'odg-Wetar_2.JPG', 3, '2017-10-24 04:07:05', '2017-10-24 04:07:05', 'Description in Wetar Project.'),
(6, 'Wetar 2', '<p>Continue of the project progress.</p>', 'odg-Wetar_4.JPG', 'odg-Wetar_4.JPG', 3, '2017-10-24 04:08:08', '2017-10-24 04:08:08', 'Description in Wetar PRoject'),
(7, 'Wetar 3', '<p>Continue again with the project.</p>', 'odg-Wetar_6.JPG', 'odg-Wetar_6.JPG', 3, '2017-10-24 04:10:14', '2017-10-24 04:10:14', 'Developing the next current job.'),
(8, 'Power Plant', '<p>Our progress in Power Plant.</p>', 'odg-Cikarang_Elec.jpg', 'odg-Cikarang_Elec.jpg', 8, '2017-10-24 04:13:24', '2017-10-24 04:13:24', 'The look of Power Plant in Cikarang.'),
(9, 'Power Plant 2', '<p>Different picture taken for the Power Plant.</p>', 'odg-Cikarang_Elec_Fire.jpg', 'odg-Cikarang_Elec_Fire.jpg', 8, '2017-10-24 04:15:54', '2017-10-24 04:15:54', 'The look of Power Plant (2).'),
(10, 'Power Plant 3', '<p>This piping is used to supply water in case some emergency.</p>', 'odg-Cikarang_Fire_Piping.jpg', 'odg-Cikarang_Fire_Piping.jpg', 8, '2017-10-24 04:17:59', '2017-10-24 04:17:59', 'Fire piping for protection.'),
(11, 'Chancery Bulding', '<p>The progress while Chancery building being built.</p>', 'odg-Embassy_1.JPG', 'odg-Embassy_1.JPG', 6, '2017-10-24 04:19:35', '2017-10-24 04:20:02', 'The main building in project.'),
(12, 'HOM & Residence Area', '<p>The building of HOM and Residence Area being built.</p>', 'odg-Embassy_3.JPG', 'odg-Embassy_3.JPG', 6, '2017-10-24 04:23:04', '2017-10-24 04:23:04', 'The 2nd & 3rd bulding in project.'),
(13, 'Martabe 1', '<p>The project progress as seen in the photo.</p>', 'odg-Martabe_3.JPG', 'odg-Martabe_3.JPG', 5, '2017-10-24 06:41:20', '2017-10-24 06:41:20', 'The project in Martabe.'),
(14, 'Martabe 2', '<p>The conveyor (?), is being built.</p>', 'odg-Martabe_2.JPG', 'odg-Martabe_2.JPG', 5, '2017-10-24 06:43:27', '2017-10-24 06:43:27', 'The continue of Martabe Project.'),
(15, 'Nestle Karawang 1', '<p>The photo\'s taken when built floor 9th and up.</p>', 'odg-Nestle_Floor_9.jpg', 'odg-Nestle_Floor_9.jpg', 7, '2017-10-26 02:39:45', '2017-10-26 02:39:45', 'The progress photo on site.'),
(16, 'Site Picture 01', '<p>Here\'s the look for our in-progress barrack.</p>', 'odg-Freeport_3.JPG', 'odg-Freeport_3.JPG', 9, '2017-10-31 06:30:12', '2017-10-31 06:30:12', 'The look of site project from above.');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `title`, `description`, `picture`, `createdAt`, `updatedAt`) VALUES
(1, 'Proven Track Record', '<p><strong>A Track record of providing technical solutions.</strong></p>\n<p>Our customers know us as an electrical, mechanical, and fire services contractor</p>\n<p>with a track record of delivering complex projects on time and often under challenging conditions.&nbsp;</p>', 'odg-Embassy_2_Copy.JPG', '2017-10-06 14:34:40', '2017-10-21 04:28:51'),
(2, 'Safety & Environment', '<p>ODG management is committed to the promotion and support of a culture where harm to our people</p>\n<p>and the environment through our activities is unacceptable. The company will attain ISO 18000 safety certification in 2018.</p>', 'odg-Santa_Fee_(1920x520).jpg', '2017-10-09 03:44:40', '2017-10-21 04:43:55'),
(3, 'Quality ', '<p>ODG is certified to ISO 9001:2015 and commits itself to the implementation of</p>\n<p>Total Quality Management (TQM) culture to drive continuous improvement.</p>', 'odg-Cikarang_Headers_1_Copy.jpg', '2017-10-09 03:45:33', '2017-10-21 04:44:09'),
(4, 'IT Platform', '<p>IT will definitely increase productivities and Accuracy. PT. ODG commits&nbsp;</p>\n<p>to support all aspect of the business with IT, both Hardware Infrastructure and Software.&nbsp;</p>', 'odg-odg-slider-2-slide-4.jpg', '2017-10-21 04:49:48', '2017-10-21 04:56:21'),
(5, 'Maintenance Support', '<p>We have to ensure that all projects we\'ve delivered should run in the best performance,</p>\n<p>Our support team has all the experience and skilled to support it.&nbsp;</p>', 'odg-odg-slider-2-slide-5.jpg', '2017-10-21 04:54:04', '2017-10-21 04:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `name`, `title`, `scope`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `createdAt`, `updatedAt`) VALUES
(1, 'Chris Evans', 'President Director', 'Indonesia & PNG', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 900', '<p style="text-align: left;"><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,&nbsp;</span></p>', 'odg-chris.jpg', 'odg-chris-thumb.jpg', NULL, '2017-10-17 04:40:33', '2017-10-19 01:53:22'),
(2, 'Cahyo Dwi Putranto', 'IT Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-cahyo.jpg', 'odg-cahyo-thumb.jpg', NULL, '2017-10-19 01:29:41', '2017-10-19 01:29:41'),
(3, 'Peter Zamparutti', 'Operational Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-peter.jpg', 'odg-peter.thumb.jpg', NULL, '2017-10-19 01:30:57', '2017-10-19 01:30:57'),
(4, 'Lyn Harahap', 'HR Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-lyn.jpg', 'odg-lyn-thumb.jpg', NULL, '2017-10-19 01:31:43', '2017-10-19 01:31:43'),
(5, 'Artys Kasuma', 'Fire Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-artys.jpg', 'odg-artys-thumb.jpg', NULL, '2017-10-19 01:32:19', '2017-10-19 01:32:19'),
(6, 'Iwan', 'Finance Director ', 'Indonesia & PNG', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-iwan.jpg', 'odg-iwan-thumb.jpg', NULL, '2017-10-19 01:33:03', '2017-10-19 01:33:03'),
(7, 'Sri Martuti', 'Purchasing Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-tutut.jpg', 'odg-tutut-thumb.jpg', NULL, '2017-10-19 01:33:44', '2017-10-19 01:33:44'),
(8, 'Sari Riska Aidi', 'Accountin Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-riska.jpg', 'odg-riska-thumb.jpg', NULL, '2017-10-19 01:34:30', '2017-10-19 01:34:30'),
(9, 'unknown', 'unknown', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-xxx.jpg', 'odg-xxx-thumb.jpg', NULL, '2017-10-19 01:36:05', '2017-10-19 01:36:05'),
(10, 'Tumpal', 'unkwon', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-tumpal.jpg', 'odg-tumpal-thumb.jpg', NULL, '2017-10-19 01:36:44', '2017-10-19 01:36:44'),
(11, 'Sudarsono Mahudie', 'Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-darsono.jpg', 'odg-darsono-thumb.jpg', NULL, '2017-10-19 01:37:33', '2017-10-19 01:37:33'),
(12, 'Heriyadi', 'Safety Manager', 'Indonesia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, rema</span></p>', 'odg-heriyadi.jpg', 'odg-heriyadi-thumb.jpg', NULL, '2017-10-19 01:38:04', '2017-10-19 01:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `createdAt`, `updatedAt`) VALUES
(1, 'Manufacturing', 'Manufacturing is an industrial branch that applies machines, equipment and labor and a process medium for converting raw materials into finished goods for sale.', '<p>PT. ODG Indonesia focused on the best electrical and fire protection installation&nbsp;in manufacturing factory by providing the proffesional manpower. With fully dedication employees, PT. ODG Indonesia will provide with fastest respons and fastest workmanship.</p>\n<p>So we can make sure that from our group and our manufacturing factory partner both will get the best results as we can.</p>', 'odg-Nestle1.JPG', 'odg-manufacturing.jpg', 'Manufacture, ODG', '2017-09-26 10:14:07', '2017-11-02 07:38:09'),
(2, 'Mining', 'Mining is the process of obtaining coal or other minerals from a mine. Copper, tin, nickel, bauxite, iron ore, gold, silver, and diamonds are just some examples of what is mined.', '<p>For the first completion mining project back in 1991, PT. ODG Indonesia is one of the most experienced companies in mining affairs. Providing service and construction, focused mainly on electrical, instrumental &amp; fire alarm protection.</p>\n<p>&nbsp;</p>\n<p>The Group\'s take an engineering-led approach, with experienced supervise and fast but meticulous workers. We want to bring satisfaction to a customers who use our services.</p>', 'odg-Seruyung_Gold_Copy.jpg', 'odg-mining.jpg', 'Mining, ODG', '2017-10-09 00:59:47', '2017-11-02 07:39:04'),
(3, 'Commercial', 'Commercial refer to the activities of business, industry, and trade. Commercial is the broader term, covering all the activities and relationships of industry and trade.', '<p>PT. ODG Indonesia always set the highest standard from each individual.</p>\n<p>With today\'s market and all of the possibilities, you need a company that&nbsp;while provides a service also to&nbsp;exceed&nbsp;all the client\'s objectives and benefits. As experienced electrical and fire protection company, PT. ODG Indonesia can offer assistance with proposals on design and build projects, for the electrical discipline through the whole project life cycle and provide electrical services to see the project from idea, from zero to fully completion.</p>\n<p>&nbsp;</p>', 'odg-Embassy_2_Copy.JPG', 'odg-commercial.jpg', 'Commercial, ODG', '2017-10-17 03:39:22', '2017-11-02 07:39:24'),
(4, 'Oil & Gas', 'Oil is a viscous liquid derived from petroleum, and its function is for use as a fuel or lubricant & gas is an airlike fluid substance which expands freely to fill any space available.', '<p>Oil and gas production has a long and relatively successful history in Indonesia, with the sector historically characterised by its relatively stable and well-understood regulatory framework. In many areas, including the development of the &ldquo;Production Sharing Contract&rdquo; model and the commercialisation of LNG, Indonesia has been an international pioneer.</p>\n<p>&nbsp;</p>\n<p>This is where we, as a group\'s provide with the most services in electrical and fire services as best as possible.&nbsp;Always strive to understand our customers businesses and help them achieve their goals, establishing the mutual respect and building the trust of our employees and customers.</p>', 'odg-Donggi_1Copy.jpg', 'odg-oilgas.jpg', 'Oil, Gas, Liquid, ODG', '2017-10-17 03:39:54', '2017-11-02 07:39:52'),
(5, 'Power', 'Power based on noun is an ability to do or act; capability of doing or accomplishing something.\nAnd based on verb is to supply with electricity or other means of power.', '<p>The mainly thing PT. ODG Indonesia do in this project not about supplying some power in generator. Rather that the group, like some previously ODG project in like example Electric Steam Power Plant, focused in pulling cable and instrument piping.</p>\n<p>&nbsp;</p>\n<p>PT. ODG Indonesia always ensure to get the perfect and trouble-free results.</p>', 'odg-Cikarang_Headers_1_Copy.jpg', 'odg-power.jpg', 'Power, ODG', '2017-10-17 03:40:31', '2017-11-02 07:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `Slug` varchar(100) DEFAULT NULL,
  `Title` varchar(1000) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Body` varchar(1000) DEFAULT NULL,
  `TagList` varchar(1000) DEFAULT NULL,
  `Update` date DEFAULT NULL,
  `Favorited` tinyint(1) DEFAULT NULL,
  `FavoritedCount` int(255) DEFAULT NULL,
  `User` varchar(100) DEFAULT NULL,
  `Photo` varchar(1000) NOT NULL,
  `Posted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL DEFAULT '2',
  `thumbnail` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `postType` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `shortDescription`, `description`, `picture`, `thumbnail`, `tags`, `postType`, `createdAt`, `updatedAt`) VALUES
(2, 'History', 'ODG can trace its origins back to O\'Donnel Griffin, an electrical contracting business with over 100 years of history operating in Australia. ', '<p><strong>ODG can trace its origins back to O\'Donnel Griffin, an electrical contracting business with over 100 years of history operating in Australia.&nbsp;</strong></p>\n<p>In the nineties, ODG was acquired by Wormald, which was then in turn acquired by Tyco Fire and Security. In 2011, the management bought the business from Tyco with the support of private equity firm The Abraaj Group. Later in 2016 the management took total ownership when they purchase the Abraaj Group Shares.</p>\n<p>Head Quarter in Jakarta, with regional offices in Balikpapan (Indonesia), Sangatta (Indonesia), Port Moresby (Papua New Guinea), Brisbane (Australia), and Singapore as well as a host of project location, ODG is one on Asia\'s largest electrical, fire and mechanical contractors, offering solutions to your needs through a complete range of services.</p>\n<p>ODG aims to build and maintain long-term relationship with our customers by providing world class solutions and after-sales service.</p>', 'odg-ODG_Reception1.jpg', 'odg-ODG_Reception1.jpg', 'History, ODG, ME, Fire', 'Profile', '2017-10-05 02:32:20', '2017-11-13 09:15:00'),
(4, 'Health, Safety & Environtment', 'PT ODG is committed to achieving an excellent standard of environmental\nperformance in all its activities. In particular, we will:\n• Integrated environmental management into all facets of our business;\n• Ensure that all employees and contractors are infor', '<p>PT ODG is committed to achieving an excellent standard of environmental<br />performance in all its activities. In particular, we will:<br />&bull; Integrated environmental management into all facets of our business;<br />&bull; Ensure that all employees and contractors are informed about this<br />policy and made aware of their environmental responsibilities in<br />relation to the company&rsquo;s activities;<br />&bull; Inform and consult with the community about the Company&rsquo;s<br />activities and projects;<br />&bull; Manage the environmental risk on site-specific basis to achieve<br />planned environmental outcomes;<br />&bull; Comply with all applicable environmental laws and regulations as<br />minimum standard;<br />&bull; Continually strives to improve overall environmental performance;<br />&bull; Identify opportunities for the efficient use of energy and water,<br />minimizing waste and reducing the Company&rsquo;s environmental footprint;<br />&bull; Contribute to conservation of biodiversity and integrated approaches to<br />land use planning;<br />&bull; Rehabilities sites or areas disturbed by company activities to comply<br />with the applicable environmental management Plant;<br />&bull; Report annual to shareholders and</p>', 'odg-Wayang Windu - West Java.JPG', 'odg-Wayang Windu - West Java.JPG', 'dad vwa f', 'News', '2017-09-26 08:48:10', '2017-10-05 06:59:49'),
(16, 'Certification', 'Certification of ODG from Bureau Veritas', '<p>ODG\'s Scope of Certification for :</p>\n<p>Design&nbsp;for fire and security system, Engineering, Inspection Audits, Project Management, Supply and/or installation for electrical, Instrumentation, Telecommunication, Fire Detection &amp; Protection, AC, Fibre Optics, Plumbing, Test and Comminisioning, Maintenance Services, Containerized Camps and Office Facilities (rental &amp; sales).</p>', 'odg-ODG_Certificate.jpg', 'odg-ODG_Certificate.jpg', 'Company Profile, ODG, Certificate', 'Profile', '2017-10-23 04:47:41', '2017-10-23 07:43:14'),
(17, 'HSE Policy', 'Health, Safety & Environment Policy of ODG Indonesia', '<p>PT ODG Indonesia management is committed to promoting and supporting a culture where harm to our people and the environment through our work activities is unacceptable. To meet this commitment, the company will provide healthy and safe working conditions for all employees, contractors and others associated with our business activities.</p>\n<p>Regarding the environment, we will operate in a manner that conseryes natural resources, prevents harm and manages waste responsibly. ODG Indonesia managers, supervisors, employees and contractors have a responsibility for implementing and supporting this policy by striving to achieve zero tolerance toward hazards, incidents, noncompliance and accidents.</p>', 'odg-HSE_Policy_2017.jpg', 'odg-HSE_Policy_2017.jpg', 'HSE Policy, Health, Safety, Environment, ODG', 'Profile', '2017-10-23 04:52:07', '2017-10-27 08:39:03'),
(18, 'Our Commitments', 'Our Commitments to Environmental, Communities, and Health & Safety.', '<p>Environmental :</p>\n<p>ODG is commited achieving an excellent standard of environtmental performance in all its business activities.</p>\n<p>&nbsp;</p>\n<p>Communities :</p>\n<p>ODG Placed high values of support and endorsement of its activities by the communities in which we operate. Odg will ensure that employees and contractors give effects to this policy as well as observing the laws and regulations of the community in which we operate.</p>\n<p>&nbsp;</p>\n<p>Health &amp; Safety :</p>\n<p>ODG values the safety, health and wellbeing of all of the people associated with our activities and recognizes that we will only achieve our vision of zero injuries.</p>', 'odg-0001.jpg', 'odg-0001.jpg', 'Environment, Safety, Communities, Health ', 'Profile', '2017-10-23 07:23:51', '2017-10-27 08:40:26'),
(19, 'Mission & Vision', 'ODG Mission & Vision to bring the best performances.', '<p><strong>Our Vision :</strong></p>\n<p>Our aim is to become well known in the Mining, Power, Manufacturing, and Commercial Construction markets and be considered a world class contractor by its customers. We wish to be a company that is respected for its values and which invest in the long-term development and success of its employees.</p>\n<p><strong>Our Mission :</strong></p>\n<p>We provide solutions to our customers\'s needs for fire, electrical and mechanical system. We are a multi-trade contractor and a single point for our customers.</p>\n<p>We deliver complex project on-time, meeting international and industry quality standards, often under challenging conditions.</p>\n<p>We commit to providing a safe environtment for our employees, where they can work together in a supportive, ethical community and be respected by one another and where their long-term development needs are met.</p>\n<p>We recognize that we are part of a community and that we must support the protection of the local environtment and ensure that we help the local communities wherever possible by providing employment and to contribute to their wellbeing wherever we can.</p>\n<p>The long term outcome of our collective day-to-day actions is to increase shareholder value.</p>\n<p>&nbsp;</p>', 'odg-Values_Goals.jpg', 'odg-Values_Goals.jpg', 'Mission, Vision, Values, ODG', 'Profile', '2017-10-23 07:53:09', '2017-10-27 08:42:25'),
(20, 'Quality Policy', 'Quality Policy of ODG Indonesia, our commitment and implementation.', '<p>Quality Policy :</p>\n<p>ODG is ISO 9001:2015, commits itself to the implementation of the highest attainable standards of quality and customers service across all areas of the company.</p>\n<p>To this end, the company is implementing a Total Quality Management culture to drive continuous improvement.</p>', 'odg-Quality_Policy.jpg', 'odg-Quality_Policy.jpg', 'Quality Policy, Commitment, ODG', 'Profile', '2017-10-23 08:03:24', '2017-10-27 08:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `client` int(11) DEFAULT NULL,
  `mapLatitude` decimal(10,8) DEFAULT NULL,
  `mapLongitude` decimal(10,6) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `service` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `shortDescription`, `description`, `thumbnail`, `picture`, `client`, `mapLatitude`, `mapLongitude`, `tags`, `createdAt`, `updatedAt`, `service`) VALUES
(2, 'Donggi-Senoro Project (DSLNG)', 'The DSLNG plant is located in Banggai Regency, in the Central Sulawesi Province of Indonesia, and is situated about 45 kilometers south-east of Luwuk, the main town of Banggai Regency. The plant site is located at the coast facing the Peling Strait, which provides a deep sea water route from Surabaya and Makassar to Luwuk and Manado. ', '<p>Here\'s ODG work detail in project site :</p>\n<p>2011 - Electrical &amp; Mechanical Installation for Donggi Camp</p>\n<p>2011 - Instrument Cabling Installation</p>\n<p>2016 - Installation for LNG Condensate Export Facility Phase 2</p>\n<p>2016 - Supply and Installation Fire (Alarm and Hydrant)</p>\n<p>2016 - Termination Service</p>\n<p>2016 - Cathodic Protection Service&nbsp;</p>\n<p>&nbsp;</p>', 'odg-Donggi_1.jpg', 'odg-Donggi_1Copy.jpg', 2, '-1.00000000', '123.000000', 'Oil & Gas, Donggi, Project, ODG', '2017-10-07 01:44:31', '2017-11-06 06:29:02', 3),
(3, 'Wetar Copper Mine Project', 'The Wetar Copper Project is located on the north central coast of Wetar Island and is part of the Maluku Barat Daya Regency (MBD), Maluku Province of the Republic of Indonesia. Wetar Island is a remote island which supports a total population of around 9,000 people.  It can be accessed by boat from a number of ports including Alor, Kisar and Atapupu and by LCT (landing craft).', '<p style="box-sizing: border-box; color: #333333; margin-top: 0px; margin-left: 0px; line-height: 15px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 13px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;">Here\'s ODG work detail in project site :</span></p>\n<p style="box-sizing: border-box; color: #333333; margin-top: 0px; margin-left: 0px; line-height: 15px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 13px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;">2009 - Crushing and Process Plant</span></p>\n<p style="box-sizing: border-box; color: #333333; margin-top: 0px; margin-left: 0px; line-height: 15px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 13px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;">2016 - Electrical and Instrumentation Installation &amp; Material Supply</span></p>\n<p style="box-sizing: border-box; color: #333333; margin-top: 0px; margin-left: 0px; line-height: 15px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 13px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;">2017 - Wetar Power Line Relocation</span></p>\n<p style="box-sizing: border-box; color: #333333; margin-top: 0px; margin-left: 0px; line-height: 15px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 13px;">&nbsp;</p>', 'odg-Wetar_1Copy.JPG', 'odg-Wetar_1opy.JPG', 6, '-8.00000000', '126.000000', 'Wetar, Copper, Project, ODG', '2017-10-14 13:45:57', '2017-11-06 02:03:19', 1),
(5, 'Martabe Project', 'The Martabe Project is located on the western side of Sumatra Island in the North Sumatra province in the sub-district of Batangtoru, Indonesia. Oxiana became the owner of the Martabe project through the acquisition of Agincourt Resources in early 2007. The final permits from the Government of Indonesia were received in April 2008.', '<p>Here\'s ODG work detail in project site (Start 2012 - End 2017) :</p>\n<p>2012 -&nbsp;Electrical (Supply &amp; Installation)</p>\n<p>2012 - Instrumental Cabling (Supply &amp; Installation)</p>\n<p>2017 - Start of Gold Mine Secondary (Electrical Installation)</p>\n<p>2017 - Gold Mine (Instrumental Supply &amp; Installation)</p>', 'odg-Martabe_1.JPG', 'odg-Martabe_3Copy.JPG', 10, '2.00000000', '99.000000', 'Project, Martabe, Gold, Mining, ODG', '2017-10-18 09:08:49', '2017-11-06 03:47:33', 1),
(6, 'Australian Embassy Project', 'The Department of Foreign Affairs and Trade (DFAT) seeks approval from the Parliamentary Standing Committee on Public Works (PWC) to proceed with the construction of a new, purpose-built embassy complex in Jakarta, Indonesia, on vacant land by the Australian Government to enable appropriate security provisions to be incorporated into proposed facilities.', '<p class="MsoNormal">Here\'s ODG work detail in project site :</p>\n<p class="MsoNormal">1993 - Electrical &amp; Mechanical Hydraulics Supply &amp; Installation</p>\n<p class="MsoNormal">2003 - Supply &amp; Installation of Sprinkler System</p>\n<p class="MsoNormal">2005 - Supply &amp; Installation of CCTV System</p>\n<p class="MsoNormal">2006 - Fire Sprinkler Maintenance and System Upgrading</p>\n<p class="MsoNormal">2016 - New Embassy Supply &amp; Installation Electrical Works, Fire &amp; PA System</p>\n<p class="MsoNormal">2017 - Maintenance Electrical &amp; Fire Detection</p>', 'odg-Embassy_2Copy.JPG', 'odg-Embassy_2_Copy.JPG', 3, '-6.28630740', '106.820211', 'Project, Jakarta, Australian Embassy, ODG', '2017-10-19 03:17:26', '2017-11-06 02:02:28', 2),
(7, 'Nestle Project', 'Nestle is the world\'s leading nutrition, health and wellness company. Their mission of "Good Food, Good Life" is to provide consumers with the best tasting, most nutritious choices in a wide range of food and beverage categories and eating occasions, from morning to night.', '<p class="MsoNormal">Here\'s ODG work detail in project site,&nbsp;that is completed in 2014 :</p>\n<p class="MsoNormal">- Supply and Installation Piping System</p>\n<p class="MsoNormal">- Supply and Installation of Pipe Racks</p>\n<p class="MsoNormal">- HVAC supply and install fans &amp; HCU</p>\n<p class="MsoNormal">- Supply and Install Fire Alarm System</p>\n<p class="MsoNormal">- Supply and Install Lighting System</p>\n<p class="MsoNormal">- Supply and Install Lightning, Earthing and Grounding System</p>\n<p class="MsoNormal">- Installation of Cable Tray &amp; Ladders</p>\n<p class="MsoNormal">- Termination</p>', 'odg-NestleCopy.JPG', 'odg-Nestle1.JPG', 9, '-6.35023300', '107.143012', 'Nestle, Project, Manufacture, ODG', '2017-10-19 04:17:01', '2017-11-06 02:12:19', 1),
(8, 'Cikarang Listrindo Project', 'Publicly listed independent power plant producer Cikarang Listrindo has issued bonds worth US$550 million through its subsidiary Listrindo Capital with a 10-year-tenure and 4.95 percent rate and listed on the Singapore Stock Exchange (SGX).', '<p><span style="color: rgba(0, 0, 0, 0.9); font-family: Acta-Book; font-size: 17px;">The company is currently building two 140-megawatt coal-powered plants in Babelan, Bekasi, West Java, which are expected to operate by the fourth quarter of 2016. The electricity will be supplied to five industrial zones and serve 2,200 corporate customers.</span></p>', 'odg-Cikarang_Headers_1Copy.jpg', 'odg-Cikarang_Headers_1_Copy.jpg', 5, '-6.00000000', '107.000000', 'Power, ODG, Project, Cikarang', '2017-10-19 09:17:17', '2017-11-06 02:02:47', 1),
(9, 'Freeport Project', 'The project is owned by one of the world\'s leading mining company, PT Freeport Indonesia. Their mission is to exploration, mining and processing ore containing copper, gold and silver in the highland areas of Mimika District, Papua Province, Indonesia.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1993 - LIP 30MVA Power Plant Electrical, Instrumentation, Mechanical, Fire&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Protection</p>\n<p>1994 - Cold Storage Facility HVAC &amp; Refrigation &amp; Administration Building</p>\n<p>1995 - MDF &amp; CATV Room Inergen Fire System, 115kV Transmission Line</p>\n<p>2008 - Fire Suppression Systems (Install, testing, &amp; Commissioning) &amp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Equipment Supply and Install for Hot Water System</p>\n<p>2009 - Maintenance Electrical System &amp; Appliances</p>\n<p>2010 - Freeport Ridge Camp</p>\n<p>2011 - Construction of 1500 Man Barrack</p>\n<p>2012 - Construction of 1400 Man Barrack\\</p>\n<p>2013 - Supply &amp; Install Mechanical &amp; Electrical RCTU Conversion</p>\n<p>2014 - Supply &amp; Install Mechanical &amp; Electrical&nbsp;152 SQ Acommodation at&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Prambanan</p>\n<p>2015 - Construction of Office Building 3 (Refurbishment), Building 4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Substation)</p>\n<p>2016 - Freeport Office Building 4 (OB4) WA-32</p>\n<p>2017 - Freeport HVAC For GBC Fixed Facilities</p>', 'odg-Freeport_2Copy.jpg', 'odg-Freeport_Copy.jpg', 4, '-4.00000000', '137.000000', 'Freeport, Barrack, ODG, Project', '2017-10-20 07:06:28', '2017-11-03 02:47:35', 1),
(10, 'Gosowong Project', 'Gosowong is owned and operated by PT Nusa Halmahera Minerals (PTNHM), an Indonesian company 75 per cent owned by Newcrest. It is located on Halmahera Island, in the North Maluku Province of the Republic of Indonesia, approximately 2,450 kilometres north east of the national capital, Jakarta. ', '<p>Here\'s ODG work detail in project site :</p>\n<p>2006 - HV Reticulation</p>\n<p>2009 - Supply &amp; Installation Fire Protection</p>\n<p>2010 - Supply &amp; Installation&nbsp;Electrical &amp; Instrumentation (K1 Ventilation Fans &amp; K2 Shaft)</p>\n<p>2012 - Supply 30 unit Accomodation Container</p>\n<p>2013 - Electrical Workshop, Supply &amp; Install Fire Hydrant, Sprinkler &amp; Water Pump</p>', 'odg-Gosowong_2(2).jpg', 'odg-Gosowong_2Copy.jpg', 7, '0.65602900', '127.028628', 'Gosowong, ODG, Project', '2017-10-31 07:30:11', '2017-11-02 01:31:19', 1),
(11, 'Muara Tuhup Project', 'Muara Tuhup Coal Mining, well positioned to benefit from the favorable industry outlook. Some 40 km of the road was built to connecting Bentuan and Muara Tuhup is also used by the local community. The other undeveloped metallurgical and thermal coal deposits are the Lampunut Coal, establish the Infrastructure.', '<p>Here\'s ODG work detail in project site :</p>\n<p class="MsoNormal"><span style="font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-ansi-language: IN; mso-fareast-language: IN;">Refurbishment/ maintenance work is very different in that all parts of the building already exist and there may be no compelling reason, as far as the specifier is concerned, to describe one particular type of work before another.&nbsp;Maintenance work commonly involves repair or replacement of doors, windows, fences, rainwater goods etc. Given that contractors pricing the work and operatives carrying it out will tend to deal with all items in a particular location before moving on to the next, this is also the pattern commonly used for a &lsquo;locational&rsquo; structure to a schedule of (refurbishment/ maintenance) work.</span></p>\n<p class="MsoNormal"><span lang="EN-GB" style="font-size: 10.5pt; line-height: 150%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-language: IN;">Actual headings will depend on how well defined is the use for each area of the building. A house or apartment refurbishment is likely to use headings such as &lsquo;porch&rsquo;, &lsquo;hall&rsquo;, &lsquo;lounge&rsquo; and &lsquo;kitchen&rsquo;, whilst an office building might be better served simply by &lsquo;room 1&rsquo;, &lsquo;room 2&rsquo; etc. In general each element within each room will be described and priced separately, making valuation by the contract administrator during the course of the work relatively straightforward.</span></p>', 'odg-Muara_TuhupCopCopy.JPG', 'odg-Muara_TuhupCopy.JPG', 8, '-0.61734540', '114.762921', 'Muara Tuhup, ODG, Project', '2017-11-03 02:29:00', '2017-11-06 06:20:15', 1),
(12, 'Toka Tindung Project', 'Leighton Asia has been awarded a contract to take on the role as the main contractor at the Toka Tindung Gold Mine in North Sulawasi. Toka Tindung Mine is located approximately 35km to the north east of Manado City in rolling foothills above the coast at elevation 200m above sea level.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2010 -&nbsp;Gold Mine Overhead Transmission Lines (11kV)</p>\n<p>2011 - Electrical &amp; Instrumentation Toka Tindung Project</p>\n<p>2015 - Permanent Power Supply Substation Building</p>\n<p>2015 - Power Supply Package-2 Installation of Electrical</p>', 'odg-Tokatindung ProjectCopyCopy.jpg', 'odg-Tokatindung ProjectCopy.jpg', 11, '1.58433790', '125.098715', 'Toka Tindung, Project, Mining, ODG', '2017-11-06 06:19:18', '2017-11-06 06:52:32', 1),
(13, 'Bengalon Project', 'The Bengalon Coal Mine is a coal mine located in East Kalimantan. The mine has coal reserves amounting to 871 million tonnes of coking coal, one of the largest coal reserves in Asia and the world.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2007 - New Camp Water Supply</p>\n<p>2007&nbsp;-&nbsp;AC Mining Heavy Equipment (Services)</p>\n<p>2007 - AC Mining Heavy Equipment (Maintenance)</p>\n<p>2008 -&nbsp;Lighting Tower Installation</p>\n<p>2012 - Upgrade Terminal Facility Upgrade</p>', 'odg-BengalonProjectCopyCopy.JPG', 'odg-BengalonProjectCopy.JPG', 12, '0.81772780', '117.582821', 'Project, Bengalon, ODG', '2017-11-06 06:50:27', '2017-11-07 02:18:22', 1),
(14, 'Tangguh Project', 'Tangguh LNG is a unitized development of six gas fields located in the Wiriagar, Berau and Muturi Production Sharing Contracts (PSCs) in Bintuni Bay, Papua Barat.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2004 -&nbsp;Temporary Camp Facility Work Construction (M/E) 1</p>\n<p>2005 - Temporary Camp Facility Work Construction (M/E) 2</p>\n<p>2006 - Temporary Camp Facility Work Construction (M/E) 3</p>\n<p>2006 - Infra Services for Tangguh LNG Project</p>\n<p>2007 - Temporary Camp Facility Work Construction (M/E) 3B</p>', 'odg-Tangguh_2CopyCopy.jpg', 'odg-Tangguh_2Copy.jpg', 13, '-2.45019030', '133.191897', 'Project, Tangguh, Papua, ODG', '2017-11-07 02:18:13', '2017-11-08 02:16:57', 4),
(15, 'Melawan Project', 'This project is consist of crushing station in Melawan with 2 crushing line of coal with average capacity of each line reaching 2,000 tons per hour, OLC of 9,2 km length with 4,000 tons per hour capacity that will transport coal after being crushed in crushing station, transfer tower to be transported to conveyor which then to conveyor CV-06.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2004 -&nbsp;Temporary Camp Facility Work Construction (M/E) 1</p>\n<p>2005 - Temporary Camp Facility Work Construction (M/E) 2</p>\n<p>2006 - Temporary Camp Facility Work Construction (M/E) 3</p>\n<p>2006 - Infra Services for Tangguh LNG Project</p>\n<p>2007 - Temporary Camp Facility Work Construction (M/E) 3B</p>', 'odg-Melawan_2CopyCopy.jpg', 'odg-Melawan_2Copy.jpg', 1, '0.35979770', '116.987042', 'KPC, Mining, Coal, Project, ODG', '2017-11-08 02:08:25', '2017-11-13 07:15:58', 2),
(16, 'Seruyung Gold Project', 'The Company (J Resources) is listed on the Indonesia Stock Exchange (IDX) becoming, at that time, the first national “dedicated gold producer” to be traded – a proud moment. Seruyung starts production in January to become our second built gold mine. Both Bakan and Seruyung exceed 10,000oz in their first quarter of production – a tremendous accomplishment.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2014 - Material Supply &amp; Installation</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">2014 - Instrumental Installation &amp; Supply</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">2014 - Electrical Installation &amp; Supply</p>', 'odg-Seruyung_Gold_CopyCopy.jpg', 'odg-Seruyung_Gold_Copy.jpg', 14, '3.66797590', '116.682373', 'Project, Seruyung, Gold, Mining, ODG', '2017-11-13 07:07:35', '2017-11-14 03:36:19', 1),
(17, 'Santa Fee Project', 'A group led by a unit of Santa Fe Energy Resources Inc., Houston, has tested an oil and gas discovery on its Jabung block in Central Sumatra, Indonesia. Santa Fe also sees oil and gas reserve potential in sands that were not tested.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1999&nbsp;- Supply, Install &amp; Commissioning Fire/ Gas Detection System</p>\n<p>1999 - Supply, Install General Alarm System</p>\n<p>1999 - Monitoring CO2</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">2000&nbsp;- Install and Commissioning 10 H2S Sensors in Galveston Key Living Quarters Entrances</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">&nbsp;</p>', 'odg-Santa_feeCopy.jpg', 'odg-Santa_fee.jpg', 15, '-0.34278770', '102.095784', 'Project, Sumatra, Santa Fe, Oil & Gas', '2017-11-14 03:32:25', '2017-11-14 03:39:48', 2),
(18, 'Melak Project', 'The development and operation of a greenfield coal mine located near Melak in East Kalimantan and owned by the Bayan Group. The Melak mine is divided into two different mine concessions, Teguh Sinar Abadi and Firman Ketaun Perkasa.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2011&nbsp;- Supplying Dust Suppression</p>\n<p>2011 - Dust Suppression Installation</p>\n<p>2011 - Fire Fighting System Crushing Plant Melak Project</p>\n<p class="MsoNormal" style="mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;">&nbsp;</p>', 'odg-MelakCopyCopy.jpg', 'odg-MelakCopy.jpg', 16, '-0.28191130', '115.765993', 'Project, Melak, Coal, Mining, ODG', '2017-11-14 04:09:08', '2017-11-14 04:10:40', 2),
(19, 'Pulau Laut Coal Project', 'Pulau Laut Coal Terminal is situated on the southern tip of the island of Pulau Laut in Indonesia\'s South Kalimantan Province. PT Indonesia Bulk Terminal (IBT) subsidiary Adaro Indonesia is the developer and operator of the terminal. It is sometimes referred to as the South Pulau Laut Coal Terminal. The North Pulau Laut Coal Terminal is located to the north.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1994&nbsp;- Electrical Installation</p>\n<p>1994 - Fire Protection Installation</p>', 'odg-North&South.jpg', 'odg-North&SouthCopy.jpg', 17, '-3.66666660', '116.157912', 'Project, Pulau Laut, Coal, Mining, ODG', '2017-11-14 07:00:17', '2017-11-14 07:01:54', 1),
(20, 'Bontang Project', 'The Bontang LNG plant, operated by PT Badak in East Kalimantan, Bontang, Indonesia, processes the gas from a huge reserve discovered in 1972 at Badak Field, East Kalimantan, as well as the Samberah, Nilam and Mutiara fields. The processing trains at Bontang were modernised in 2004 with automation and other equipment.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2001&nbsp;- Air Conditioning (Maintenance &amp; Repair)</p>\n<p>2006 - 3000 THP Upgrade</p>\n<p>2006 - Stockpile Lighting Upgrade</p>\n<p>2008 - New Power Facilities (HDPE Pipe Installation 10km)</p>', 'odg-BontangCopy.JPG', 'odg-Bontang_Copy.JPG', 18, '0.13675640', '117.435438', 'Project, Bontang, Electrical, Mining, ODG', '2017-11-29 01:57:11', '2017-11-29 02:00:31', 1),
(21, 'Tabang Coal Project', 'The Tabang Coal Upgrade Project involves the construction of a 1 MTPA pilot coal upgrading plant in Indonesia (the first in the world) that will upgrade the sub-bituminous coal produced by the Tabang Mine. ', '<p>Here\'s ODG work detail in project site :</p>\n<p>2009 - Coal Upgrade Project</p>\n<p>2009 - Instrument/Electrical/Mechanical (Installation)</p>', 'odg-Tabang_CopyCopy.JPG', 'odg-Tabang_Copy.JPG', 1, '0.91712970', '115.320388', 'Project, Tabang, Coal, Mining, ODG', '2017-11-29 03:34:53', '2017-11-29 03:36:31', 1),
(22, 'Wayang Windu Project', 'Located 40 km south of Bandung in West Java, Wayang Windu Power Generation is operated by Star Energy Geothermal (Wayang Windu) Limited a wholly owned subsidiary of Star Energy.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1999 -&nbsp;Power Plant Project Installation (Electrical)</p>\n<p>1999 -&nbsp;Power Plant Project Installation (Instrumentation)</p>\n<p>1999 - Air Conditioning Installation</p>', 'odg-WayangWinduWestJavaCopyCopy.JPG', 'odg-WayangWinduWestJavaCopy.JPG', 19, '-7.19730130', '107.625384', 'Project, West Java, Wayang Windu, ODG', '2017-11-29 07:48:29', '2017-11-29 07:50:21', 1),
(23, 'Sumbawa Batu Hijau Project', 'The Batu Hijau mine is an open pit copper-gold mine operated by Newmont Mining Corporation\'s subsidiary company PT Newmont Nusa Tenggara (PT Newmont). The mine is located 1,530 kilometres (950 mi) east of the Indonesian capital Jakarta on Sumbawa, in southern Taliwang Regency.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1998 -&nbsp;Power&nbsp;Distribution and Transmission Lines (150kV &amp; 33kV)</p>\n<p>1998 - Sprinkler System Installation</p>\n<p>1999 - Fibre Optic &amp; Fire Detection System Commissioning</p>\n<p>2000 - Mechanical &amp; Electrical Services</p>\n<p>2000 - Air Conditioning Maintenances</p>\n<p>2003 - Fire Sprinkler System Installation</p>\n<p>2004 - Minor Works</p>\n<p>2005 - Fire Detection Supresser and Fibre / Communication / Telephone System</p>\n<p>2006 - Electrical &amp; Instrumentation Works</p>', 'odg-BatuHijauCopyCopy.JPG', 'odg-BatuHijauCopy.JPG', 20, '-8.62594790', '118.012694', 'Project, Sumbawa, Mining, Newmont', '2017-11-30 03:29:01', '2017-11-30 06:51:28', 1),
(24, 'RS Sanglah Bali', 'Sanglah Hospital was built in 1956 and inaugurated on 30 December 1959 with a capacity of 150 beds. In 1962 cooperated with FK Unud as the Education Hospital. In 1978 he became a B type education hospital and as Referral Hospital for Bali, NTB, NTT, East Timor.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2004&nbsp;-&nbsp;Mechanical &amp; Electrical Services</p>', 'odg-RS_Sanglah_BalCopy.JPG', 'odg-RS_Sanglah_BaliCopy.JPG', 21, '-8.67550610', '115.209233', 'Project, Bali, Sanglah Hospital, ODG', '2017-11-30 06:49:36', '2017-11-30 06:51:19', 1),
(25, 'Boehringer Ingelheim', 'The pharmaceutical company Boehringer Ingelheim was founded in 1885 by Albert Boehringer (1861-1939) in Ingelheim am Rhein. From its beginnings in 1885 when it employed just 28 people in Nieder-Ingelheim, the company has since become a global enterprise.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2003 -&nbsp;Renovation and Upgrade Facility (Industrial Services)</p>', 'odg-BoehringerCopCopy.JPG', 'odg-BoehringerCopy.JPG', 22, '-6.61662540', '106.810008', 'Project, Commercial, Boehringer, Bogor, ODG', '2017-12-04 06:33:06', '2017-12-04 06:34:40', 1),
(26, 'Taurama Aquatic Centre', 'This project included demolition of the existing Taurama Leisure Centre to make way for a new, purpose built, Aquatic Centre and Indoor Sports Complex for the 2015 Pacific Games. With the flexibility to be an enduring community facility for both family focussed activities and international competitions.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2015 -&nbsp;Building Facility (Commercial Services)</p>', 'odg-TAC3Copy_Copy.jpg', 'odg-TAC3Copy.jpg', 23, '-9.47217230', '147.188543', 'Project, PNG, Taurama Aquatic Centre', '2017-12-04 06:55:03', '2017-12-05 10:40:57', 2),
(27, 'Star Mountain Project', 'The Star Mountains region has only been drilled twice in the last 50 years. The first drilling was conducted by Kennecott in the late 1960’s when the Mt Fubilan deposit was discovered, and subsequently mined by Ok Tedi Mining Limited.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2016 -&nbsp;Building Facility (Commercial Services)</p>', 'odg-Star_MountainCopy.jpg', 'odg-Star_Mountain_Copy.jpg', 24, '-4.99999990', '141.000000', 'Project, Commercial, Anglo American, Star Mountain, PNG', '2017-12-04 07:08:19', '2017-12-05 10:40:28', 1),
(28, 'Borobudur Hotel', 'Situated in the heart of Jakarta in around 10 hectares of tropical gardens, close to the city\'s business, shopping and government centers, the 5 star Hotel Borobudur Jakarta is truly an oasis of tranquility.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1998&nbsp;-&nbsp;Building Facility (Commercial Services)</p>', 'odg-BorobudurCopyCopy.JPG', 'odg-BorobudurCopy.JPG', 25, '-6.17212930', '106.835239', 'Project, Jakarta, Borobudur Hotel, ODG', '2017-12-05 01:51:16', '2017-12-05 10:40:20', 1),
(29, 'Mahoni Platform Project', 'Engineering, Procurement, Fabrication and Offshore Installation of Mahoni Platform in East Kalimantan by Unocal Geothermal of Indonesia.', '<p>Here\'s ODG work detail in project site :</p>\n<p>2001&nbsp;- Platform Facility (Electrical Services)</p>\n<p>2001&nbsp;- Platform Facility (Instrumentation Services)</p>\n<p>2001&nbsp;- Platform Facility (Air Conditioning Services)</p>', 'odg-MahoniCopyCopy.JPG', 'odg-MahoniCopy.JPG', 26, '-1.17460210', '116.771707', 'Project, Balikpapan, Mahoni Platform, Oil & Gas', '2017-12-05 09:12:24', '2017-12-05 10:40:10', 1),
(30, 'Musi Pulp Adm Building', 'All Electrical and Mechanical Installation & Services of Musi Pulp Adm Bulding in South Sumatra by ODG for PT. Tanjungenim Lestari of Indonesia.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1999 -&nbsp;Electrical Installation &amp; Services</p>\n<p>1999 - Mechanical (HVAC Services)</p>', 'odg-Musi_Pulp_AdmCopy2.JPG', 'odg-Musi_Pulp_AdmCopy.JPG', 27, '-3.41647120', '104.227757', 'Project, Prabumulih, Musi Paper Building, Manufacturing', '2017-12-06 02:09:28', '2017-12-06 02:33:03', 2),
(31, 'Musi Pulp & Paper Project', 'All Fire Protection Installation & Services of Musi Pulp & Paper Project in South Sumatra by ODG for PT. Tanjungenim Lestari of Indonesia.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1999 - Fire Protection &amp; Services</p>', 'odg-Musi_Pulp_PaperCopy2.JPG', 'odg-Musi_Pulp_PaperCopy.JPG', 27, '-3.45468270', '104.098234', 'Project, Prabumulih, Musi Pulp & Paper, Manufacturing', '2017-12-06 02:28:44', '2017-12-06 02:32:33', 1),
(32, 'Minahasa Gold Project', 'Kabupaten Minahasa regency location in North Sulawesi Regency is a regency in North Sulawesi Indonesia Gold Mining in the totok Minahasa gold mine.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1995 -&nbsp;Electrical Services &amp; Installation</p>\n<p>1995 - Instrumental Services &amp; Installation</p>', 'odg-Minahasa_Gold_Copy.JPG', 'odg-Minahasa_Gold.JPG', 28, '1.24117150', '124.813750', 'Project, Minahasa, Gold, Mining', '2017-12-07 06:49:13', '2017-12-07 06:53:59', 1),
(33, 'Sangatta Conveyor Land', 'KPC’s concession area is 90,938 hectares. Detailed design and construction started in January 1989 and the project was completed on schedule on 1 September 1991.', '<p>Here\'s ODG work detail in project site :</p>\n<p>1991 -&nbsp;Electrical Services &amp; Installation for Construction</p>\n<p>&nbsp;</p>', 'odg-Sangatta_Conveyor.JPG', 'odg-Sangatta_Conveyor_Land.JPG', 1, '0.54891570', '117.509575', 'Project, Sangatta, Conveyor, Coal', '2017-12-26 06:57:56', '2017-12-26 06:58:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `shortDescription` varchar(2500) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `serviceType` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `shortDescription`, `description`, `picture`, `thumbnail`, `serviceType`, `tags`, `createdAt`, `updatedAt`) VALUES
(1, 'Electrical', 'PT. ODG Indonesia\'s experience covers all aspect of electrical project from the selection of materials and technical requirements through to installation and pre-commisioning.', '<p>Our Services :</p>\n<p>- Electrical HV MV LV System</p>\n<p>- Instrument / Control / PLC</p>\n<p>- Containerized Pre-Calibration Laboratory</p>\n<p>- Fiber Optic</p>\n<p>- Lightning Protection</p>\n<p>- Cathodic Protection</p>\n<p>- Shutdowns</p>\n<p>- Overhead Line Services</p>\n<p>- Electrical Safety / Audit Services</p>\n<p>- Maintenance</p>\n<p>- Testing &amp; Commissioning Services</p>\n<p>- CAD Hire Services</p>\n<p>- Procurement / Logistic Services</p>\n<p>- Operation &amp; Maintenance Services</p>', 'odg-Cikarang_Elec_Fire.jpg', 'odg-Cikarang_Elec_Fire.jpg', 'Electrical', 'Service, Electrical, ODG', '2017-10-06 00:14:38', '2017-10-20 06:49:24'),
(2, 'Fire Protection & Detection', 'ODG\'s fire engineers manage all aspects of fire protection and detection on new projects including assessment, technical specification, installation and pre-commissioning. We also provide inspection, audits and maintenance for existing installations.', '<p>Our Services :</p>\n<p>- Safety Inspection &amp; Audits</p>\n<p>- Fire Protections &amp; Fire Detections System</p>\n<p>- Hydrants/Sprinklers</p>\n<p>- Special Hazard Protection</p>\n<p>- Clean Agent Fire Suppresion Halon Replacement</p>\n<p>- High &amp; Low Pressure CO<sub>2&nbsp;</sub>Suppression</p>\n<p>- Inergen</p>\n<p>- Foam Extinguisher</p>\n<p>- FM2000 Fire Suppression</p>\n<p>- Water Spray</p>\n<p>- Extinguisher Refills</p>\n<p>- Conventional Alarm</p>\n<p>- Addressable Alarm</p>\n<p>- Zone Infra Red Fame Detection/CCTV</p>\n<p>- Maintenance</p>\n<p>- Testing &amp; Commisioning Services</p>\n<p>- CAD Hire Services</p>\n<p>- Operation &amp; Maintenance Services</p>', 'odg-Coal_Sprinkler.jpg', 'odg-Coal_Sprinkler.jpg', 'Fire Service', 'Service, Fire, ODG', '2017-10-17 04:41:47', '2017-10-20 06:52:03'),
(3, 'Plumbing & HVAC', 'ODG\'s mechanical division provides expertise in installation, material supply and pre-commisioning to meet customers\'s specification and design.', '<p>Our Services :</p>\n<p>- Design</p>\n<p>- Piping</p>\n<p>- HDPE Piping / Welding</p>\n<p>- Air Conditioning</p>\n<p>- AC Ductwork</p>\n<p>- Pressurization</p>\n<p>- Plumbing</p>\n<p>- Portable Water</p>\n<p>- Waste Water</p>\n<p>- Sewerage Treatment</p>\n<p>- Scaffolding Service &amp; Hire</p>\n<p>- Maintenance</p>\n<p>- Process Skids</p>\n<p>- CAD / Hire Services</p>\n<p>- Procurement / Logistic Services</p>\n<p>- Operation &amp; Maintenance Services</p>', 'odg-Muara_Tawar.JPG', 'odg-Muara_Tawar.JPG', 'Mechanical', 'Mechanical, Service, ODG', '2017-10-17 23:43:21', '2017-10-25 02:29:13'),
(4, 'Containerized Camp Construction', 'ODG\'s team of construction specialist provide customized camp and office solutions; designed to be easily transported and constructed in remote locations as quickly as possible. ODG Indonesia has an inventory of the more common containerized building modules, which can be mobilized at short notice.\n', '<p>Containerized / Insultated Panel Units :</p>\n<p>- Single Accomodation</p>\n<p>- Four Persons Accommodation</p>\n<p>- Two Person Office</p>\n<p>- Stores</p>\n<p>- Laundry</p>\n<p>- Shower Block&nbsp;</p>\n<p>- Toilet Block</p>\n<p>- Accommodation Insulated Panel</p>\n<p>- Office Internal Insulated Panel</p>', 'odg-Accomm_Exec_1.jpg', 'odg-Accomm_Exec_1.jpg', 'Containerizad camp', 'Containerized Camp, Construction, Services, ODG', '2017-10-18 06:55:39', '2017-10-20 06:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT '2',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`, `name`, `email`, `picture`) VALUES
(1, 'erwin', '$2a$10$8/svZhpVNN2NgGQ9284Uxe4/SmIbAIJUPsFKVobfLZY3DNKhlzf.S', 4, '2017-08-11 14:46:03', '2017-10-04 14:22:27', 'Erwin Rizaldi', 'erizaldi@gmail.com', 'odg-1381920_10202282849254059_757918621_n.jpg'),
(2, 'dcputranto', '$2a$10$6OG1Pr7VLgFXl5P8hvpfTeI08Qcyg20Ogs28F0r/5oiKvZCrpy48K', 4, '2017-08-11 16:13:53', '2017-10-12 17:25:14', 'Cahyo Dwi Putranto', 'dvputranto@ptodg.com', 'sample2.jpg'),
(5, 'Pujian', '$2a$10$Lb.z/UM6DZ3vvCldU/G.ee6vcUM2/.L6/ocLSe7cpoJ.Eem31FQ/C', 2, '2017-09-25 02:06:58', '2017-09-25 02:06:58', 'Pujian Zaenudin', 'hujan@zaenudin.com', 'sample1.jpg'),
(11, 'racahyadi', '$2a$10$p/TVZEWCj6uyfJUwBsJAu.XPzajfSx/jmCyyrinCvA1H18AIsPIhu', 4, '2017-10-04 13:47:29', '2018-01-02 04:45:57', 'Reynaldi', 'racahyadi@ptodg.com', 'odg-IMG-20171025-WA0001.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `articles_title_unique` (`title`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `careers_title_unique` (`title`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `clients_name_unique` (`name`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `galleries_title_unique` (`title`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `headers_title_unique` (`title`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `management_name_unique` (`name`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `clients_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`title`),
  ADD UNIQUE KEY `services_name_unique` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
