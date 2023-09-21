# Création de la base de données
 DROP DATABASE IF EXISTS `Cinema`;
CREATE DATABASE IF NOT EXISTS `Cinema` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `Cinema`;


# Création des tables

CREATE TABLE `MovieTheaters` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(50) NOT NULL,
	`city` VARCHAR(50) NOT NULL,
	`address` VARCHAR(255) NOT NULL
)engine=INNODB;

CREATE TABLE `Rooms` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(50) NOT NULL,
	`seatings` INT NOT NULL,
	`id_movieTheater` INT NOT NULL
)engine=INNODB;

CREATE TABLE `Movies` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`title` VARCHAR(50) NOT NULL,
	`duration` TIME NOT NULL,
	`director` VARCHAR(50) NOT NULL,
	`description` LONGTEXT NOT NULL
)engine=INNODB;

CREATE TABLE `ProjectionEvents` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`id_room` INT NOT NULL,
	`id_movie` INT NOT NULL,
	`date` DATETIME NOT NULL,
	`options` JSON,
	`language` VARCHAR(30)
)engine=INNODB;

CREATE TABLE `Tariffs` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`title` VARCHAR(50),
	`price` DOUBLE
)engine=INNODB;

CREATE TABLE `Roles`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(50)
)engine=INNODB;

CREATE TABLE `Users` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(50),
	`lastname` VARCHAR(50),
	`email` VARCHAR(255),
	`password` VARCHAR(255),
	`phoneNumber` VARCHAR(15)
)engine=INNODB;

CREATE TABLE `Tickets` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`paid` TINYINT,
	`id_projectionEvent` INT NOT NULL,
	`id_tariff` INT NOT NULL,
	`id_user` INT NOT NULL
)engine=INNODB;

CREATE TABLE `Roles_Users` (
	`id_user` INT,
	`id_role` INT,
	PRIMARY KEY (`id_user`,`id_role`)
)engine=INNODB;

ALTER TABLE `Roles_Users` ADD FOREIGN KEY (`id_user`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `Roles_Users` ADD FOREIGN KEY (`id_role`) REFERENCES `Roles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `Tickets` ADD FOREIGN KEY (`id_projectionEvent`) REFERENCES `ProjectionEvents`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `Tickets` ADD FOREIGN KEY (`id_tariff`) REFERENCES `Tariffs`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `Tickets` ADD FOREIGN KEY (`id_user`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `ProjectionEvents` ADD FOREIGN KEY (`id_room`) REFERENCES `Rooms`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `ProjectionEvents` ADD FOREIGN KEY (`id_movie`) REFERENCES `Movies`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `ProjectionEvents` ADD CONSTRAINT UNIQUE (`id_room`, `date`);
ALTER TABLE `Rooms` ADD FOREIGN KEY (`id_movieTheater`) REFERENCES `MovieTheaters`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `Rooms` ADD CONSTRAINT UNIQUE (`name`, `id_movieTheater`);
