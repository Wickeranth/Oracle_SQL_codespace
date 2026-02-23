SELECT *
FROM ADMIN.CUSTOMERS

SELECT customer_id,
       name,
       address,
       website,
       credit_limit
FROM ADMIN.CUSTOMERS

SELECT customer_id,
name,
credit_limit
FROM ADMIN.CUSTOMERS

SELECT * FROM dual;

SELECT 
UPPER('THIS IS A STRING')   --THIS IS A DUAL TABLE
FROM
dual;

SELECT
(10+5)/2
FROM
dual

SELECT 
UPPER('THIS IS A STRING')  AS UPPERNAME
FROM
dual;

--ORACLE ORDER BY CLAUSE
SELECT 
      name,
      address,
      credit_limit
FROM
    ADMIN.customers
ORDER BY
name ASC;

SELECT
     name,
     address,
     credit_limit
FROM
ADMIN.customers
ORDER BY
       name DESC;

SELECT
first_name,
last_name
FROM
ADMIN.contacts
ORDER BY
first_name,
last_name DESC;

SELECT
name,
credit_limit
FROM
ADMIN.customers
ORDER BY
2 DESC,
1;

SELECT
country_id,
city,
state
FROM
ADMIN.locations
ORDER BY
city,
state;

SELECT
country_id,
city,
state
FROM
ADMIN.locations
ORDER BY
state ASC NULLS FIRST;

SELECT
country_id,
city,
state
FROM
ADMIN.locations
ORDER BY
state
ASC NULLS LAST;

SELECT
customer_id,
name
FROM
ADMIN.customers
ORDER BY
UPPER(name);

SELECT
order_id,
customer_id,
status,
order_date
FROM
ADMIN.orders
ORDER BY
order_date DESC;


--Oracle SELECT distinct statement
SELECT
DISTINCT state
FROM
ADMIN.locations
ORDER BY
state NULLS FIRST;

SELECT DISTINCT
first_name
FROM
ADMIN.contacts
ORDER BY
first_name;

SELECT
DISTINCT product_id,
quantity
FROM
ADMIN.ORDER_ITEMS
ORDER BY
product_id;

SELECT
DISTINCT state
FROM
ADMIN.locations
ORDER BY
state NULLS FIRST;

---------------Oracle Where Cause---------------

SELECT
product_name,
description,
list_price,
category_id
FROM
ADMIN.products
WHERE
product_name = 'Kingston';

SELECT
product_name,
list_price
FROM
ADMIN.products
WHERE
list_price > 500;

SELECT
product_name,
list_price
FROM
ADMIN.products
WHERE
list_price > 500
AND category_id =4;

SELECT
product_name,
list_price
FROM
ADMIN.products
WHERE
list_price BETWEEN 650 AND 680
ORDER BY
list_price;

SELECT
product_name,
category_id
FROM
ADMIN.products
WHERE
category_id IN(1, 4)
ORDER BY
product_name;

SELECT
product_name,
list_price
FROM
ADMIN.products
WHERE
product_name LIKE 'Asus%'
ORDER BY
list_price;

---------------------------

SELECT
first_name AS forename,
last_name AS surname
FROM
ADMIN.employees;

SELECT
first_name forename,
last_name surname
FROM
ADMIN.employees;

-------Using Oracle column alias to make column heading more meaningful---------

SELECT
first_name "Forename",
last_name "Surname"
FROM
ADMIN.employees;

SELECT
first_name "First Name",
last_name "Family Name"
FROM
ADMIn.employees;



SELECT
first_name ||'  '|| last_name
FROM
admin.employees;

SELECT
product_name,
list_price standard_cost AS gross_profit
FROM
ADMIN.products
ORDER BY
gross_profit DESC;