SELECT product_name, supplier_name, quantity_in_stock
FROM products JOIN suppliers USING (supplier_id)
WHERE supplier_price < 200
GROUP BY retail_price
HAVING quantity_in_stock < 50




SELECT product_name
FROM products
WHERE product_id IN (SELECT product_id
                     FROM customer_orders
                     WHERE product_quantity =1);



SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT Employee_id
                      FROM supplier_orders
                      WHERE received_date
                      BETWEEN 2018-01-01 AND 2020-01-01);

