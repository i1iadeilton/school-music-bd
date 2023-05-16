-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema escolademusica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema escolademusica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `escolademusica` DEFAULT CHARACTER SET utf8 ;
USE `escolademusica` ;

-- -----------------------------------------------------
-- Table `escolademusica`.`Orquestra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Orquestra` (
  `idOrquestra` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idOrquestra`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Musico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Musico` (
  `Cpf` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `identidade` VARCHAR(9) NOT NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `dataAdm` DATE NOT NULL,
  `dataNasc` DATE NOT NULL,
  `nomeSocial` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefonePrinc` VARCHAR(11) NULL,
  `salario` DECIMAL(6,2) ZEROFILL NOT NULL,
  PRIMARY KEY (`Cpf`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Instrumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Instrumento` (
  `idInstrumento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idInstrumento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Funcao` (
  `idFuncao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Instrumento_idInstrumento` INT NULL,
  PRIMARY KEY (`idFuncao`),
  INDEX `fk_Funcao_Instrumento1_idx` (`Instrumento_idInstrumento` ASC) VISIBLE,
  UNIQUE INDEX `Instrumento_idInstrumento_UNIQUE` (`Instrumento_idInstrumento` ASC) VISIBLE,
  CONSTRAINT `fk_Funcao_Instrumento1`
    FOREIGN KEY (`Instrumento_idInstrumento`)
    REFERENCES `escolademusica`.`Instrumento` (`idInstrumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Sinfonia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Sinfonia` (
  `idSinfonia` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `compositor` VARCHAR(45) NOT NULL,
  `dataCriacao` DATE NOT NULL,
  PRIMARY KEY (`idSinfonia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Apresentacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Apresentacao` (
  `data` DATE NOT NULL,
  `Funcao_idFuncao` INT NOT NULL,
  `Musico_Cpf` VARCHAR(45) NOT NULL,
  `Sinfonia_idSinfonia` INT NOT NULL,
  INDEX `fk_Apresentacao_Funcao1_idx` (`Funcao_idFuncao` ASC) VISIBLE,
  INDEX `fk_Apresentacao_Musico1_idx` (`Musico_Cpf` ASC) VISIBLE,
  UNIQUE INDEX `Musico_Cpf_UNIQUE` (`Musico_Cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Apresentacao_Funcao1`
    FOREIGN KEY (`Funcao_idFuncao`)
    REFERENCES `escolademusica`.`Funcao` (`idFuncao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Apresentacao_Musico1`
    FOREIGN KEY (`Musico_Cpf`)
    REFERENCES `escolademusica`.`Musico` (`Cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Apresentacao_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `escolademusica`.`Sinfonia` (`idSinfonia`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Constitui`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Constitui` (
  `Funcao_idFuncao` INT NOT NULL,
  `Musico_Cpf` VARCHAR(45) NOT NULL,
  `Orquestra_idOrquestra` INT NOT NULL,
  INDEX `fk_Constitui_Funcao1_idx` (`Funcao_idFuncao` ASC) VISIBLE,
  INDEX `fk_Constitui_Musico1_idx` (`Musico_Cpf` ASC) VISIBLE,
  UNIQUE INDEX `Musico_Cpf_UNIQUE` (`Musico_Cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Constitui_Funcao1`
    FOREIGN KEY (`Funcao_idFuncao`)
    REFERENCES `escolademusica`.`Funcao` (`idFuncao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Constitui_Musico1`
    FOREIGN KEY (`Musico_Cpf`)
    REFERENCES `escolademusica`.`Musico` (`Cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Constitui_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escolademusica`.`Orquestra` (`idOrquestra`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Execucao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Execucao` (
  `Orquestra_idOrquestra` INT NOT NULL,
  `Sinfonia_idSinfonia` INT NOT NULL,
  INDEX `fk_Execucao_Sinfonia1_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  CONSTRAINT `fk_Execucao_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escolademusica`.`Orquestra` (`idOrquestra`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Execucao_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `escolademusica`.`Sinfonia` (`idSinfonia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolademusica`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolademusica`.`Endereco` (
  `rua` VARCHAR(60) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `numero` INT NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `complemento` VARCHAR(160) NULL,
  `Musico_Cpf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Musico_Cpf`),
  CONSTRAINT `fk_Endereco_Musico1`
    FOREIGN KEY (`Musico_Cpf`)
    REFERENCES `escolademusica`.`Musico` (`Cpf`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Em endereço adicione uma coluna para o 'bairro' --
ALTER TABLE endereco ADD `bairro` VARCHAR(60) NOT NULL;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
