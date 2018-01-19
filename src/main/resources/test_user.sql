CREATE DATABASE  IF NOT EXISTS `test_user`;
USE `test_user`;


CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45),
  `lastName` varchar(45),
  `login` varchar(45),
  `password` varchar(45),
  `phoneNumber` varchar(45),
  `email` varchar(45),
  `rating` int(11) DEFAULT 0,
  `privileges` int(2) DEFAULT 0, # 0 = user; 1 = admin
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;