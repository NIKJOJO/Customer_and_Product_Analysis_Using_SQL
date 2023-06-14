WITH
low_stock_cte as 
(
		SELECT productCode, 
		round(sum(od.quantityordered) * 1.0 / (
										SELECT quantityInStock
										FROM products p
										WHERE p.productCode = od.productCode), 2) as stockratio
		FROM orderdetails od
		GROUP BY productCode
		ORDER by stockratio DESC
		limit 10
),
high_performance_cte as
(
		SELECT productCode, sum(quantityOrdered * priceEach) product_performance
		FROM orderdetails
		GROUP by productCode
		ORDER by product_performance DESC
		
)

SELECT low_stock_cte.productCode, productName, productLine, low_stock_cte.stockratio, high_performance_cte.product_performance
FROM low_stock_cte
JOIN high_performance_cte on low_stock_cte.productCode = high_performance_cte.productCode
JOIN products on high_performance_cte.productCode = products.productCode
ORDER by high_performance_cte.product_performance DESC