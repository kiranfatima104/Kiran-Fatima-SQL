-- 1. Combine menu_items and order_details table into a single table
	SELECT * FROM menu_items;
    SELECT * FROM order_details;
    SELECT * 	
    FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;
-- 2. What were the least and most ordered items? What categories were they in?
SELECT * 	
    FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;
SELECT item_name, category, COUNT(order_details_id) AS num_of_items_purchased	
    FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
    GROUP BY item_name, category
    ORDER BY num_of_items_purchased DESC;
    
    -- 3. What were the 5 orders that spent most money?
    
    SELECT order_id, SUM(price) as total_spend
    FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
    GROUP BY order_id
    ORDER BY total_spend DESC
    LIMIT 5;
    
    -- 4. View details of the highest spend order. What insights do you gather from the information?
		SELECT category, COUNT(item_id) AS num_items
		FROM order_details od LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id
		WHERE order_id = 440
        GROUP BY category;
        
	-- 5. 	View the details of top five highest spend orders. What insights do you gather from the information?
    
	# order_id, total_spend
'440', '192.15'
'2075', '191.05'
'1957', '190.10'
'330', '189.70'
'2675', '185.10'
SELECT order_id, category, COUNT(item_id) AS num_items
		FROM order_details od LEFT JOIN menu_items mi
		ON od.item_id = mi.menu_item_id
		WHERE order_id IN (440, 2075, 1957, 330, 2675)
        GROUP BY order_id, category;