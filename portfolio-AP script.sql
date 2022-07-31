-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema portfolioap
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema portfolioap
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portfolioap` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema bdo6gc0f4obedvx89sag
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bdo6gc0f4obedvx89sag
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdo6gc0f4obedvx89sag` DEFAULT CHARACTER SET utf8 ;
USE `portfolioap` ;

-- -----------------------------------------------------
-- Table `portfolioap`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `titulo` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `ubicacion` VARCHAR(45) NULL,
  `acerca` VARCHAR(45) NULL,
  `fotourl` VARCHAR(45) NULL,
  `coverurl` VARCHAR(45) NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(2000) NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolioap`.`educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`educacion` (
  `ideducacion` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `fechafin` DATE NULL,
  `institucion` VARCHAR(200) NULL,
  `institucionurl` VARCHAR(2000) NULL,
  `fotourl` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`ideducacion`),
  INDEX `persona_educacion_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_educacion`
    FOREIGN KEY (`persona`)
    REFERENCES `portfolioap`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolioap`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`proyecto` (
  `idproyecto` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `descripcion` VARCHAR(2000) NULL,
  `url` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idproyecto`),
  INDEX `persona_proyecto_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_proyecto`
    FOREIGN KEY (`persona`)
    REFERENCES `portfolioap`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolioap`.`skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`skill` (
  `idskill` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `dominio` INT NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idskill`),
  INDEX `persona_skill_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_skill`
    FOREIGN KEY (`persona`)
    REFERENCES `portfolioap`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolioap`.`laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`laboral` (
  `idlaboral` INT NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(500) NULL,
  `descripcion` VARCHAR(2000) NULL,
  `empresa` VARCHAR(500) NULL,
  `inicio` DATE NULL,
  `fin` DATE NULL,
  `fotourl` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idlaboral`),
  INDEX `persona_laboral_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_laboral`
    FOREIGN KEY (`persona`)
    REFERENCES `portfolioap`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolioap`.`redes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolioap`.`redes` (
  `idred` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `url` VARCHAR(2000) NULL,
  `fotourl` VARCHAR(200) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idred`),
  INDEX `persona_redes_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_redes`
    FOREIGN KEY (`persona`)
    REFERENCES `portfolioap`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `bdo6gc0f4obedvx89sag` ;

-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`persona` (
  `idpersona` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `ubicacion` VARCHAR(45) NULL DEFAULT NULL,
  `acerca` VARCHAR(500) NULL DEFAULT NULL,
  `fotourl` VARCHAR(45) NULL DEFAULT NULL,
  `coverurl` VARCHAR(45) NULL DEFAULT NULL,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(2000) NULL DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`educacion` (
  `ideducacion` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL DEFAULT NULL,
  `fechafin` DATE NULL DEFAULT NULL,
  `institucion` VARCHAR(200) NULL DEFAULT NULL,
  `institucionurl` VARCHAR(2000) NULL DEFAULT NULL,
  `fotourl` VARCHAR(2000) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ideducacion`),
  INDEX `persona_educacion_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_educacion`
    FOREIGN KEY (`persona`)
    REFERENCES `bdo6gc0f4obedvx89sag`.`persona` (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`laboral` (
  `idlaboral` INT(11) NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(500) NULL DEFAULT NULL,
  `descripcion` VARCHAR(2000) NULL DEFAULT NULL,
  `empresa` VARCHAR(500) NULL DEFAULT NULL,
  `inicio` DATE NULL DEFAULT NULL,
  `fin` DATE NULL DEFAULT NULL,
  `fotourl` VARCHAR(2000) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idlaboral`),
  INDEX `persona_laboral_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_laboral`
    FOREIGN KEY (`persona`)
    REFERENCES `bdo6gc0f4obedvx89sag`.`persona` (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`proyecto` (
  `idproyecto` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL DEFAULT NULL,
  `descripcion` VARCHAR(2000) NULL DEFAULT NULL,
  `url` VARCHAR(2000) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idproyecto`),
  INDEX `persona_proyecto_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_proyecto`
    FOREIGN KEY (`persona`)
    REFERENCES `bdo6gc0f4obedvx89sag`.`persona` (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`redes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`redes` (
  `idred` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `url` VARCHAR(2000) NULL DEFAULT NULL,
  `fotourl` VARCHAR(200) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idred`),
  INDEX `persona_redes_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_redes`
    FOREIGN KEY (`persona`)
    REFERENCES `bdo6gc0f4obedvx89sag`.`persona` (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bdo6gc0f4obedvx89sag`.`skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdo6gc0f4obedvx89sag`.`skill` (
  `idskill` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL DEFAULT NULL,
  `dominio` INT(11) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idskill`),
  INDEX `persona_skill_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_skill`
    FOREIGN KEY (`persona`)
    REFERENCES `bdo6gc0f4obedvx89sag`.`persona` (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
