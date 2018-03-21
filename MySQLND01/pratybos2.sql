INSERT INTO `Authors` SET `Authors`.`name` = "New Author1";
INSERT INTO `Authors` SET `Authors`.`name` = "New Author2";
INSERT INTO `Books` SET `Books`.`authorId` = 8, `Books`.`title` = "New Book Title1", `Books`.`year` = 2010;
INSERT INTO `Books` SET `Books`.`authorId` = 8, `Books`.`title` = "New Book Title2", `Books`.`year` = 2011;
INSERT INTO `Books` SET `Books`.`authorId` = 9, `Books`.`title` = "New Book Title3", `Books`.`year` = 2012;
UPDATE `Books` SET `Books`.`authorId` = 9 WHERE `Books`.`title` = "New Book Title2";
