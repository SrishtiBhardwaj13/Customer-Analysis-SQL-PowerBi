--Top 5 selling products
SELECT t.Name AS TrackName, COUNT(ii.InvoiceLineId) AS TimesSold
FROM invoice_items ii
JOIN tracks t ON ii.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY TimesSold DESC
LIMIT 5;