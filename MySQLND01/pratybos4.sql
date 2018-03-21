SELECT `Authors`.*, count(`Books`.`authorId`) as `BooksCount` FROM `Authors` INNER JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `Authors`.`authorId`;
SELECT `Authors`.*, count(`Books`.`authorId`) as `BooksCount` FROM `Authors` LEFT JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `Authors`.`authorId`;
DELETE from `Authors` WHERE `Authors`.`authorId` NOT IN ( SELECT `Books`.`authorId` from `Books` WHERE `Books`.`authorId` IS NOT NULL );
