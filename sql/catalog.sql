SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `magazin`
--
CREATE DATABASE `catalog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `catalog`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdAt` timestamp,
  `updatedAt` timestamp,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `product_id` smallint(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `score` smallint(5) DEFAULT NULL,
  `createdAt` timestamp,
  `updatedAt` timestamp,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` smallint(5) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `createdAt` timestamp,
  `updatedAt` timestamp,
  PRIMARY KEY (`id`),
  KEY `id_produse` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



INSERT INTO categories (id, name, description) VALUES (1,'comedie','filme distractive');
INSERT INTO categories (id, name, description) VALUES (2,'romantic','filme');
INSERT INTO categories (id, name, description) VALUES (3,'epic','filme vechi');
INSERT INTO categories (id, name, description) VALUES (4,'horror','');
INSERT INTO categories (id, name, description) VALUES (5,'SF','');
INSERT INTO categories (id, name, description) VALUES (6,'thriller','');
INSERT INTO categories (id, name, description) VALUES (7,'drama','');
INSERT INTO categories (id, name, description) VALUES (8,'actiune','');


INSERT INTO products (name, description, category_id, price) VALUES ('Star Trek Beyond', 'Justin Lin, 2016', 5, 50);
INSERT INTO products (name, description, category_id, price) VALUES ('Aeon Flux', 'Karyn Kusama, 2006', 5, 50);
INSERT INTO products (name, description, category_id, price) VALUES ('The Dark Knight', 'Christopher Nolan, 2008', 8, 50);
INSERT INTO products (name, description, category_id, price) VALUES ('Fight Club', 'David Fincher, 1999', 7, 50);
INSERT INTO products (name, description, category_id, price) VALUES ('The Avengers', 'Joss Whedon, 2012', 8, 50);
