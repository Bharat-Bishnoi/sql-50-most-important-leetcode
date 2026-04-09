-- Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

-- Find the names of the customer that are either:

-- referred by any customer with id != 2.
-- not referred by any customer.
-- Return the result table in any order.


-- here we are selecting the name of customers from the Customer table where either the referee_id is not equal to 2 or the referee_id is null which means that the customer is not referred by any other customer.

select 
    name 
from  
    customer 
where 
    referee_id is null or referee_id !=2;