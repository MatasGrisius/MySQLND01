SELECT `Authors`.`authorId`, `Authors`.`name` FROM `Authors` UNION SELECT `Books`.`bookId`, `Books`.`year` FROM `Books`;
