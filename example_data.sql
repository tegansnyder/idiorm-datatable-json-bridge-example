# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.16)
# Database: idiorm_example_db
# Generation Time: 2016-04-06 03:38:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table example_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `example_data`;

CREATE TABLE `example_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `example_data` WRITE;
/*!40000 ALTER TABLE `example_data` DISABLE KEYS */;

INSERT INTO `example_data` (`id`, `full_name`, `country`, `email`)
VALUES
	(1,'Asha Hudson','Saudi Arabia','Robb_Funk@travon.us'),
	(2,'Dusty Kshlerin','Chile','Hunter.Kub@kendra.me'),
	(3,'Buster Hagenes','Bulgaria','Hilario@krystina.org'),
	(4,'Mrs. Maida Smitham','Central African Republic','David@dillon.name'),
	(5,'Christian Lueilwitz','Bangladesh','Griffin@jarrell.biz'),
	(6,'Robyn Gibson Jr.','French Polynesia','Keshaun@helene.us'),
	(7,'Scotty Haag','Swaziland','Jamil@ulises.org'),
	(8,'Dennis Kunze','Vietnam','Noemi.Stoltenberg@edison.biz'),
	(9,'Lacey Bashirian','Colombia','Roy_Greenholt@therese.tv'),
	(10,'Isabell Brekke','Bhutan','Emely_Welch@eveline.co.uk'),
	(11,'Maximo Bartell','Malaysia','Sven.Considine@dallin.co.uk'),
	(12,'Hillary Schumm','Midway Islands','Mackenzie.Walker@hudson.ca'),
	(13,'Raleigh Schiller','British Virgin Islands','Samir.Rutherford@gilda.co.uk'),
	(14,'Ericka Lowe','Romania','Stone.Weimann@eden.me'),
	(15,'Emmie Wehner','Netherlands Antilles','Lucie_Batz@suzanne.me'),
	(16,'Orpha Pacocha','Cook Islands','Devonte@anika.tv'),
	(17,'Toy Dare Jr.','Armenia','Nayeli.Maggio@cyrus.net'),
	(18,'Mrs. Marcus Ryan','Suriname','Devonte.Breitenberg@lexus.io'),
	(19,'Polly Reilly','Saint Lucia','Elody_Murazik@lacey.io'),
	(20,'Elmore Marvin','French Polynesia','Morris_Dicki@florencio.info'),
	(21,'Stan Effertz DVM','Qatar','Kyla@katlyn.name'),
	(22,'Ms. Megane Kris','Haiti','Corine@simeon.biz'),
	(23,'Jarrell Feil III','Falkland Islands','Dariana.Koepp@paula.co.uk'),
	(24,'Dr. Karley Effertz','Slovenia','Icie_Corkery@ignatius.info'),
	(25,'Pearlie Rodriguez Jr.','Sudan','Stuart@jett.info'),
	(26,'Polly Bergnaum','Saint Pierre and Miquelon','Yesenia@aaron.me'),
	(27,'Tyra Johnson','Wallis and Futuna','Arnoldo.Breitenberg@destany.net'),
	(28,'Leif Baumbach','Monaco','Maxime_Bergnaum@jeremy.co.uk'),
	(29,'Dr. Pierre Crist','Andorra','Kristy.Krajcik@nedra.ca'),
	(30,'Tracey Grady III','American Samoa','Sydnie_Turner@katrine.name'),
	(31,'Lorna Robel','Dominican Republic','Devonte@abagail.us'),
	(32,'Durward Windler','South Korea','Stanford.Fadel@mario.io'),
	(33,'Pearline Kling','Belarus','Armand_Cruickshank@theo.name'),
	(34,'Brad Gleason','Thailand','Sheldon@verdie.net'),
	(35,'Dalton Berge','British Indian Ocean Territory','Dennis_Pagac@britney.biz'),
	(36,'Shaina Nitzsche','Iran','Judson.Rosenbaum@rasheed.net'),
	(37,'Karelle Kessler','Croatia','Margaret.Beahan@keara.name'),
	(38,'Brenda Olson','Montserrat','Osvaldo_Considine@deron.com'),
	(39,'Carli Doyle V','Syria','Wava@robyn.name'),
	(40,'Hallie Kuhlman MD','Samoa','Brannon_Hand@bettie.io'),
	(41,'General Harvey II','Somalia','Leopold@jesse.info'),
	(42,'Monique Koelpin','North Vietnam','Katelyn@salvador.biz'),
	(43,'Giovani Stroman','Antigua and Barbuda','Jaquan_Weimann@aliza.info'),
	(44,'Newton Cole','Metropolitan France','Kaley.Jacobson@jacklyn.name'),
	(45,'Jewell Hudson','Algeria','Claude@greta.biz'),
	(46,'Amos Hegmann','Ethiopia','Luna_Murray@jazlyn.ca'),
	(47,'Ellie Boyer','Uruguay','Ofelia@brycen.tv'),
	(48,'Jalen McDermott','São Tomé and Príncipe','Lue@magdalena.org'),
	(49,'Cathy Champlin','Nicaragua','Shyann@jett.org'),
	(50,'Odie Schaden','New Caledonia','Hope_Leuschke@jess.ca');

/*!40000 ALTER TABLE `example_data` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
