CREATE DATABASE `mysql-chal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- `mysql-chal`.Users definition

CREATE TABLE `Users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Users_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- `mysql-chal`.user_photo definition

CREATE TABLE `user_photo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `latitude` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_photo_unique` (`photo_url`),
  KEY `user_photo_User_FK` (`user_id`),
  CONSTRAINT `user_photo_User_FK` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `mysql-chal`.Users (username,created,last_updated) VALUES
	 ('Merlin','2025-05-16 03:41:44','2025-05-16 03:41:44'),
	 ('Roughnick','2025-05-16 03:41:44','2025-05-16 03:41:44'),
	 ('Zorven','2025-05-16 03:41:44','2025-05-16 03:41:44');


INSERT INTO `mysql-chal`.user_photo (photo_url,latitude,longitude,created,last_updated,user_id) VALUES
	 ('https://images.squarespace-cdn.com/content/v1/607f89e638219e13eee71b1e/1684821560422-SD5V37BAG28BURTLIXUQ/michael-sum-LEpfefQf4rU-unsplash.jpg',100,100,'2025-05-16 05:16:41','2025-05-16 05:16:41',6);
