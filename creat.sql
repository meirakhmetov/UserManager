CREATE DATABASE IF NOT EXISTS test;

USE test;


CREATE TABLE `test`.`User` (
  `id` INT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `age` INT NOT NULL,
  `isAdmin` BIT(64) NOT NULL,
  `createdDate` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('1', 'Aida', '28', '1', '2016-08-07 18:24:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('2', 'Meiir', '28', '1', '2016-08-07 18:26:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('3', 'Nazgul', '25', '0', '2016-08-07 18:28:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('4', 'Timur', '20', '0', '2016-08-07 18:30:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('5', 'Nursultan', '21', '1', '2016-08-07 18:32:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('6', 'Gazis', '19', '0', '2016-08-07 18:33:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('7', 'Asem', '30', '0', '2016-08-07 18:35:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('8', 'Marat', '29', '0', '2016-08-07 18:36:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('9', 'Aset', '17', '1', '2016-08-07 18:38:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('10', 'Toktar', '31', '0', '2016-08-07 18:39:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('11', 'Serik', '32', '0', '2016-08-07 18:40:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('12', 'Zhandos', '33', '0', '2016-08-07 18:41:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('13', 'Bek', '19', '0', '2016-08-07 18:42:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('14', 'Bekmaganbet', '19', '0', '2016-08-07 18:43:54');
INSERT INTO `test`.`User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES ('15', 'Sara', '20', '1', '2016-08-07 18:45:54');