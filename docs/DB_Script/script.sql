CREATE SCHEMA demo;

USE demo;

CREATE TABLE `person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(244) DEFAULT NULL,
  `email` varchar(244) DEFAULT NULL,
  `nationality` varchar(244) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `person` (`id`, `name`, `email`, `nationality`) VALUES
('1', 'Leonel Messi', 'leonelmessi@gmail.com', 'Argentina'),
('2', 'Cristiano Ronaldo', 'cristianoronaldo@gmail.com', 'Portugal'),
('3', 'Ronaldinho Gaucho del Rio', 'ronaldinhogr@gmail.com', 'Brasil'),
('4', 'Pablo Guerrero', 'pabloguerrero@gmail.com', 'Peru');