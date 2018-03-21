CREATE TABLE IF NOT EXISTS `AuthorsBooks` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  PRIMARY KEY (`authorId`,`bookId`)
);
INSERT INTO `AuthorsBooks` SELECT `Authors`.`authorId`, `Books`.`bookId` FROM `Authors` INNER JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId`;
ALTER TABLE `Books` DROP COLUMN `Books`.`authorId`;
SELECT GROUP_CONCAT(`name` SEPARATOR ',') as `Authors`, ANY_VALUE(`AuthorsBooks`.`bookId`) as `bookId`, ANY_VALUE(`title`) as `title`, ANY_VALUE(year) as year from AuthorsBooks INNER JOIN Books on Books.bookId = AuthorsBooks.bookId INNER JOIN Authors on Authors.authorID = `AuthorsBooks`.`authorId` GROUP BY `title`;
ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8;
