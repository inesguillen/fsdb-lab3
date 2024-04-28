-- Hint to use an index for barcode in 'Posts'
SELECT /*+ INDEX(posts idx_posts_barcode) */ 
  * 
  FROM Posts 
  WHERE barcode = 'OII04455O419282';

-- Hint to use specific indexes for join operations
SELECT /*+ INDEX(orders_clients idx_orders_clients) INDEX(client_lines idx_client_lines) */
  (quantity * price) AS total, 
  bill_town || '/' || bill_country AS place
  FROM Orders_Clients 
  JOIN Client_Lines USING (orderdate, username, town, country)
  WHERE username = 'chamorro';
