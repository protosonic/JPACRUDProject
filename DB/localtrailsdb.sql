-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema localtrailsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `localtrailsdb` ;

-- -----------------------------------------------------
-- Schema localtrailsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `localtrailsdb` DEFAULT CHARACTER SET utf8 ;
USE `localtrailsdb` ;

-- -----------------------------------------------------
-- Table `local_trail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `local_trail` ;

CREATE TABLE IF NOT EXISTS `local_trail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `length_miles` DOUBLE NULL,
  `difficulty` VARCHAR(45) NULL,
  `single_track_percentage` DOUBLE NULL,
  `alt_high` INT NULL,
  `alt_low` INT NULL,
  `avg_grade` DOUBLE NULL,
  `max_grade` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS rider@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'rider'@'localhost' IDENTIFIED BY 'rider';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'rider'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `local_trail`
-- -----------------------------------------------------
START TRANSACTION;
USE `localtrailsdb`;
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (1, 'Cottonwood Loop', 22.9, 'Difficult', 75, 8935, 7030, 4, 15);
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (2, 'Spartan Loop', 5.9, 'Easy/Intermediate', 100, 7898, 7638, 3, 13);
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (3, 'Chicken for Dinner', 9.3, 'Intermediate/Difficult', 30, 7527, 7028, 3, 15);
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (4, 'Pot-O\'-Gold', 13.7, 'Intermediate/Difficult', 100, 9029, 7614, 6, 35);
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (5, 'Little Rainbow', 5.1, 'Easy/Intermediate', 100, 7890, 7560, 3, 19);
INSERT INTO `local_trail` (`id`, `name`, `length_miles`, `difficulty`, `single_track_percentage`, `alt_high`, `alt_low`, `avg_grade`, `max_grade`) VALUES (6, 'Rumba Trail', 2.2, 'Intermediate/Difficult', 100, 7696, 7550, 5, 13);

COMMIT;

