DROP INDEX idx_posts_barcode;
DROP INDEX idx_posts_product;
DROP INDEX idx_posts_score;


-- 1st querie
CREATE INDEX idx_posts_barcode ON posts (barcode);

-- 2nd querie
CREATE INDEX idx_posts_product ON posts (product);

-- 3rd querie
CREATE INDEX idx_posts_score ON posts (score);

-- 4th querie
-- CREATE INDEX idx_posts_primary_key ON posts (username, postdate);

-- 5th querie
CREATE INDEX idx_orders_clients_composite ON orders_clients (orderdate, username, town, country);

CREATE INDEX idx_client_lines_composite ON client_lines (orderdate, username, town, country, barcode);

------------------------
CREATE INDEX idx_references_primary_key ON References (barcode);
