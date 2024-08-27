
--1. List all the items ordered with their total quantities and total price.
SELECT 
       i.item_name, 
       SUM(oi.quantity) AS total_quantity, 
       SUM(oi.item_price) as total_price
FROM Items i
JOIN OrderItems oi ON i.item_id = oi.item_id
GROUP BY i.item_name;

--2. Calculate the total amount spent on each order and list the orders in descending order, with the highest amounts at the top.
SELECT o.order_id, 
       SUM(oi.quantity * oi.item_price) AS total_amount
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
GROUP BY o.order_id
ORDER BY total_amount DESC;


--3. List the most expensive item in each category.
SELECT item_category,
       MAX(item_price) AS max_price
FROM Items
GROUP BY item_category;


--4. Calculate the total cost of ingredients for each item, factoring in the size of the item.
SELECT i.item_id, 
       i.item_name, item_size,
       SUM(ing.ingredient_price * ii.quantity_required) AS total_ingredient_cost
FROM Items i
JOIN ItemIngredients ii ON i.item_id = ii.item_id
JOIN Ingredients ing ON ii.ingredient_id = ing.ingredient_id
GROUP BY i.item_id, i.item_name,item_size;


--5. List the top 5 items with the highest total sales amount.
SELECT i.item_name, 
       SUM(oi.quantity * oi.item_price) AS total_sales
FROM OrderItems oi
JOIN Items i ON oi.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_sales DESC
LIMIT 5;

--6. Show orders placed in the last 30 days along with the total quantity of items ordered
SELECT o.order_id, 
       COUNT(oi.order_item_id) AS total_items_ordered
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
WHERE o.placement_date >= NOW() - INTERVAL 30 DAY
GROUP BY o.order_id;


--7. Show items that have never been ordered.
SELECT i.item_id, 
       i.item_name
FROM Items i
LEFT JOIN OrderItems oi ON i.item_id = oi.item_id
WHERE oi.item_id IS NULL;


--8. List all ingredients that are used in more than 3 items.
SELECT ing.ingredient_id, 
       ing.ingredient_name, 
       COUNT(ii.item_id) AS num_items
FROM Ingredients ing
JOIN ItemIngredients ii ON ing.ingredient_id = ii.ingredient_id
GROUP BY ing.ingredient_id, ing.ingredient_name
HAVING COUNT(ii.item_id) > 3;


--9. Calculate the average price of items in each category, rounded to two decimal points.
SELECT item_category, 
       ROUND(AVG(item_price), 2) AS average_price
FROM Items
GROUP BY item_category;


--10. List items with inventory below a certain threshold (100)
SELECT i.item_id, 
       i.item_name,
       SUM(inv.quantity) AS total_inventory_quantity
FROM Items i
LEFT JOIN Inventory inv ON i.item_id = inv.item_id
GROUP BY i.item_id, i.item_name
HAVING total_inventory_quantity < 100; 