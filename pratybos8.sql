CREATE TABLE IF NOT EXISTS `AuthorsBooks` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  PRIMARY KEY (`authorId`,`bookId`)
);
INSERT INTO `AuthorsBooks` SELECT `Authors`.`authorId`, `Books`.`bookId` FROM `Authors` INNER JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId`;
ALTER TABLE `Books` DROP COLUMN `Books`.`authorId`;
ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8;
