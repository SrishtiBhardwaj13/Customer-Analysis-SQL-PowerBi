--Rank customers based on total spending
SELECT c.FirstName || ' ' || c.LastName AS CustomerName, SUM(i.total) AS TotalSpent, RANK() OVER (ORDER BY SUM(i.total) DESC) AS Rank
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId;