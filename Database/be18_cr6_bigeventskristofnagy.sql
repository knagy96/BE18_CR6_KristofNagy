/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `cr`;
CREATE TABLE `cr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cr` (`id`, `name`, `description`, `type`, `date`, `image`, `capacity`, `contact`, `phone_number`, `address`, `url`) VALUES
(1, 'ACDC', 'Australian rock band formed in Sydney in 1973 by Scottish-born Australian brothers Malcolm (rhythm guitar) and Angus Yo', 'Rock', '2023-08-02 20:00:00', 'https://cdn.pixabay.com/photo/2016/11/22/19/15/audience-1850119__340.jpg', 10000, 'ACDC.support@gmail.com', '06621458965', 'Marx Halle, Wien, 1030', 'https://de.wikipedia.org/wiki/AC/DC');
INSERT INTO `cr` (`id`, `name`, `description`, `type`, `date`, `image`, `capacity`, `contact`, `phone_number`, `address`, `url`) VALUES
(2, 'Solomun', 'Mladen Solomun (born December 27, 1975), better known under his stage name Solomun, is a Bosnian-German DJ.', 'Techno', '2023-08-13 23:00:00', 'https://cdn.pixabay.com/photo/2016/11/29/11/36/club-1869222_960_720.jpg', 3000, 'solomun@gmail.com', '06232564', 'Grelle Forelle, Spitauer Lande, Wien', 'https://www.grelleforelle.com/');
INSERT INTO `cr` (`id`, `name`, `description`, `type`, `date`, `image`, `capacity`, `contact`, `phone_number`, `address`, `url`) VALUES
(3, 'Ed Sheeran', 'Edward Christopher Sheeran MBE (/ˈʃɪərən/; born 17 February 1991) is an English singer-songwriter.', 'Pop', '2023-08-15 16:00:00', 'https://cdn.pixabay.com/photo/2016/01/10/21/05/mic-1132528_960_720.jpg', 10000, 'edsheeran@gmail.com', '06215489', 'Marx Halle, Wien, 1030', 'https://en.wikipedia.org/wiki/Ed_Sheeran');
INSERT INTO `cr` (`id`, `name`, `description`, `type`, `date`, `image`, `capacity`, `contact`, `phone_number`, `address`, `url`) VALUES
(4, 'Patrick Topping', 'Patrick Topping is an English DJ, music producer and the owner of the record label company Trick.', 'Techno', '2023-07-06 01:00:00', 'https://cdn.pixabay.com/photo/2016/11/22/19/15/audience-1850119__340.jpg', 2000, 'topping@gmail.com', '03216556', 'Grelle Forelle, Spitauer Lande, Wien', 'https://en.wikipedia.org/wiki/Patrick_Topping'),
(5, 'Dubioza kolektiv', 'rock group known for their crossover style that incorporates elements of hip hop, dub, ska, reggae, rock, punk.', 'Rock', '2023-06-17 22:00:00', 'https://cdn.pixabay.com/photo/2016/01/10/21/05/mic-1132528_960_720.jpg', 4000, 'dubioz@gmail.com', '0215485', 'ODerKlub, Karls Platz, 1010 Wien', 'https://en.wikipedia.org/wiki/Dubioza_kolektiv'),
(6, 'Eric Prydz', 'is a Swedish DJ and music producer.', 'Techno', '2023-09-15 18:00:00', 'https://cdn.pixabay.com/photo/2016/11/29/11/36/club-1869222_960_720.jpg', 2500, 'erik@gmail.com', '20125485', 'Grelle Forelle, Spitauer Lande, Wien', 'https://en.wikipedia.org/wiki/Eric_Prydz');

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414074045', '2023-04-14 09:43:02', 111);





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;