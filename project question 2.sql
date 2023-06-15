WITH profit_cte as 
(SELECT o.customerNumber, 
		(sum(od.quantityOrdered * (od.priceEach - p.buyPrice)))
		as profit_per_customer
FROM products p
JOIN orderdetails od on p.productCode = od.productCode
JOIN orders o on od.orderNumber = o.orderNumber
GROUP by o.customerNumber)

---- top five vip customers
SELECT c.contactLastName, c.contactFirstName, c.city, c.country, pcte.profit_per_customer
FROM profit_cte pcte
JOIN customers c on pcte.customerNumber = c.customerNumber
ORDER by pcte.profit_per_customer DESC
LIMIT 5;

---- lowest five least-engaged customers

SELECT c.contactLastName, c.contactFirstName, c.city, c.country, pcte.profit_per_customer
FROM profit_cte pcte
JOIN customers c on pcte.customerNumber = c.customerNumber
ORDER by pcte.profit_per_customer
LIMIT 5;


