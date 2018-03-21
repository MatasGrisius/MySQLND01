SELECT `Books`.* FROM `Books`;
SELECT `Books`.`title` FROM `Books` ORDER BY `Books`.`title`;
SELECT `Books`.`authorId`, count(`Books`.`authorId`) as `count` FROM `Books` WHERE `Books`.`authorId` is not NULL GROUP BY `Books`.`authorId`;

