-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema imones_sistema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema imones_sistema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `imones_sistema` DEFAULT CHARACTER SET utf8 ;
USE `imones_sistema` ;

-- -----------------------------------------------------
-- Table `imones_sistema`.`darbuotojai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`darbuotojai` (
  `iddarbuotojai` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `vardas_pavarde` VARCHAR(45) NOT NULL,
  `telefonas` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `pareigos` VARCHAR(45) NOT NULL,
  `etatas` FLOAT(2,1) NOT NULL,
  `atlyginimas` INT NOT NULL,
  PRIMARY KEY (`iddarbuotojai`),
  UNIQUE INDEX `iddarbuotojai_UNIQUE` (`iddarbuotojai` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`klientai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`klientai` (
  `idklientai` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `vardas_arba_imones_pav` VARCHAR(100) NOT NULL,
  `telefono_numeris` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idklientai`),
  UNIQUE INDEX `idklientai_UNIQUE` (`idklientai` ASC) VISIBLE,
  UNIQUE INDEX `vardas_arba_imones_pav_UNIQUE` (`vardas_arba_imones_pav` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`projektai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`projektai` (
  `idprojektai` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` VARCHAR(45) NOT NULL,
  `pradejimo_data` DATE NOT NULL,
  `terminas` DATE NULL,
  `aprasymas` TEXT NULL,
  `klientai_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idprojektai`, `klientai_id`),
  UNIQUE INDEX `idprojektai_UNIQUE` (`idprojektai` ASC) VISIBLE,
  INDEX `fk_projektai_klientai1_idx` (`klientai_id` ASC) VISIBLE,
  CONSTRAINT `fk_projektai_klientai1`
    FOREIGN KEY (`klientai_id`)
    REFERENCES `imones_sistema`.`klientai` (`idklientai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`reikalavimai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`reikalavimai` (
  `idreikalavimai` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` VARCHAR(45) NOT NULL,
  `aprasymas` TEXT NULL,
  `pasitenkinimas_igyvendinus` TINYINT NOT NULL,
  `nepasitenkinimas_neigyvendinus` TINYINT NOT NULL,
  `terminas` DATE NULL,
  `projektai_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idreikalavimai`, `projektai_id`),
  UNIQUE INDEX `idreikalavimai_UNIQUE` (`idreikalavimai` ASC) VISIBLE,
  INDEX `fk_reikalavimai_projektai1_idx` (`projektai_id` ASC) VISIBLE,
  CONSTRAINT `fk_reikalavimai_projektai1`
    FOREIGN KEY (`projektai_id`)
    REFERENCES `imones_sistema`.`projektai` (`idprojektai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`uzduotys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`uzduotys` (
  `iduzduotys` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` VARCHAR(45) NOT NULL,
  `aprasymas` TEXT NULL,
  `terminas` DATETIME NULL,
  `projektai_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`iduzduotys`, `projektai_id`),
  UNIQUE INDEX `iduzduotys_UNIQUE` (`iduzduotys` ASC) VISIBLE,
  INDEX `fk_uzduotys_projektai_idx` (`projektai_id` ASC) VISIBLE,
  CONSTRAINT `fk_uzduotys_projektai`
    FOREIGN KEY (`projektai_id`)
    REFERENCES `imones_sistema`.`projektai` (`idprojektai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`saskaitos_fakturos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`saskaitos_fakturos` (
  `idsaskaitos_fakturos` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `numeris` INT UNSIGNED NOT NULL,
  `israsymo_data` DATE NOT NULL,
  `apmoketi_iki` DATE NULL,
  `pardavejo_rekvizitai` VARCHAR(255) NOT NULL,
  `pirkejo_rekvizitai` VARCHAR(255) NOT NULL,
  `projektai_id` INT UNSIGNED NOT NULL,
  `bendra_nuolaida` INT NULL,
  PRIMARY KEY (`idsaskaitos_fakturos`, `projektai_id`),
  UNIQUE INDEX `idsaskaitos_fakturos_UNIQUE` (`idsaskaitos_fakturos` ASC) VISIBLE,
  UNIQUE INDEX `numeris_UNIQUE` (`numeris` ASC) VISIBLE,
  INDEX `fk_saskaitos_fakturos_projektai1_idx` (`projektai_id` ASC) VISIBLE,
  CONSTRAINT `fk_saskaitos_fakturos_projektai1`
    FOREIGN KEY (`projektai_id`)
    REFERENCES `imones_sistema`.`projektai` (`idprojektai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`mokejimai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`mokejimai` (
  `idmokejimai` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mokejimo_data` DATE NOT NULL,
  `apmoketa_suma` DECIMAL NOT NULL,
  `saskaitos_fakturos_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idmokejimai`, `saskaitos_fakturos_id`),
  UNIQUE INDEX `idmokejimai_UNIQUE` (`idmokejimai` ASC) VISIBLE,
  INDEX `fk_mokejimai_saskaitos_fakturos1_idx` (`saskaitos_fakturos_id` ASC) VISIBLE,
  CONSTRAINT `fk_mokejimai_saskaitos_fakturos1`
    FOREIGN KEY (`saskaitos_fakturos_id`)
    REFERENCES `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`sf_paslaugos_prekes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`sf_paslaugos_prekes` (
  `idsf_paslaugos_prekes` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` VARCHAR(100) NOT NULL,
  `matavimo_vnt` VARCHAR(5) NOT NULL,
  `vienetu` INT NOT NULL,
  `vnt_kaina` DECIMAL NOT NULL,
  `saskaitos_fakturos_id` INT UNSIGNED NOT NULL,
  `nuolaida` INT NULL,
  PRIMARY KEY (`idsf_paslaugos_prekes`, `saskaitos_fakturos_id`),
  UNIQUE INDEX `idsf_paslaugos_prekes_UNIQUE` (`idsf_paslaugos_prekes` ASC) VISIBLE,
  INDEX `fk_sf_paslaugos_prekes_saskaitos_fakturos1_idx` (`saskaitos_fakturos_id` ASC) VISIBLE,
  CONSTRAINT `fk_sf_paslaugos_prekes_saskaitos_fakturos1`
    FOREIGN KEY (`saskaitos_fakturos_id`)
    REFERENCES `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imones_sistema`.`darbuotojai_vykdo_projektus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imones_sistema`.`darbuotojai_vykdo_projektus` (
  `projektai_id` INT UNSIGNED NOT NULL,
  `darbuotojai_id` INT UNSIGNED NOT NULL,
  `papildomi_komentarai` VARCHAR(255) NULL,
  PRIMARY KEY (`projektai_id`, `darbuotojai_id`),
  INDEX `fk_projektai_has_darbuotojai_darbuotojai1_idx` (`darbuotojai_id` ASC) VISIBLE,
  INDEX `fk_projektai_has_darbuotojai_projektai1_idx` (`projektai_id` ASC) VISIBLE,
  CONSTRAINT `fk_projektai_has_darbuotojai_projektai1`
    FOREIGN KEY (`projektai_id`)
    REFERENCES `imones_sistema`.`projektai` (`idprojektai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projektai_has_darbuotojai_darbuotojai1`
    FOREIGN KEY (`darbuotojai_id`)
    REFERENCES `imones_sistema`.`darbuotojai` (`iddarbuotojai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
