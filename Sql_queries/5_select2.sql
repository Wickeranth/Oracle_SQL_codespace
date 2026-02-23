--------Oracle AND operator-----------

--------Oracle AND to combine two Boolean expressions example-------

SELECT
      order_id,
      customer_id,
      status,
      order_date
FROM
      ADMIN.orders
WHERE
      status = 'Pending'
      AND customer_id = 2
ORDER BY
      order_date;

-------
SELECT
        order_id,
        customer_id,
        status,
        order_date
FROM
        ADMIN.orders
WHERE
        status = 'Shipped'
        AND salesman_id = 60
        AND EXTRACT(YEAR FROM order_date) = 2017
ORDER BY
        order_date;

---------------

SELECT
      order_id,
      customer_id,
      status,
      order_date
FROM
      ADMIN.orders
WHERE
      customer_id=44
     AND status IN ('Pending','Canceled');

                                                -------OR operator---------

SELECT
        order_id,
        customer_id,
        status,
        order_date
FROM
        ADMIN.orders
WHERE
        status = 'Pending'
        OR status = 'Canceled'
ORDER BY
        order_date DESC;
            
            ------------------

SELECT
        order_id,
        customer_id,
        status,
        salesman_id,
        order_date
FROM
        ADMIN.orders
WHERE
        salesman_id = 60
        OR salesman_id = 61
        OR salesman_id = 62
ORDER BY
        order_date DESC;

        ---------------

SELECT
        order_id,
        customer_id,
        status,
        salesman_id,
        order_date
FROM
        admin.orders
WHERE
        salesman_id IN(
        60,
        61,
        62
        )
ORDER BY
        order_date DESC;

        ---------------------

SELECT
        order_id,
        customer_id,
        status,
        salesman_id,
        order_date
FROM
        admin.orders
WHERE
(
status = 'Canceled'
OR status = 'Pending'
)
AND customer_id = 44
ORDER BY
order_date;

----------------------

SELECT
        order_id,
        customer_id,
        status,
        salesman_id,
        order_date
FROM
        admin.orders
WHERE

status = 'Canceled'
OR status = 'Pending'

AND customer_id = 44
ORDER BY
order_date;

                        ---------IN OPERATOR----------

SELECT
        employee_id,
        first_name,
        last_name
FROM
        ADMIN.employees
WHERE
        employee_id IN(
        SELECT
            DISTINCT salesman_id
    FROM
        ADMIN.orders
    WHERE
        status = 'Canceled'
        )
ORDER BY
first_Name;
-------------------------------
SELECT
customer_id,
status,
salesman_id
FROM
admin.orders
WHERE
salesman_id IN(
60,
61,
62
)
ORDER BY
customer_id;