-- question-1
select email from customers group by email order by email;

-- question-2
select id from orders where customer_id = (select id from customers where fname = 'Elizabeth' and lname = 'Crocker');

-- question-3
select sum(num_cupcakes) from orders where processed = 'f';

-- question-4
select cupcakes.name, sum(orders.num_cupcakes) from orders full outer join cupcakes on cupcakes.id = orders.cupcake_id group by cupcakes.id order by name;

-- question-5
select customers.email, sum(num_cupcakes) as total from orders left join customers on customers.id = orders.customer_id group by customers.email order by total desc;

--question-6
SELECT DISTINCT c.fname, c.lname, c.email FROM customers c JOIN orders o ON c.id = o.customer_id WHERE o.cupcake_id = 5 AND o.processed = TRUE;