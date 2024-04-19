USE restaurant_db;
-- 1. VIEW MENU ITEMS
    SELECT * FROM menu_items;
	-- 2. FIND THE NUMBER OF ITEMS ON THE MENU
    select COUNT(*) FROM menu_items;
    -- 3. what are the least and most expensive items on the menu
    SELECT * FROM menu_items
    order by price;
    
     SELECT * FROM menu_items
    order by price desc;
    -- 4. How many italian dishes are on the menu?
    SELECT COUNT(*) from menu_items
    WHERE category = 'Italian';
    -- 5. what are the least and most expensive italian dishes on the menu?
    SELECT * from menu_items
    WHERE category = 'Italian'
    ORDER BY price;
    
    SELECT * from menu_items
    WHERE category = 'Italian'
    ORDER BY price DESC;
    -- 6. How many dishes are in each category?
    SELECT category, COUNT(menu_item_id) AS num_of_dishes
	FROM menu_items
	GROUP BY category;
    -- 7. What is the average dish price in each category?
	SELECT category, AVG(price) AS average_price
	FROM menu_items
	GROUP BY category;
    
    

	