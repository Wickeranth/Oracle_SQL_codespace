---------------------------ORACLE AVG------------------

SELECT
    ROUND (AVG(standard_cost), 2) avg_std_cost
FROM
    ADMIN.products;

SELECT
    ROUND (AVG(standard_cost),2) avg_std_cost,
    ROUND (AVG(list_price), 2) avg_list_price
FROM
    ADMIN.products;

---------------------------------------

SELECT
    ROUND (
    AVG(DISTINCT list_price),
    2
    ) avg_list_price
FROM
    ADMIN.products;

--------------------

SELECT
    category_id,
    ROUND(
    AVG(list_price),
    2
    ) avg_list_price
FROM
    ADMIN.products
GROUP BY
    category_id;

-----------------------

SELECT
category_name,
ROUND(AVG(list_price), 2) avg_list_price
FROM
ADMIN.products
INNER JOIN ADMIN.product_categories
USING (category_id)
GROUP BY
category_name
ORDER BY
category_name;

--------------------------

SELECT
    category_name,
    ROUND(
    AVG(list_price),
    2
    ) avg_list_price
FROM
    ADMIN.products
INNER JOIN ADMIN.product_categories
USING(category_id)
GROUP BY
    category_name
HAVING
    AVG(list_price)> 1000
ORDER BY
    category_name;

--------------------------
SELECT
ROUND(AVG(avg_list_price), 2) avg_of_avg
FROM
(
SELECT
AVG(list_price) avg_list_price
FROM
ADMIN.products
GROUP BY
category_id
);

-------------------------------

CREATE TABLE tests (
employee_id NUMBER PRIMARY KEY,
score NUMBER(3,1)
);
INSERT INTO tests(employee_id, score) VALUES(1, 95);
INSERT INTO tests(employee_id, score) VALUES(2, 78);
INSERT INTO tests(employee_id, score) VALUES(3, 68);
INSERT INTO tests(employee_id, score) VALUES(4, null);
SELECT * FROM ADMIN.tests;


SELECT
AVG(score)
FROM
tests;

SELECT
AVG(NVL(score, 0))
FROM
tests;

------------------------ORACLE COUNT------------------

CREATE TABLE items (val number);
INSERT INTO items (val) VALUES (1);
INSERT INTO items (val) VALUES(1);
INSERT INTO items (val) VALUES(2);
INSERT INTO items (val) VALUES(3);
INSERT INTO items (val) VALUES(NULL);
INSERT INTO items (val) VALUES(4);
INSERT INTO items (val) VALUES(NULL);
SELECT FROM items;

SELECT
COUNT(*)
FROM
items;

SELECT
COUNT(DISTINCT val)
FROM
items;


SELECT
    COUNT(*)
FROM
    ADMIN.products;

SELECT
    COUNT(*)
FROM
ADMIN.products
WHERE
    category_id = 1;

SELECT
    category_id,
    COUNT(*)
FROM
    ADMIN.products
GROUP BY
    category_id
ORDER BY
    category_id;

SELECT
    category_name,
    COUNT(product_id)
FROM
    ADMIN.product_categories
LEFT JOIN ADMIN.products
USING(category_id)
GROUP BY
    category_name
ORDER BY
    category_name;

---------------------------

SELECT
    category_name,
    COUNT(product_id)
FROM
    ADMIN.product_categories
LEFT JOIN ADMIN.products
USING(category_id)
GROUP BY
    category_name
HAVING
    COUNT(product_id) > 50
ORDER BY
    category_name;

-----------------------------
SELECT
    last_name,
    COUNT(last_name)
FROM
    ADMIN.contacts
GROUP BY
    last_name
HAVING
    COUNT(last_name )> 1
ORDER BY
    last_name;

-----------------------------ORACLE MAX----------------------------

SELECT
    MAX(list_price) 
FROM
    ADMIN.products;
--------------------------------------

SELECT
    product_id,
    product_name,
    list_price
FROM
    ADMIN.products
WHERE
list_price = (
SELECT
    MAX(list_price)
FROM
    ADMIN.products
);

SELECT
    category_id,
    MAX(list_price)
FROM
    ADMIN.products
GROUP BY
    category_id
ORDER BY
    category_id;

----------------------
SELECT
    category_name,
MAX(list_price)
FROM
     ADMIN.products
INNER JOIN ADMIN.product_categories
USING(category_id)
GROUP BY
    category_name
ORDER BY
    category_name;

----------------------
SELECT
category_name,
MAX( list_price )
FROM
     ADMIN.products
INNER JOIN ADMIN.product_categories
USING(category_id)
GROUP BY
    category_name
HAVING
    MAX( list_price ) BETWEEN 3000 AND 6000
ORDER BY
    category_name;

-----------------------------ORACLE MIN--------------------------------

SELECT
    MIN(list_price)
FROM
    ADMIN.products;

SELECT
    product_id,
    product_name,
    list_price
FROM
    ADMIN.products
WHERE
    list_price = (
SELECT
    MIN(list_price)
FROM
    ADMIN.products
    );
-----------------------------------

SELECT
    category_id,
    MIN(list_price)
FROM
    ADMIN.products
GROUP BY
    category_id
ORDER BY
    category_id;
------------------------------------

SELECT
    category_name,
    MIN(list_price)
FROM    ADMIN.products  
INNER JOIN ADMIN.product_categories
USING(category_id)
GROUP BY    category_name
ORDER BY    category_name;  
------------------------------------

SELECT
    category_name,
    MIN(list_price) 
FROM    ADMIN.products  
INNER JOIN ADMIN.product_categories
USING(category_id)
GROUP BY    category_name
HAVING    MIN(list_price) < 500
ORDER BY    category_name;  

------------------------------ORACLE SUM--------------------------------

SELECT
    SUM( QUANTITY )
FROM    ADMIN.ORDER_ITEMS;
------------------------------

SELECT
    product_id,
    SUM(quantity)
FROM
    ADMIN.order_items
GROUP BY
    product_id
ORDER BY
    SUM(quantity)
    DESC;
------------------------------

SELECT
    order_id,
    SUM(quantity * unit_price) order_total
FROM
    ADMIN.order_items
GROUP BY
    order_id
ORDER BY
    order_total;
-------------------------------

SELECT
order_id,
    SUM(quantity * unit_price) order_total
FROM
    ADMIN.order_items
GROUP BY
order_id
HAVING
    SUM(quantity * unit_price) BETWEEN 1000 AND 20000
ORDER BY
order_total DESC;


-------------------------------

SELECT
product_name,
    SUM(quantity * unit_price) sales
FROM
    ADMIN.order_items
INNER JOIN ADMIN.products
USING(product_id)
GROUP BY
    product_name
ORDER BY
    sales DESC;


















