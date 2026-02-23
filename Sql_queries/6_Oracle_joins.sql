-----------Oracle INNER JOIN example-----------

SELECT
*
FROM
admin.orders
INNER JOIN admin.order_items ON
order_items.order_id = orders.order_id
ORDER BY
order_date DESC; 

---------

SELECT
*
FROM
admin.orders
INNER JOIN admin.order_items USING(order_id)
ORDER BY
order_date DESC;

---------------

SELECT
name AS customer_name,
        order_id,
        order_date,
        item_id,
        quantity,
        unit_price
FROM
        ADMIN.orders
INNER JOIN admin.order_items USING(order_id)
INNER JOIN admin.customers USING (customer_id)
ORDER BY
order_date DESC,
order_id DESC,
item_id ASC;

---------------

SELECT
name AS customer_name,
        order_id,
        order_date,
        item_id,
        product_name,
        quantity,
        unit_price
FROM
admin.orders
INNER JOIN admin.order_items
USING(order_id)
INNER JOIN admin.customers
USING (customer_id)
INNER JOIN admin.products
USING (product_id)
ORDER BY
order_date DESC,
order_id DESC,
item_id ASC;

--------------

SELECT
name AS customer_name,
        order_id,
        order_date,
        item_id,
        product_name,
        quantity,
        unit_price
FROM
admin.orders
INNER JOIN admin.order_items
USING(order_id)
INNER JOIN admin.customers
USING (customer_id)
INNER JOIN admin.products
USING (product_id)
ORDER BY
customer_name ASC,
order_date DESC,
order_id DESC,
item_id ASC;

--------------------------left join------------------------

SELECT
                order_id,
status,
                first_name,
                last_name
FROM
                admin.orders
LEFT JOIN admin.employees ON employee_id = salesman_id
ORDER BY
                order_date DESC;

---------------

SELECT
                order_id,
                name AS customer_name,
                status,
                first_name,
                last_name
FROM
                admin.orders
LEFT JOIN admin.employees ON
                employee_id = salesman_id
LEFT JOIN admin.customers ON
                customers.customer_id = orders.customer_id
ORDER BY
                order_date DESC;

-----------------

SELECT
        name,
        order_id,
status,
        order_date
FROM
        admin.customers
LEFT JOIN admin.orders
        USING(customer_id)
ORDER BY
        name;

-------------------------

SELECT
        order_id,
        status,
        employee_id,
        last_name
FROM
        admin.orders
LEFT JOIN admin.employees ON
        employee_id = salesman_id
WHERE
        order_id = 58;

-----------------------------

SELECT
order_id,
status,
employee_id,
last_name
FROM
admin.orders
LEFT JOIN admin.employees ON
employee_id = salesman_id
AND order_id = 58;

----------------------
--same as above--

SELECT
*
FROM
admin.orders
LEFT JOIN admin.employees ON
employee_id = salesman_id
AND order_id = 58;

