create table `News` (
	`newsId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`text` varchar(200) NOT NULL,
	`date` date
);

create table `Comments` (
	`commentId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`text` varchar(200) NOT NULL,
	`date` date,
	`newsId` int NOT NULL
);

SELECT News.newsId, News.text, News.date, c.commentId, c.text, c.date 
FROM News 
INNER JOIN (
	SELECT a.newsId, a.date, a.text, a.commentId 
	FROM Comments a 
	INNER JOIN (     
		SELECT newsId, MAX(date) date     
		FROM Comments     
		GROUP BY newsId 
	) b ON a.newsId = b.newsId AND a.date = b.date
) c 
ON News.newsId = c.newsId 
LIMIT 10;

