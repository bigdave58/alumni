SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `alumni` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `alumni` ;

-- -----------------------------------------------------
-- Table `alumni`.`FormerStudents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alumni`.`FormerStudents` ;

CREATE TABLE IF NOT EXISTS `alumni`.`FormerStudents` (
  `idStudents` VARCHAR(12) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `fname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `contactNumber` VARCHAR(15) NULL,
  `jobReady` TINYINT(1) NULL,
  `comment` TEXT NULL,
  `higherEd` TINYINT(1) NULL,
  PRIMARY KEY (`idStudents`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `alumni`.`Course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alumni`.`Course` ;

CREATE TABLE IF NOT EXISTS `alumni`.`Course` (
  `programCode` VARCHAR(8) NOT NULL,
  `programTitle` VARCHAR(50) NULL,
  PRIMARY KEY (`programCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `alumni`.`StudentsCourse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alumni`.`StudentsCourse` ;

CREATE TABLE IF NOT EXISTS `alumni`.`StudentsCourse` (
  `formerStudents_idStudents` VARCHAR(12) NOT NULL,
  `course_programCode` VARCHAR(8) NOT NULL,
  `date` DATETIME NULL,
  PRIMARY KEY (`formerStudents_idStudents`, `course_programCode`),
  INDEX `fk_formerStudents_has_course_course1_idx` (`course_programCode` ASC),
  INDEX `fk_formerStudents_has_course_formerStudents_idx` (`formerStudents_idStudents` ASC),
  CONSTRAINT `fk_formerStudents_has_course_formerStudents`
    FOREIGN KEY (`formerStudents_idStudents`)
    REFERENCES `alumni`.`FormerStudents` (`idStudents`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_formerStudents_has_course_course1`
    FOREIGN KEY (`course_programCode`)
    REFERENCES `alumni`.`Course` (`programCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `alumni`.`Employer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alumni`.`Employer` ;

CREATE TABLE IF NOT EXISTS `alumni`.`Employer` (
  `idemployer` INT NOT NULL AUTO_INCREMENT,
  `companyTitle` VARCHAR(60) NOT NULL,
  `contactNumber` VARCHAR(12) NOT NULL,
  `address` VARCHAR(45) NULL,
  `suburb` VARCHAR(45) NULL,
  `state` VARCHAR(3) NULL,
  `postCode` VARCHAR(4) NULL,
  `url` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `businessType` VARCHAR(45) NULL,
  PRIMARY KEY (`idemployer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `alumni`.`StudentsEmployer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alumni`.`StudentsEmployer` ;

CREATE TABLE IF NOT EXISTS `alumni`.`StudentsEmployer` (
  `formerStudents_idStudents` VARCHAR(12) NOT NULL,
  `employer_idemployer` INT NOT NULL,
  ` empStatus` TINYINT(1) NULL,
  `startDate` DATE NULL,
  `empHistory` TEXT NULL,
  `position` VARCHAR(45) NULL,
  `contactFname` VARCHAR(45) NULL,
  `contactLname` VARCHAR(45) NULL,
  `contactTitle` VARCHAR(3) NULL,
  PRIMARY KEY (`formerStudents_idStudents`, `employer_idemployer`),
  INDEX `fk_formerStudents_has_employer_employer1_idx` (`employer_idemployer` ASC),
  INDEX `fk_formerStudents_has_employer_formerStudents1_idx` (`formerStudents_idStudents` ASC),
  CONSTRAINT `fk_formerStudents_has_employer_formerStudents1`
    FOREIGN KEY (`formerStudents_idStudents`)
    REFERENCES `alumni`.`FormerStudents` (`idStudents`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_formerStudents_has_employer_employer1`
    FOREIGN KEY (`employer_idemployer`)
    REFERENCES `alumni`.`Employer` (`idemployer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
