SELECT 
	g.Name AS Genre, 
	avg(t.Milliseconds) AS AverageDuration
FROM 
	Genre as g
INNER JOIN 
	Track as t
ON 
	g.GenreId = t.GenreId
Group by g.Name
order by AverageDuration DESC
LIMIT 5