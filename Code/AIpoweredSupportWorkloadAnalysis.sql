SELECT 
	e.EmployeeId,
	e.FirstName,
	e.LastName,
	count(c.CustomerId) as NumberOfCustomers
FROM 
	Employee as e
INNER JOIN 
	Customer as c
ON
	e.EmployeeId = c.SupportRepId
GROUP BY
	e.EmployeeId, e.FirstName, e.LastName
ORDER BY
	NumberOfCustomers DESC