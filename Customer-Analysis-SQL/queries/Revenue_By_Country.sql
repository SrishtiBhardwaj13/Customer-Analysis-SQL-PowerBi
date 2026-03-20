--Which market generates most revenue?
SELECT BillingCountry, SUM(Total) AS Revenue
FROM invoices
GROUP BY BillingCountry 
ORDER BY Revenue DESC;