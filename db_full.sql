-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:56 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam14`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_xtra`
--

CREATE TABLE IF NOT EXISTS `cat_xtra` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `color1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat_xtra`
--

INSERT INTO `cat_xtra` (`id`, `color1`, `color2`) VALUES
('5', '#1ABC9C', '#16A085'),
('6', '#3498DB', '#2980B9'),
('7', '#E74C3C', '#C0392B'),
('8', '#E67E22', '#D35400'),
('9', '#F1C40F', '#F39C12'),
('10', '#2ECC71', '#27AE60'),
('11', '#9B59B6', '#8E44AD'),
('12', '#8A4465', '#7D3858'),
('13', '#34495E', '#2C3E50'),
('14', '#95A5A6', '#7F8C8D');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:56 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam14`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_xtra`
--

CREATE TABLE IF NOT EXISTS `event_xtra` (
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `prize` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_xtra`
--

INSERT INTO `event_xtra` (`code`, `prize`, `min`, `max`) VALUES
('ACS', 20000, 3, 12),
('ADZ', 6500, 1, 3),
('AMP', 43000, 6, 12),
('ANT', 9000, 2, 3),
('CLD', 6000, 1, 1),
('CLG', 3750, 1, 4),
('CMS', 3750, 1, 1),
('CRN', 100000, 5, 50),
('CRT', 2900, 1, 1),
('CTB', 50000, 6, 50),
('DEB', 10000, 2, 2),
('DRM', 15000, 1, 50),
('DUM', 10000, 3, 3),
('DUP', 6000, 2, 2),
('FPG', 2900, 2, 2),
('JAM', 6400, 1, 1),
('JSK', 2900, 3, 3),
('KVP', 3250, 1, 1),
('LMS', 3750, 1, 1),
('MAP', 2000, 1, 1),
('MEH', 2000, 1, 1),
('MIM', 16000, 5, 9),
('MMC', 3750, 1, 1),
('MNA', 3750, 1, 1),
('MRG', 6000, 1, 1),
('MVS', 5000, 4, 8),
('OPA', 5500, 1, 1),
('OVR', 3750, 1, 1),
('PKR', 2500, 1, 1),
('PNT', 2900, 1, 1),
('PRF', 6000, 2, 2),
('PSK', 2900, 1, 1),
('RGL', 3750, 1, 5),
('SNP', 3250, 1, 1),
('SPB', 2000, 1, 1),
('STP', 16000, 5, 12),
('STS', 3750, 1, 1),
('SWA', 30000, 3, 20),
('TRS', 5000, 1, 4),
('TWT', 3250, 1, 1),
('VGC', 3750, 1, 1),
('WSO', 3750, 1, 1),
('WTG', 3250, 2, 2),
('FRS', 5000, 1, 1),
('QUI', 36000, 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2014 at 08:42 AM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam13`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_cats`
--

CREATE TABLE IF NOT EXISTS `event_cats` (
  `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `par_cat` tinyint(4) NOT NULL DEFAULT '-1',
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `event_cats`
--

INSERT INTO `event_cats` (`cat_id`, `par_cat`, `name`) VALUES
(1, -1, 'Events'),
(2, -1, 'Workshops'),
(3, -1, 'Proshows'),
(4, -1, 'Social Initiatives'),
(5, 1, 'General'),
(6, 1, 'Literary'),
(7, 1, 'Dance'),
(8, 1, 'Dramatics'),
(9, 1, 'Music'),
(10, 1, 'Fine Arts'),
(11, 1, 'Thematic'),
(12, 1, 'Online'),
(13, 1, 'Gaming'),
(14, 1, 'Sports');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:57 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam14`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `code` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` tinyint(4) NOT NULL,
  `shortdesc` text,
  `longdesc` mediumtext,
  `tags` text,
  `contacts` text,
  `prize` varchar(50) DEFAULT NULL,
  `prtpnt` varchar(20) NOT NULL DEFAULT '1',
  `validate` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`code`, `name`, `cat_id`, `shortdesc`, `longdesc`, `tags`, `contacts`, `prize`, `prtpnt`, `validate`) VALUES
