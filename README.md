
# SQL_Project: Analysis of Sales Records for Scale Model Cars

## Introduction
Welcome to my project report, where I will analyze data from a [sales records database](https://github.com/NIKJOJO/SQL_Project/blob/main/stores.db) for scale model cars. My main objective is to extract valuable insights to support decision-making within our company. 

To gain a visual understanding of the database structure, refer to the [schema image](https://github.com/NIKJOJO/SQL_Project/blob/main/scale%20model%20cars%20database%20schema.png).

## 1: Optimizing Product Orders
One crucial aspect of our business is determining which products to order more of and which ones to order less of. Through my analysis  ([Query1](https://github.com/NIKJOJO/Customer_and_Product_Analysis_Using_SQL/blob/main/project%20question%201.sql)), I have identified the top 10 products that we should consider ordering more of:

| Name                     | Type of Vehicle |
| ------------------------ | --------------- |
| 1968 Ford Mustang        | Classic Cars    |
| 1928 Mercedes-Benz SSK   | Vintage Cars    |
| 1997 BMW F650 ST         | Motorcycles     |
| F/A 18 Hornet 1/72       | Planes          |
| 2002 Yamaha YZR M1       | Motorcycles     |
| The Mayflower            | Ships           |
| 1960 BSA Gold Star DBD34 | Motorcycles     |
| 1928 Ford Phaeton Deluxe | Vintage Cars    |
| Pont Yacht               | Ships           |
| 1911 Ford Town Car       | Vintage Cars    |

The list above displays high-demand products that meet two criteria:   
  
  A) they are highly profitable  
  B) they are close to being out of stock.  

## 2: Targeted Marketing and Communication Strategies
Understanding customer behaviors and tailoring our marketing and communication strategies accordingly is crucial for success. I have identified a specific group of highly profitable customers [Query2](https://github.com/NIKJOJO/SQL_Project/blob/main/project%20question%202.sql), who should be our top priority for marketing efforts. Here are the top 5 VIP customers:

| LastName | FirstName | City       | Country   | Profit    |
|----------|-----------|------------|-----------|-----------|
| Freyre   | Diego     | Madrid     | Spain     | 326,519.66 |
| Nelson   | Susan     | San Rafael | USA       | 236,769.39 |
| Young    | Jeff      | NYC        | USA       |  72,370.09 |
| Ferguson | Peter     | Melbourne  | Australia |  70,311.07 |
| Labrune  | Janine    | Nantes     | France    |  60,875.30 |

 We can optimize our marketing and communication strategies for better returns by focusing on these valuable customers.

## 3: Customer Acquisition Budget
To effectively allocate resources for acquiring new customers, we need to understand the value each customer brings to our company. 

By calculating the Customer Lifetime Value (CLV) using [Query 3](https://github.com/NIKJOJO/SQL_Project/blob/main/project%20question%203.sql), I determined that the average customer generates a profit of **$39,039** during their lifetime with our store.

| Customer_Lifetime_Value |
|-------------------------|
|                39039.59 |

With this information, we can make informed decisions regarding our customer acquisition budget and set realistic goals for expanding our customer base.

## Conclusion
In conclusion, this project has provided valuable insights into our sales records database for scale model cars. By optimizing our product orders, targeting marketing efforts towards profitable customers, and understanding the customer lifetime value, we are better equipped to make data-driven decisions. This analysis will contribute to the overall success and growth of our company.
