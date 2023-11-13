SELECT 
	c.CustomerId,
	c.FirstName,
	c.LastName,
	sum(i.Total) as TotalPurchaseAmount
FROM
	Customer as c
INNER JOIN
	Invoice as i
ON
	c.CustomerId = i.CustomerId
GROUP BY
	c.CustomerId
ORDER BY
	TotalPurchaseAmount DESC