('ACS', 'Acoustics', 9, 'Live western music performance with instruments ', '"Is it a kind of dream, <br/>\r\n\r\nFloating out on the tide, <br/>\r\n\r\nFollowing the river of death downstream? <br/>\r\n\r\nOh, is it a dream? <br/>\r\n\r\n\r\nThere&#39;s a fog along the horizon, <br/>\r\n\r\nA strange glow in the sky, <br/>\r\n\r\nBright eyes,<br/>\r\n\r\nBurning like fire<br/>\r\n\r\nHow can the light that burned so brightly <br/>\r\n\r\nSuddenly burn so pale? <br/>\r\n\r\nBright eyes." -Simon and Garfunkel<br/>\r\n<br/>\r\n\r\n\r\nThey say there is a certain magic spawned on an acoustic guitar when a person bares his soul to you through his music. Because when you get rid of the wires and the electronics, the universe truly sings along with you.||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum of 12 participants per team.</li>\r\n<li>Time limit: 15 minutes + 3 minutes set-up time.</li>\r\n<li>Participating teams should upload a video of any of their performance on YouTube and send its URL to acoustics@ragam.org.in on or before February 19th, along with the following details:\r\n<ul>\r\n<li>College/Band Name</li>\r\n<li>Name and Contact Info of the Team Leader</li>\r\n<li>List of Team members</li>\r\n</ul>\r\n</li>\r\n<li>Finalists will be screened based on the video sent. Registration will be confirmed only after receiving the confirmation letter.</li>\r\n<li>There is no On the Spot Registration.</li>\r\n<li>Teams are permitted to perform in the language of their choice.</li>\r\n<li>No electric instruments permitted apart from bass and electric guitar (clean).</li>\r\n<li>Keyboards are permitted only on piano patch.</li>\r\n<li>Points: (40, 30, 20)</li>\r\n</ul>||sec||Prize Money||ttl||First - INR 10000<br/>\r\nSecond - INR 6000<br/>\r\nThird - INR 4000', 'Music,bands,strings', 'Tom Sebastian||@||9037102360||@||acoustics||0||||@||||@||acoustics||0||||@||||@||acoustics||0||', '', '3||@||12', 0),
('ADZ', 'Adzap', 5, 'A stage to show your creativity and imagination', 'A hint of sarcasm, a dash of persuasion and truck loads of humour - Do you think you have what it takes to conquer the art of advertising? Compete and find out.||sec||Rules and Regulations||ttl||<ul>\r\n<li>2 teams per college</li>\r\n<li>Maximum number of 3 participants per team</li>\r\n<li>Written prelims will be held</li>\r\n<li>Adzap and Potpourri will be two subsequent rounds</li>\r\n<li>Dialogue and narration can be in English/Malayalam as per choice</li>\r\n<li>Weightage will be give to spontaneity, humour and creativity</li>\r\n<li>Points: (20, 15, 10)</li>\r\n\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 3500<br/>\r\nSecond Prize - INR 2000<br/>\r\nThird Prize - INR 1000', 'advertising,skit,onspot', 'Yadu Krishnan||@||9446487403||@||||0||Himaya Iyer||@||8891314359||@||||0||||@||||@||||0||', '', '1||@||3', 0),
('AMP', 'Amplified', 9, 'The nation&#39;s best bands are gonna battle it out to be crowned the king of metal.', 'On a lazy summer afternoon in the near future, the temperate excitement that hangs in the air will suddenly erupt into controlled madness. Dust will fly, bodies will bounce, and hands will rise in salutation to the faint outline of the loudest stage in Kerala. Choose to be on it and control the density of the mosh pits; choose to be on it and watch heads bang in agreement. An ode to those metalheads and punkheads and the legends of rock and roll... ||sec||Rules and Regulations||ttl||\r\n<ul>\r\n<li>Maximum of 12 participants per team.</li>\r\n<li>Time limit: 15 min + 3 min set up time.</li>\r\n<li>There is no On the Spot Registration.</li>\r\n<li>Teams are permitted to perform only in English.</li>\r\n<li>Participating teams should upload a video of any of their performance on YouTube and send its URL to amplified@ragam.org.in on or before February 19th, along with the following details:\r\n<ul>\r\n<li>College/Band Name</li>\r\n<li>Name and Contact Info of the Team Leader</li>\r\n<li>List of Team members</li>\r\n</ul>\r\n</li>\r\n<li>Finalists will be screened based on the video sent.</li>\r\n<li>Registration will be confirmed only after receiving the confirmation letter.</li>\r\n<li>Members of the team need not necessarily be from the same college(but in this case, the colleges in consideration wonâ€™t receive any points)</li>\r\n<li>A team manager is requested to be present near the sound engineer 5 minutes before the performance of the team so as to ensure proper sound levelling.</li>\r\n<li>Instruments other than drums (standard 5-piece drum kit) will not be provided.</li>\r\n<li>The same person cannot be part of two participating teams.</li>\r\n<li>All music should be played live on stage.</li>\r\n\r\n||sec||Prize Money||ttl||First Prize - INR 20000<br/>\r\nSecond Prize - INR 15000<br/>\r\nThird Prize - INR 8000', 'rock,music,guitar,bands,amplified,metal', 'Nitin K Shaji||@||8547738306||@||amplified||0||||@||||@||amplified||0||||@||||@||amplified||0||', 'First - INR 20000\r\nSecond - INR 15000\r\nThird - INR', '6||@||12', 0),
('ANT', 'Antakshari', 5, 'The unrivalled song marathon', 'Often find yourself humming the latest film songs? Hanging onto the last letters was never this fun! This is the ultimate showdown for all you music buffs out there. </b>||sec||Rules and Regulations||ttl||<ul>\r\n<li>Separate events for Malayalam and Hindi languages.</li>\r\n<li>Two teams per college.</li>\r\n<li>Two members per team for Hindi.</li>\r\n<li>Three members per team for Malayalam.</li>\r\n<li>At least one â€˜mukhdaâ€˜ has to be sung (Hindi).</li>\r\n<li>Only film songs are allowed.</li>\r\n<li>Elimination rounds will be held.</li>\r\n<li>The compereâ€™s decision will be final.</li>\r\n<li>Points: (20, 15, 10) for each</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 2000<br/>\r\nSecond Prize - INR 1500<br/>\r\nThird Prize - INR 1000', 'antakshari, songs,music', 'Athul John ||@||9400394776||@||antakshari||0||Yudhajit Datta||@||9539069898||@||antakshari||0||||@||||@||antakshari||0||', 'First - INR 2000 \r\n\r\nSecond - INR 1500 \r\n\r\nThird -', '2||@||3', 0),
('CLD', 'Classical Dance', 7, '', 'â€œDancing faces you towards Heaven, whichever direction you turn.â€œ\r\n-Terri Guillemets<br/>\r\n\r\nBring to life the age old stories and traditions through the magic of your performance and leave the audience spell bound with your beauty and grace.\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum of two participants per college.</li>\r\n<li>Time limit: 10 minutes per participant</li>\r\n<li>All forms of Indian classical dance are permitted</li>\r\n<li>Sound track should be in MP3 format and must be submitted at the registration desk one hour prior to the event</li>\r\n<li>The usage of breakable items, fire, water, inflammable items or items which may leave the dance floor untidy is strictly prohibited.</li>\r\n<li>Points: (15, 10, 6)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 3000<br/>\r\nSecond Prize - INR 2000<br/>\r\nThird Prize - INR 1000', 'eastern,dance,bhartanatyam,kuchipudi', 'Sikha Manoj||@||9048194331||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('CLG', 'Collage', 10, 'Bit of this and a bit of that', '<q>Life is nothing but a collage - a bit of dialogue here, a scratch of emotions there, a thread of memories to hang onto, a plethora of dreams to live upto. Weaving them in the most articulate way is the art of living.</q><br/>\r\n\r\n\r\n\r\n\r\n\r\nCome, armed with diverse fragments, juxtapose them in the most ingenious manner and surprise us with the power of your imagination.  ||sec||Prize Money||ttl||First Prize - INR 2000<br/>\r\nSecond Prize - INR 1000<br/>\r\nThird Prize - INR 750||sec||Rules and Regulations||ttl||<ul>\r\n<li>Open event</li>\r\n<li>Maximum 4 members per team</li>\r\n<li>There will be &#39;On the spot&#39; registration at the venue</li>\r\n<li>Pictures per se cannot be used</li>\r\n<li>Only chart paper will be provided</li>\r\n<li>Topic to be given at the start of the event</li>\r\n<li>Time limit: 90 minutes</li>\r\n<li>Points: (15, 10, 5)</li>\r\n<li></li>\r\n</ul>', '', 'Joseph George||@||9446637082||@||||0||Akanksha Thammadi ||@||8714933669||@||||0||||@||||@||||0||', '', '1||@||4', 0),
('CMS', 'Classical Music Solo', 9, 'Classical Music', 'Entice us with your powerful voice,<br/>\r\nTuned to the finest ragam,<br/>\r\nSet to the perfect thalam.<br/>\r\nSing your way to the top, to become the maestro of classical music.||sec||Rules And Regulations||ttl||<ul>\r\n<li>Two participants per college.</li>\r\n<li>Time limit: 15 minutes</li>\r\n<li>Participants are requested to sing a kirthana preferably of khana ragas (eg.bhairavi, thodi, kamboji etc.) instead of tukadas or light ragas (eg.ranjini, sindhubhairavi etc).</li>\r\n<li>Participants cannot sing more than one kirthana and singing of varnam,jathiswaram, swarajathi (except few cases like Kamakshi) shall not be entertained.</li>\r\n<li>Due credit will be given for singing of raga, neraval and swara for the kirthana.</li>\r\n<li>Decision of judges will be final.</li>\r\n<li>Participants are not supposed to bring accompaniments along with them other than shruthi box.</li>\r\n<li>No accompaniments(including shruthi box) will be provided.</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>\r\n\r\n||sec||Prize Money||ttl||First - INR 2000<br/>\r\nSecond - INR 1000<br/>\r\nThird - INR 750', 'classical music, sing, ragam, music', 'Shyam Krishna||@||8129769606||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('CRM', 'Criminal Minds', 11, 'It&#39;s elementary,my dear Watson!', 'There is no perfect crime. But do you have the wits and the eye to get to the roots of the mystery?||sec||Rules and Regulations||ttl||<ul>\r\n<li>Open and Individual event.</li>\r\n<li>Details for subsequents rounds will be provided later.</li>\r\n</ul>\r\n||sec||Prize Money||ttl||First Prize - INR 2000<br/>\r\n', 'criminal,crime,murder,sherlock', 'Athulya S Kumar||@||9497407804||@||||0||Jobin George||@||7736437859||@||||0||||@||||@||||0||', '', '||@||', 0),
('CRN', 'Choreonite', 7, 'dance till you drop', 'Choreonite is much more than just popping or power, it&#39;s about bringing something new to the floor. Itâ€™s not about where youâ€™re from or about what youâ€™ve got, it&#39;s about what you make of what you&#39;ve got!<br/>\r\nHit the stage with the coolest and funkiest moves and leave the audience in a trance, as teams from across the region vie for the championship.\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum of two teams per college</li>\r\n<li>Minimum of 5 members in a team</li>\r\n<li>Time limit : 10 minutes empty to empty</li>\r\n<li>Sound track must be submitted in MP3 format</li>\r\n<li>Breakable items, fire,water, inflammable items or items which may make the dance floor untidy must not be used</li>\r\n<li>Participating teams should upload a video of any of their performance on YouTube and send its URL to groupdance@ragam.org.in on or before March 7th, along with the following details:</li>\r\n</ul>\r\n<ol>\r\n<li>College Name (and Team Name, if any)</li>\r\n<li>Name and Contact Info of the Team Leader</li>\r\n<li>List of Team members</li>\r\n</ol>\r\n<ul>\r\n<li>Finalists will be screened based on the video sent.</li>\r\n<li>Registration will be confirmed only after receiving the confirmation letter</li>\r\n<li>At least one member of the team should report to the venue before 7:00 pm with their music CDs</li>\r\n</ul>||sec||Prize Money||ttl||Non-Themed<br/>\r\nFirst Prize - INR 30000<br/>\r\nSecond Prize - INR 20000<br/>\r\n<br/>\r\nThemed<br/>\r\nFirst Prize - INR 30000<br/>\r\nSecond Prize - INR 20000<br/>', 'ragam14, dance, choreonite, themed, non-themed, group, crew', 'Nandagopal R||@||9497321312||@||groupdance||0||||@||||@||groupdance||0||||@||||@||groupdance||0||', '', '5||@||50', 0),
('CRT', 'Cartooning', 10, '', 'â€œCartooning is about deconstruction: you gotta tear something down to make a joke.â€<br/>\r\n\r\n\r\nPut to use the greatest tool in your possession, your imagination. Challenge your creativity, invent stupefying gimmicks and create a world of coruscating characters!\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Open event</li>\r\n<li>On the spot registration allowed</li>\r\n<li>Only black pencils/pens/markers are allowed</li>\r\n<li>Chart paper (only) will be provided</li>\r\n<li>Time limit: 90 minutes</li>\r\n<li>Topic will be given on the spot</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>||sec|| Prize Money||ttl||\r\nFIRST - INR 1500 \r\n<br/>\r\nSECOND - INR 800 \r\n<br/>\r\nTHIRD - INR 600', '', 'Jobin George Mathew||@||7736437859||@||||0||Sikha Manoj ||@||9048194331||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('CTB', 'Couture Boulevard', 5, 'The fashion show of Ragam, South India&#39;s second largest cultural fest. ', 'Dress shabbily and they remember the dress, dress impeccably and they remember the woman.<br/>\r\n-Coco Chanel<br/>\r\n<br/>\r\nFashion is about the glitz , the glam , and the grandeur.<br/>\r\nIts about crafting to conceal and reveal at the same time. Its about depicting a personality in terms of visual interpretation.<br/>\r\n<br/>\r\n\r\nDrain us with the rain of beauty and allure! <br/>\r\n<br/>\r\n\r\n\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum of two teams per college.</li>\r\n<li>A minimum of 6 models per team.</li>\r\n<li>Time limit per team: 10 minutes empty to empty.</li>\r\n<li>Participating teams should upload a video of any of their performance on YouTube and send its URL to fashionshow@ragam.org.in on or before February 20th, along with the following details:\r\n<ul>\r\n<li>College Name (and Team Name, if any)</li>\r\n<li>Name and Contact Info of the Team Leader</li>\r\n<li>List of Team members</li>\r\n</ul>\r\n</li>\r\n<li>Finalists will be screened based on the video sent.</li>\r\n<li>Registration will be confirmed only after receiving the confirmation letter.</li>\r\n<li>Background music should be in MP3 format and is to be submitted at the PC desk 30 minutes prior to the event.</li>\r\n<li>Presenting banners, posters or other materials directly displaying the theme is prohibited.</li>\r\n<li>Only 3 Helper Passes will be given</li>\r\n<li>Only background narration is allowed and no explicit conveying is allowed</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 30000<br/>\r\nSecond Prize - INR 20000<br/>\r\n', 'fashion show, ragam, nit', 'Hafiz Mohammed||@||8089219732||@||fashionshow||0||||@||||@||fashionshow||0||||@||||@||fashionshow||0||', '', '6||@||', 0),
('DEB', 'Debate', 6, 'For the argumentative Indian', '<b>"Shed your manacles and involve in this crossfire,\r\n Be suave and steer clear of your opponent&#39;s mire"</b><br/>\r\n\r\nDebates at Ragam entail heated arguments and much more.\r\nAdroitly work your way through valid points to convince\r\nthem all. Let your tact prevail in this war of words. ||sec||Rules and Regulations||ttl||<ul>\r\n<li>Separate event for the three languages (English/Hindi/Malayalam).</li>\r\n</ul>\r\n<ul>\r\n<li>One team per college.</li>\r\n</ul>\r\n<ul>\r\n<li>Two participants per team.</li>\r\n</ul>\r\n<ul>\r\n<li>One member speaks for the topic and the other against it.</li>\r\n</ul>\r\n<ul>\r\n<li>Topic will be given at least 4 hours prior to the event.</li>\r\n</ul>\r\n<ul>\r\n<li>5 minutes per speaker followed by questioning round.</li>\r\n</ul>\r\n<ul>\r\n<li>There will be rounds with exciting twists.</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (15,10,6)</li>\r\n</ul>||sec||Prize Money||ttl||First - INR 6000 <br/>\r\nSecond - INR 4000', '', 'Steve Thomas||@||9544020000||@||||0||Hemanth KS||@||9633781054||@||||0||Yudhajit Datta||@||9539069898||@||||0||', '', '2||@||2', 0),
('DRM', 'Drama', 8, 'A platform to bring out the actor in you', 'Enter a world where your self exists no more,<br/> \r\nOnly vibrant personae heard and unheard of;<br/>\r\nHere, you will be transformed into another,<br/>\r\nWelcome, one and all, to the world of theatrics!||sec||Rules and Regulations||ttl||â€¢	A maximum of two teams per college<br/>\r\nâ€¢	Time limit: 35 minutes - empty to empty.<br/>\r\nâ€¢	One act play<br/>\r\nâ€¢	Medium of narration and dialogue: English or Malayalam.<br/>\r\nâ€¢	The teams will be provided with basic light and sound.<br/>\r\nâ€¢	The teams should bring their own props. Only chairs and basic furniture will be provided.<br/>\r\nâ€¢	There is no restriction on the number of members in a team.<br/>\r\nâ€¢	Vulgarity and use of abusive language is not encouraged.<br/>\r\nâ€¢	The shortlisted plays will be put up on the website. The teams will be informed via email.<br/>\r\nâ€¢	Points: (35, 25)<br/>\r\n||sec||Prize Money||ttl||First Prize - INR 12000<br/>\r\nSecond Prize - INR 8000<br/>\r\n', 'comedy,tragedy,characters,theater,dialogue,props', 'Athul John||@||9400394776||@||drama||0||||@||||@||drama||0||||@||||@||drama||0||', 'First - INR 10000\r\nSecond - INR 5000', '1||@||50', 0),
('DUM', 'Dumb Charades', 5, 'Silence is Golden', '"Thrive on your instincts quietly with loud actions,<br/>\r\n Master your expressions to blow your nemeses into fractions"<br/>\r\n<br/>\r\n\r\nLips zipped.<br/>\r\nFortunes tipped.<br/>\r\nIn this game, sans any words, let your actions speak for you!<br/>\r\nLet the act of cues begin! ||sec||Rules and Regulations||ttl||\r\n<ul>\r\n<li>Separate event for the two languages (English/Malayalam).</li>\r\n</ul>\r\n<ul>\r\n<li>Two teams per college</li>\r\n</ul>\r\n<ul>\r\n<li>3 members per team</li>\r\n</ul>\r\n<ul>\r\n<li>Elimination rounds will be held</li>\r\n</ul>\r\n<ul>\r\n<li>Coordinatorsâ€™ decisions shall be final</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (20, 15, 10)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 2500<br/>\r\nSecond Prize - INR 1500<br/>\r\nThird Prize - INR 1000', '', 'Jacob Henry||@||9048830624||@||||0||Ebenezer Jayakar||@||9497883763||@||||0||Upas Unnikrishnan||@||9495888823||@||||0||', '', '3||@||3', 0),
('DUP', 'Duplicate', 7, '', '', '', '||@||||@||||0||||@||||@||||0||||@||||@||||0||', '', '2||@||2', 0),
('FAR', 'Farhan Akthar', 3, NULL, NULL, NULL, NULL, NULL, '1', 0),
('FPG', 'Face Painting', 10, 'A unique opportunity to paint a unique canvas', '<b>Not satisfied with plain old paper for your art?<br/> Here&#39;s your chance to flaunt your skills with the brush,on a very unique canvas!<br/>\r\n Let your imagination run wild and morph a human face to impress us!</b>||sec||Rules and Regulations||ttl||â€¢	Open event.<br/>\r\nâ€¢	Registration allowed on the spot<br/>\r\nâ€¢	2 members per team<br/>\r\nâ€¢	Only paint will be provided to the teams (no brushes).<br/>\r\nâ€¢	Time limit: 90 minutes.<br/>\r\nâ€¢	Points: (10, 6, 4)<br/>\r\n||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 800<br/>\r\nThird Prize - INR 600', '', 'Krishnadas||@||9446030845||@||facepainting||0||||@||||@||facepainting||0||||@||||@||facepainting||0||', 'FIRST - INR 1000 \r\nSECOND - INR 600 \r\nTHIRD - INR ', '2||@||2', 0),
('FRS', 'Freestyle', 7, 'Express. Amaze. Dance.', '<b>â€œPeople dance because dance can change things. One move, can bring people together. One move, can make you believe like there&#39;s something more. One move, can set a whole generation free.â€</b> <br/>\r\nExpress your emotions with scripted, scintillating moves to leave the crowd wanting for more.\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum of 2 participants per college</li>\r\n</ul>\r\n<ul>\r\n<li>Time limit: 7 minutes per participant</li>\r\n</ul>\r\n<ul>\r\n<li>Any dance except classical is permitted</li>\r\n</ul>\r\n<ul>\r\n<li>Sound track must be in mp3 format and must be submitted prior to the event</li>\r\n</ul>\r\n<ul>\r\n<li>Fire,water,breakables,smokescreen etc that may damage or dirty the stage must not be used</li>\r\n</ul>||sec||Prize Money||ttl||First-INR 2500<br/>\r\nSecond-INR 1500<br/>\r\nThird-INR 1000', 'ragam14, dance, freestyle', 'Febin Issac||@||9946294734||@||||0||Gokul Nath||@||8129124110||@||||0||Parvathy Varma||@||9544429063||@||||0||', '', '1||@||1', 0),
('JAM', 'Jam', 6, 'A minute to win it.', '\r\nSixty seconds to joust with the etiquette of English. Bang the buzzer when your opponent makes a slip of tongue and get a chance to blabber something. Don&#39;t make the same blunders that got you the chance to blabber in the first place. Watch the clock as well because at the end of the countdown, there&#39;s that one final bang to bag the JAM. ||sec||Rules and Regulations||ttl||<ul>\r\n<li>General JAM rules to be followed</li>\r\n</ul>\r\n<ul>\r\n<li>Separate event for the two languages (English /Malayalam)</li>\r\n</ul>\r\n<ul>\r\n<li>JAM moderatorâ€™s decisions are final</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (15, 10, 6) each</li>\r\n</ul>||sec|| Prize Money||ttl||First - INR 2000\r\n<br/>\r\nSecond - INR 1200', 'literary, words, jam', 'Kiran C Nair||@||7736372074||@||||0||Athulya S Kumar||@||9497407804||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('JSK', 'Jam Sketching', 10, 'The creative race', 'To the masters of sketching, sixty seconds is all you&#39;ve got,<br/><br/>\r\n\r\n\r\nNo time to breathe, no time to spare.<br/><br/>\r\n\r\nRace till the end, to bring out the best of your creative flair!<br/>\r\n<br/>||sec||Rules and Regulations||ttl||â€¢Open event<br/><br/>\r\n\r\n\r\nâ€¢3 members per team<br/><br/>\r\n\r\n\r\nâ€¢Registration allowed on the spot<br/><br/>\r\n\r\n\r\nâ€¢Time given for sketching is one minute per member<br/><br/>\r\n\r\n\r\nâ€¢The sketch done by the 3rd team member and the original sketch will be compared for judging<br/><br/>\r\n\r\n\r\nâ€¢Points: (15, 10, 6)\r\n||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 800<br/>\r\nThird Prize - INR 600', 'sketching, fine arts, JAM', 'Neenu Ali||@||9995892642||@||||0||||@||||@||||0||||@||||@||||0||', '', '3||@||3', 0),
('KVP', 'Kavitha Parayanam', 6, '', 'They say that poetry comes alive only through recitation. So here&#39;s your chance to give life to the rhythmic creation of beauty in words. With just a single verse arousing innumerable emotions, make the audience swoon with a ballad, ode or an epic.||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 1000<br/>\r\nThird Prize - INR 750||sec||Rules and Regulations||ttl||<ul>\r\n<li>Maximum 3 participants per college</li>\r\n<li>Time limit : Maximum 10 minutes</li>\r\n<li>Self written poems are also allowed, however extra points won&#39;t be awarded for the same</li>\r\n<li>Judge&#39;s decision will be final</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>', 'Poems, poets, verses, ballads, odes', 'Rinu Rose||@||9037481398||@||kavithaparayanam||0||||@||||@||kavithaparayanam||0||||@||||@||kavithaparayanam||0||', 'First-INR 1500\r\nSecond-INR 1000\r\nThird-INR 750', '1||@||1', 0),
('LMS', 'Light Music Solo', 9, '', '\r\nCan you make the hearts go light,\r\n<br/>\r\nWith a music intense, sweet and bright?\r\n<br/>\r\nDon&#39;t you fear to stand up solo,\r\n<br/>\r\nFor your voice is what everyone will follow ! ||sec||Rules and Regulations||ttl||\r\n<li>One participant per college in each category (male and female)</li>\r\n<li>Time limit: 5 minutes per participant.</li>\r\n<li>The judging will be separate for male and female categories</li>\r\n<li>Film songs are not allowed.</li>\r\n<li>One (only) Instrumental accompaniment is permitted.</li>\r\n<li>Keyboard (piano patch only)/Electric Guitar may be provided if required.</li>\r\n<li>Points: (10, 6, 4)</li>\r\n||sec||Prize Money||ttl||First Prize - INR 2000<br/>\r\nSecond Prize - INR 1000<br/>\r\nThird Prize - INR 750', '', 'Sonal Maheswari||@||7736199139||@||||0||Jeena Sajimon||@||9544141236||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('MAP', 'Mappila Paattu', 9, 'A Muslim Folklore Competition', '<b>"Mappila paattu captures in them the beauty of fantasy apart from a reflection of ardent religious faith" </b>\r\n\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Duration (Max): 5 minutes.</li>\r\n<li>Individual event.</li>\r\n<li>General types of permitted songs are Kess Pattu, Kissa Pattu and Kathu Pattu.</li>\r\n<li>The decision of the judges will be final and binding.</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 1000<br/>\r\nSecond Prize - INR 600<br/>\r\nThird Prize - INR 400', 'songs folklore singing music', 'Jeena Sajimon||@||9544141236||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('MEH', 'Mehendi', 10, 'Festive adornment of hands', 'Creativity? Artistic streak? Or simply a taste for what&#39;s beautiful?<br/><br/>\r\n\r\nIf you think you have what it takes to festively adorn the hands of a woman, here&#39;s the opportunity to prove yourself!<br/>\r\n\r\n<br/>\r\n||sec||Rules and Regulations||ttl||â€¢Open event<br/><br/>\r\n\r\n\r\nâ€¢On the spot registration allowed<br/><br/>\r\n\r\n\r\nâ€¢Mehendi will be provided<br/><br/>\r\n\r\n\r\nâ€¢Participants may bring their own design<br/><br/>\r\n\r\n\r\nâ€¢Time limit: 60 minutes<br/><br/>\r\n\r\n\r\nâ€¢Points: (10, 6, 4)\r\n\r\n\r\n||sec||Prize Money||ttl||First Prize - INR 1000<br/>\r\nSecond Prize - INR 600<br/>\r\nThird Prize - INR 400', 'mehendi, mehndi, red hue,henna', 'Jacob Henry||@||9048830624||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('MIM', 'Mime', 8, '', '\r\nThe world being divided by 6900 languages, this is the art which knows no barriers. The art which speaks its mind with everything but the tongue. Are you ready to be the actor who brings to stage, the plethora of expressions to state his thought?||sec||Rules And Regulation||ttl||<ul>\r\n<li>One team per college</li>\r\n<li>Minimum 5 and maximum 9 members in a team (excluding those for background music)</li>\r\n<li>Time limit: 12 minutes empty to empty</li>\r\n<li>General rules of mime will be followed</li>\r\n<li>Instrumental accompanied is permitted</li>\r\n<li>Recordings are also allowed (to be submitted in mp3 or Audio format)</li>\r\n<li>Weightage will be given to themes and costumes</li>\r\n<li>Points (25, 15,10)</li>\r\n</ul>||sec||Prize Money||ttl||\r\nFirst - INR 10000\r\n<br/>\r\nSecond - INR 6000', '', 'Hemanth KS||@||9633781054||@||||0||Kevin Jones||@||9593109340||@||||0||||@||||@||||0||', '', '5||@||9', 0),
('MMC', 'Mimicry', 8, NULL, NULL, NULL, NULL, NULL, '1', 0),
('MNA', 'Mono Act', 8, '', 'â€œActing is to do with expressing your own personality and discovering the character you are playing through your own experience.â€\r\n-Ian Mckellen<br/>\r\n\r\nItâ€™s not just an act but an art of transforming yourself into varied characters.\r\nAn actor must seek out more of life than life puts at his feet.\r\n-James dean\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Two participants per college</li>\r\n<li>Vulgarity and obscenity shall be penalized</li>\r\n<li>Time limit: 6 minutes per participant</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 2000<br/>\r\nSecond Prize - INR 1000<br/>\r\nThird Prize - INR 750', '', 'Rinu Rose||@||9037481398||@||||0||Amal Raj||@||9495925780||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('MRG', 'Mr and Ms Ragam', 5, 'But you shall shine more bright in these contents, than unswept stone besmear&#39;d with sluttish time', 'Itâ€™s your attitude that determines your altitude at Ragam. Turn on your swag and show off your dynamic yet suave personality, to prove that you have what it takes to stand out among the ocean of people present to be crowned Mr or Ms Ragam.||sec||Rules and Regulations||ttl||<ul>\r\n<li>No limit in the number of participants per college.</li>\r\n<li>3 boys & 3 girls get on stage for the final showdown.</li>\r\n<li>The fine line between humour and vulgarity shall be respected.</li>\r\n<li>Judges&#39; decision is final & binding.</li>\r\n</ul>\r\n\r\n||sec||Prize Money||ttl||First Prize - INR 3000 each', 'ragam14, personality, mr and ms ragam, individual', 'Steve Thomas||@||9544020000||@||||0||Yadu Krishnan||@||9446487403||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('MVS', 'Movie Spoof', 8, '', 'Mix and match your favorite movies and create spoofs that are way more hilarious than the original versions.||sec||Rules and Regulations||ttl||<ul>\r\n<li>One team per college</li>\r\n</ul>\r\n<ul>\r\n<li>Maximum of 8 members in a team</li>\r\n</ul>\r\n<ul>\r\n<li>Props are allowed</li>\r\n</ul>\r\n<ul>\r\n<li>English/Hindi/Malayalam may be used as a medium of narration</li>\r\n</ul>\r\n<ul>\r\n<li>Back stage narration (live/recorded) is allowed</li>\r\n</ul>\r\n<ul>\r\n<li>Background music is permitted</li>\r\n</ul>\r\n<ul>\r\n<li>No microphones on stage</li>\r\n</ul>\r\n<ul>\r\n<li>Time limit: 8 minutes empty to empty</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (20, 15, 10)</li>\r\n</ul>||sec||Prize Money||ttl||First - INR 3000\r\n<br/>\r\nSecond - INR 2000 ', '', 'Jacob Henry||@||9048830624||@||||0||Vishnu Raj||@||8943710895||@||||0||||@||||@||||0||', '', '4||@||8', 0),
('OPA', 'Oppana', 7, 'The art form which celebrates the boundless grace of the bride and her maidens ', 'The muslim history of Kerala is made ever more vibrant by their wedding festivities where the bride is enthralled by maidens singing and moving gloriously around her.<br/>\r\nRe-live the beauty of this art form by presenting a tribute to the grace of Oppana this Ragam.<br/>\r\n<br/>\r\n<br/>\r\n||sec||Rules and Regulations||ttl||\r\n\r\n<ul>\r\n<li>Duration (Max) : 15 minutes</li>\r\n<li>Participant shall bring all required costumes.</li>\r\n<li>Participant shall hand over the recorded song for the Dance on a pen drive or a CD to the Event Coordinator at least 30 minutes in advance.</li>\r\n<li>Group of minimum 5 and maximum 12 members.</li>\r\n<li>The team shall consist of 1 manavatti, 1 main singer, 2 chorus singers and a maximum of 8 dancers for girls teams.</li>\r\n<li>The team shall consist of 1 manavaalan and a maximum of 10 dancers of which one should be the main singer, for boys teams.</li>\r\n<li>Members of the team need not necessarily be from the same college (but in this case, the colleges in consideration wonâ€™t receive any points).</li>\r\n<li>No stage setting permitted.</li>\r\n<li>Songs should not be album songs.</li>\r\n<li>Points: (25, 15, 10)</li>||sec||Prize Money||ttl||First - INR 3500\r\n<br/>\r\nSecond - INR 2000', 'oppana, bride, muslim,dance,ragam', 'Abdul Wasih M||@||8547562834||@||||0||Nadha Gafoor||@||8086123307||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('OVR', 'Overacting ', 8, 'Platform for your overacting skills', 'Is over-the-top acting your forte? Regale the audience with your histrionics and risible actions, as you ham your way through the extremes of every emotion. This is your chance to let go of all inhibition, take your place on stage and show us all you&#39;ve got!||sec||Rules and Regulations||ttl||<ul>\r\n<li>Two participants per college</li>\r\n<li>Vulgarity and obscenities shall be penalized</li>\r\n<li>Time limit: 6 minutes per participant</li>\r\n<li>Points: (20,15,8)\r\n</ul>||sec||Prize Money||ttl||First - INR 2000<br/>\r\nSecond - INR 1000<br/>\r\nThird - INR 750\r\n\r\n', 'overacting, dramatics, acting, theatricals', 'Hafiz Muhammed||@||8089219732||@||overacting||0||Ganga Ramachandran||@||9037645776||@||overacting||0||||@||||@||overacting||0||', '', '1||@||1', 0),
('PKR', 'Poker', 11, 'The Gamble Battle', 'Come be a part of this addiction,<br/>\r\nRival with your sharpest wits and conviction.<br/>\r\nThis Ragam,<br/>\r\n<q><i>May the odds be ever in your favour</i></q>\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>General Texas Hold&#39;em rules apply.</li>\r\n<li>This event will be conducted as a tournament and only virtual currency shall be involved in betting.</li>\r\n<li>The winner of this tournament will get a fixed cash prize and that will be the only monetary benefit obtained from the tournament.</li>\r\n<li>The bank shall give every participant a pre-determined amount of chips(virtual currency) at the start of the game.</li>\r\n<li>The decision of the organizers shall be final and binding.</li>\r\n</ul>||sec||Prize Money||ttl||Details will be provided at the venue.||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 1000<br/>\r\n', 'poker, gamble, addiction, odds, wits', 'Gokul Nath ||@||8129124110||@||||0||Nitin K Shaji ||@||8547738306||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('PNT', 'Painting', 10, '', 'Painting has always been the best transcription of the most intimate impression of nature,the finest imitation of human emotion and a superlative metaphor for words unspoken  ||sec||Rules and Regulations||ttl||<ul>\r\n<li>Theme will be announced on the spot</li>\r\n<li>Two participants per college</li>\r\n<li>Time limit: 90 minutes</li>\r\n<li>Chart paper will be provided</li>\r\n<li>Sketch pens or markers cannot be used</li>\r\n<li>No geometrical instruments can be used</li>\r\n<li>Points: (10, 6, 4)</li>\r\n<li></li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 800<br/>\r\nThird Prize - INR 600', '', 'Krishnadas||@||9446030845||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('PRF', 'Pair-fect', 7, '', 'â€œ<b>Love is a lot like dancing; you just surrender to the music</b>.â€<br/>\r\n\r\n- Pierce Brosnan<br/>\r\n\r\nCouple dancing is all about wordless communication between the two eternal souls. Itâ€™s a love affair between you, your partner and music.\r\n||sec||Prize Money||ttl||First Prize - INR 3000<br/>\r\nSecond Prize - INR 2000<br/>\r\nThird Prize - INR 1000||sec||Rules and Regulations||ttl||<ul>\r\n<li>Two teams per college.</li>\r\n<li>2 members per team ( 1Male+1Female).</li>\r\n<li>Any style of dance is permitted.</li>\r\n<li>Points awarded based on style, expression, technique and on-stage chemistry.</li>\r\n<li>Sound track should be in MP3 format and must be submitted at the registration desk an hour prior to the event.</li>\r\n<li>Breakable items, fire, water, inflammable items or items which may leave the dance floor untidy must not be used.</li>\r\n<li>Time limit: 7 minutes per team.</li>\r\n<li>Points: (15,10,6)</li>\r\n</ul>', 'Dance couple pair ', 'Nandagopal R||@||9497321312||@||||0||Sikha Manoj||@||9048194331||@||||0||||@||||@||||0||', '', '2||@||2', 0),
('PSK', 'Pencil Sketching', 10, 'The Artist&#39;s Delight', 'Let your pencil glide over paper,<br/>\r\nCreating a masterpiece that catches every eye, <br/>\r\nBringing life to your fantasies.||sec||Rules And Regulations||ttl||<ul>\r\n<li>On the spot event</li>\r\n<li>Registration allowed on the spot</li>\r\n<li>No geometrical instruments to be used</li>\r\n<li>Only chart paper will be provided</li>\r\n<li>Time limit: 45 minutes</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>\r\n||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 800<br/>\r\nThird Prize - INR 600', 'pencil sketching, drawing, sketching, art', 'Neenu Ali||@||9995892642||@||||0||Athulya S Kumar||@||9497407804||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('QUI', 'Quiz', 5, 'The ultimate quizzing arena', 'NIT Calicut has always produced great quizzers as well as great quiz masters for generations. At this Ragam come and battle it out with top minds of the country in 2 college quizzes and 2 open quizzes at Crossroads.<br/>\r\n<br/>\r\n\r\n\r\nOPEN QUIZ\r\n\r\nCOMING SOON||sec||College Quizzes||ttl||Get your brains in high gear, as it is once again time for the battle to lift the ultimate quizzing trophy. This Ragam, at the <b>College MELA quiz</b>, pit your wits in the arena of <b>Music, entertainment, Literature and Arts</b> with our own quiz master, Leo Francis, a reputed quizzer in South India, and walk away with glory.<br/>\r\n<br/>\r\n<br/>\r\nGear up to witness the best brains of the country charge at the questions with their trenchant wits. This Ragam gives you a chance to put your grey cells to work in a <b>College General quiz</b> hosted by Praveen VR, a renowned quizmaster of the Karnataka Quiz Association.  ||sec||Rules and Regulations||ttl||<ul>\r\n<li>Separate registration is available for participants who would like to participate only for quizzes.</li>\r\n<li>The registration fee for each quiz is Rs. 50 per person.</li>\r\n<li>Maximum of 3 participants per team for Open quizzes and 2 participants per team for College quizzes.</li>\r\n<li>Those who have a valid Ragam 14 ID need not separately register for the quizzes.</li>\r\n<li>For the college quizzes valid college IDs should be shown at the time of participation.</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 5000<br/>\r\nSecond Prize - INR 3000<br/>\r\nThird Prize - INR 1000', 'quiz, mela, college quiz, open quiz', 'Aditya Pulachery||@||9037280321||@||quiz||0||Tom Sebastian||@||9037102360||@||quiz||0||||@||||@||quiz||0||', '', '1||@||2', 0),
('RGL', 'Rangoli', 10, '', 'Flood the floor with every shade of creativity and dazzle us with vibrant hues.||sec||Rules and Regulations||ttl||<ul>\r\n<li>One team per college</li>\r\n<li>Maximum of 5 members per team</li>\r\n<li>Participants should bring their own design</li>\r\n<li>Pattern should be theme based</li>\r\n<li>Colour powders will not be provided</li>\r\n<li>Stencils are not allowed</li>\r\n<li>Time limit: 90 minutes.</li>\r\n<li>Points: (15, 10, 6)</li>\r\n</ul>||sec||Prize ||ttl||First- INR 2000<br/>\r\nSecond- INR 1000 <br/>\r\nThird- INR 750', 'Creativity,colours,finearts', 'Karthika R||@||9400708596||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||5', 0),
('SNP', 'Salt n Pepper', 5, 'Unleash the true passion of cooking within you !', 'To become a connoisseur of fine cuisine, one has to posses the innate ability to entice both the visual senses and taste buds.<br/>\r\nAt Salt n Pepper you don&#39;t need to look any further to become a cooking legend, so come and mesmerize the crowd with the amazing dishes that you whip up.<br/>\r\n<br/>\r\n||sec||Rules and Regulations||ttl||\r\n<ul>\r\n<li>Open event</li>\r\n<li>2 members per team</li>\r\n<li>On the spot registration allowed at the venue</li>\r\n<li>Written prelims (depending on the number of participants)</li>\r\n<li>Rounds will be impromptu and on stage (except written prelims)</li>\r\n<li>Props will not be allowed.</li>\r\n<li>Possible rounds: garnishing, cooking etc.</li>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>||sec||Prize Money||ttl||First - INR 1500<br/>\r\nSecond - INR 1000<br/>\r\nThird - INR 750', 'salt, pepper, cooking, ragam', 'Ganga Ramachandran||@||9037645776||@||||0||Anirudh Canumalla||@||9497419202||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('SPB', 'Spelling Bee', 6, 'The ultimate word attack', 'Prove your mastery over the English language and your skill with the alphabets as you spell through the myriad of words that weâ€™ve got buzzing for you.||sec||Rules and Regulations||ttl||â€¢Open Event<br/>\r\n<br/>\r\n\r\nâ€¢Written prelims with dictation of words<br/>\r\n<br/>\r\n\r\nâ€¢10 finalists will be selected<br/>\r\n<br/>\r\n\r\nâ€¢Finals will contain multiple elimination rounds<br/>\r\n<br/>\r\n\r\nâ€¢Points: (10, 6, 4)\r\n\r\n\r\n||sec||Prize Money||ttl||First Prize - INR 1000<br/>\r\nSecond Prize - INR 600<br/>\r\nThird Prize - INR 400', 'spelling, bee, spelling bee,word activity, word activities, english word list ,', 'Parvathy Varma||@||9544429063||@||||0||Gokul Nath||@||8129124110||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('STP', 'Street Play', 8, 'A street drama to act out against the grievances in our soceity.', 'The heart of the country is reflected by the streets where everyday life is presented as a package of drama, humour and zeal.<br/>\r\nTake on the stage to address the country&#39;s social and political problems through theatre - fuelled by emotions and music.\r\n<br/>\r\n<br/>\r\n||sec||Rules and Regulations||ttl||\r\n\r\n<ul>\r\n<li>One team per college.</li>\r\n<li>Maximum of 12 per team</li>\r\n<li>Time limit: 20 minutes empty to empty</li>\r\n<li>Teams will have to perform in an open venue with audience on all sides</li>\r\n<li>The play should convey a social message</li>\r\n<li>English/Malayalam/Hindi may be used as a medium for narration and dialogue</li>\r\n<li>Only percussion instruments are allowed for accompaniment</li>\r\n<li>Judging criteria will be based on theme, performance, costumes etc</li>\r\n<li>Points: (35, 25, 15)</li>\r\n</ul>\r\n ||sec||Prize Money||ttl||First - INR 10000<br/>\r\nSecond - INR 6000 ', 'street, play, ragam, society', 'Abdul Wasih||@||8547562834||@||||0||Upas Unnikrishnan||@||9495888823||@||||0||||@||||@||||0||', '', '5||@||12', 0),
('STS', 'String Solo', 9, '', '\r\nSome say that the Universe is but composed of basic units called strings. It must be true, for nothing else can be the source of the majestic beauty surrounding us.||sec||Rules and Regulations||ttl||\r\n<ul>\r\n<li>Any acoustic string instrument (violin, veena, sitar or guitar) may be used</li>\r\n</ul>\r\n<ul>\r\n<li>Time limit of 3-5 minutes including setup and clearance</li>\r\n</ul>\r\n<ul>\r\n<li>A combination of riffs and solos can be played</li>\r\n</ul>\r\n<ul>\r\n<li>Solos of famous songs can be played</li>\r\n</ul>\r\n<ul>\r\n<li>Basic drum beats will be provided as a background</li>\r\n</ul>\r\n<ul>\r\n<li>Tempo can be altered at request</li>\r\n</ul>\r\n<ul>\r\n<li>Judging criteria will be based on the solo only</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (10, 6, 4)</li>\r\n</ul>||sec|| Prize Money||ttl||First - INR 2000\r\n<br/>\r\nSecond - INR 1000\r\n<br/>\r\nThird - INR 750 ', '', 'Aswathy T Revi||@||9400342934||@||||0||Febin Issac||@||9946294734||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('SWA', 'Swara raaga', 9, 'A Fusion of Eastern and Western Music', '<b>"As your violin&#39;s tempo reaches its apogee,<br/>\r\nLet your audience sway to your lilting spells,<br/>\r\nUnleash all your swaraas on a soulful spree,<br/>\r\nWin, if in everyone&#39;s hearts,only your tune dwells"</b><br/>\r\n\r\nIt is said that music has the charm to soothe anyone. \r\nHere&#39;s your chance to pit yourselves against some of the best bands in South India.\r\nSo get ready to let the whole town resonate with your strings of melody!\r\n||sec||Rules and Regulations||ttl||\r\n<ul>\r\n<li>One team per college</li>\r\n</ul>\r\n<ul>\r\n<li>Maximum of 20 members per team</li>\r\n</ul>\r\n<ul>\r\n<li>Time limit: 15 min + 3min set up time</li>\r\n</ul>\r\n<ul>\r\n<li>Teams are permitted to perform in any regional language of their choice.</li>\r\n</ul>\r\n\r\n<ul>\r\n<li>Instruments used should be in clean patch with no distortion/modifiers.</li>\r\n</ul>\r\n<ul>\r\n<li>Participating teams should upload a video of any of their performance in YouTube and send its URL to swararaaga@ragam.org.in on or before February 19th, along with the following details:</li>\r\n</ul>\r\n<ul>\r\n<li>College Name (and Band Name, if any)</li>\r\n</ul>\r\n<ul>\r\n<li>Name and Contact Info of the Team Leader</li>\r\n</ul>\r\n<ul>\r\n<li>List of Team members</li>\r\n</ul>\r\n<ul>\r\n<li>Finalists will be screened based on the video sent.</li>\r\n</ul>\r\n<ul>\r\n<li>Registration will be confirmed only after receiving the confirmation letter</li>\r\n</ul>\r\n<ul>\r\n<li>There is no On the Spot Registration.</li>\r\n</ul>\r\n<ul>\r\n<li>Members of the team need not necessarily be from the same college (but in this case, the colleges in consideration wonâ€™t receive any points).</li>\r\n</ul>\r\n<ul>\r\n<li>A team manager is requested to be present near the sound engineer 5 minutes before the performance of the team so as to ensure proper sound levelling</li>\r\n</ul>\r\n<ul>\r\n<li>The same person cannot be a part of two participating teams</li>\r\n</ul>\r\n<ul>\r\n<li>Instruments other than drums (standard 5-piece drum kit) will not be provided</li>\r\n</ul>\r\n<ul>\r\n<li>All music should be played live on stage</li>\r\n</ul>\r\n<ul>\r\n<li>Points: (45, 32, 24)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 15000<br/>\r\nSecond Prize - INR 10000<br/>\r\nThird Prize - INR 5000', 'eastern western fusion ', 'Nandakumar CV||@||9746272976||@||swararaaga||0||||@||||@||swararaaga||0||||@||||@||swararaaga||0||', '', '3||@||20', 0),
('TRS', 'Treasure Hunt', 5, 'Clues clues everywhere. ', 'Seek and you shall find. The world is full of mysteries, questions unanswered, doors unlocked. Discretion will be your worst enemy. Mental reflex, your ally. The fluttering pieces of unknown will have to be knit together to claim the final prize.<br/>\r\n<br/>\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Max team size of 4 members.</li>\r\n<li>A prelims round will be conducted based on which finalists will be shortlisted.</li>\r\n<li>Remaining details will be given on the spot.</li>\r\n<li>Points: (15,10)</li>\r\n</ul>||sec||Prize Money||ttl||First Prize - INR 5000<br/>', 'ragam 2014, treasure hunt, thematic', 'Nandakumar CV||@||9746272976||@||||0||Himaya Iyer||@||8891314359||@||||0||||@||||@||||0||', '', '1||@||4', 0),
('TWT', 'Twist in the Tale', 6, 'Think Different.', 'A picture is worth a thousand words. Unleash your creativity and humour as you fabricate a story from the given pictures, twisting your way to an unexpected finish.||sec||Prize Money||ttl||First- INR 1500 <br/>\r\nSecond- INR 1000 <br/>\r\nThird- INR 750', 'ragam14, literary, writing', 'Athul John ||@||9400394776||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('VGC', 'Vegetable Carving', 10, '', '<b>"Meat is Murder"... Go wild!</b>\r\n<br/>\r\nPut on your thinking caps, and animate these boring veggies.\r\n<br/>\r\nGrab your knives and chisel your vogue models.||sec|| Rules and Regulations||ttl||\r\n<ul>\r\n<li>Two teams per college</li>\r\n<li>3 to 6 members in a team</li>\r\n<li>Time limit: 60 minutes</li>\r\n<li>Each team will be given vegetables and tools</li>\r\n<li>Teams are not allowed to bring their own tools</li>\r\n<li>Teams can decide their own themes</li>\r\n<li>Points: (10, 6, 4) </li>\r\n</ul>||sec||Prize Money||ttl||1st INR 2000 \r\n<br/>\r\n2nd INR 1000 \r\n<br/>\r\n3rd INR 750', 'finearts carving kitchen', 'Nikita Abraham||@||8891852130||@||||0||||@||||@||||0||||@||||@||||0||', '', '1||@||1', 0),
('WSO', 'Western Solo', 9, 'Western Singing Competition', '<i>&#39;Sing U must.\r\nTunes from the west.\r\nPlay your lute\r\nSet ablaze the stage\r\nBe Orpheus reborn\r\nConquer hearts anew.&#39;</i>\r\n \r\n \r\n \r\nPush your chords and steal the spotlights. Here we offer you a platform to showcase your vocal skills and be the standout voice of Ragam &#39;14.\r\n \r\n\r\nRules and Regulations\r\n\r\n<ul>\r\n<li>One participant per college in each category(male &female).</li>\r\n<li>Judging will be separate for male and female categories.</li>\r\n<li>Time limit: 5 minutes per participant.</li>\r\n<li>One (only) instrumental accompaniment is permitted.</li>\r\n<li>Keyboard (piano patch only)/Electric Guitar may be provided if required.</li>\r\n<li>Points: (10, 6, 4)</li>', 'Western\r\nMusic\r\nSolo', 'Aswathi Dinakar||@||9895355239||@||wso@ragam.org||0||||@||||@||wso@ragam.org||0||||@||||@||wso@ragam.org||0||', 'First - INR 2000\r\nSecond - INR 1000', '1||@||1', 0),
('WTG', 'Whats The Good Word', 6, 'A Game Of Words', '<q><b>If you have the magic<br/>\r\nTo conjure words; <br/>\r\nJuggle tongues<br/>\r\nAnd brew meaning;<br/>\r\nHere&#39;s your stage!</q><br/>\r\n</b> <br/>\r\n\r\nLet your word-power play the game this Ragam. Match your wits with the masters of vocabulary and saunter away as the Lord of words.\r\n\r\n\r\n\r\n||sec||Rules and Regulations||ttl||<ul>\r\n<li>Open event with two members in a team.</li>\r\n<li>Will have a written prelims followed by a final round.</li>\r\n<li>Final round includes different word game rounds like Russian dolls, Kangaroo words, Scrabble etc.</li>\r\n<li>Points (10, 6, 4)</li>\r\n</ul>\r\n||sec||Prize Money||ttl||First Prize - INR 1500<br/>\r\nSecond Prize - INR 1000<br/>\r\nThird Prize - INR 750', 'Words\r\nWordgame', 'Kiran C Nair||@||7736372074||@||wtgw||0||Tom Sebastian||@||9037102360||@||wtgw||0||||@||||@||wtgw||0||', '', '2||@||2', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:57 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam14`
--

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
  `eventcode` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `validate` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`eventcode`, `username`, `password`, `validate`) VALUES
('-pr', 'adityapulachery', 'ragamragam', 1),
('DUM', 'aishmaruvada', 'omalloor88', 1),
('SWA', 'aishumaruvada', 'omalloor88', 1),
('DEB', 'aishwaryamaruvada', 'omalloor88', 1),
('WTG', 'aswathi', 'wtgw', 1),
('-pr', 'athulya', 'athulya', 1),
('CRN', 'choreonight', 'choreonite1', 1),
('CRM', 'criminalminds', 'criminalminds', 1),
('WSO', 'dinakar', 'ws', 1),
('CLD', 'dishiti', 'dishiti', 1),
('MNA', 'dishitiep', 'dishiti', 1),
('PRF', 'dishitigupta', 'dishiti', 1),
('DUP', 'duplicate', 'duplicate', 0),
('FRS', 'freestyle', 'freestyle1', 1),
('-pr', 'gokulnath', 'ragam14', 1),
('-pr', 'hafiz', 'ragam14', 1),
('-pr', 'jacob', 'ronaldo', 1),
('JAM', 'jam', 'jam', 1),
('CTB', 'joffy', 'ragam', 1),
('FAR', 'joffycyriac', 'ragam', 1),
('TRS', 'joffytrs', 'ragam', 1),
('AMP', 'joffyvc', 'ragam', 1),
('-pr', 'john', 'payasam', 1),
('STP', 'johnku', '9h16xtjk', 1),
('OPA', 'johnkur', 'farawaytree', 1),
('SNP', 'johnkuri', 'supernova', 1),
('-pr', 'kiran', 'kiran', 1),
('LMS', 'lightmusicsolo', 'lightmusicsolo', 1),
('PKR', 'milan', 'saintjude', 1),
('PSK', 'milanmariya', 'saintjude', 1),
('CMS', 'milantomy', 'saintjude', 1),
('MIM', 'mime', 'mime', 0),
('MMC', 'mimicry', 'mimicry', 0),
('MRG', 'mrmsragam', 'mrmsragam1', 1),
('ADZ', 'nakul', 'iloveindia', 1),
('CRT', 'nakultwo', 'ilovekerala', 1),
('OVR', 'namita', 'namita', 1),
('ANT', 'namitak', 'namitak', 1),
('QUI', 'namitakr', 'namitakr', 1),
('-pr', 'nandagopal', 'ragam14', 1),
('-pr', 'nandakumar', 'nans2693', 1),
('FPG', 'nanditha', 'nandunni', 1),
('DRM', 'nandithau', 'nandunni', 1),
('KVP', 'nandithaunnikrishnan', 'nandunni', 1),
('RGL', 'rangoli', 'rangoli', 1),
('ACS', 'sabahmohammed', 'ragam', 1),
('-pr', 'sikhamanoj', 'javagreen', 1),
('MVS', 'spoof', 'spoof', 1),
('-pr', 'stevethomas', 'stevethomas', 1),
('STS', 'stringsolo', 'stringsolo', 1),
('JSK', 'suzanne', 'suzanne', 1),
('SPB', 'suzannevc', 'ragam', 1),
('MEH', 'suze', 'suze', 1),
('PNT', 'tarun', '12345678', 1),
('MAP', 'tarunt', '12345678', 1),
('CLG', 'tarunthekkel', '12345678', 1),
('TWT', 'tinthet', 'tinthet1', 1),
('-pr', 'tom', 'tomst', 1),
('VGC', 'vegetablecarving', 'vegetablecarving', 1),
('-pr', 'wasih', 'wasih', 1),
('-pr', 'yadu', 'appy', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
