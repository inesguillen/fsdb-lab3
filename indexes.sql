DROP INDEX idx_posts_barcode;
DROP INDEX idx_posts_product;
DROP INDEX idx_posts_score;


-- 1st querie
CREATE INDEX idx_posts_barcode ON posts (barcode);
-- Hint 1
SELECT /*+ INDEX(posts idx_posts_barcode) */ * FROM Posts WHERE barcode = 'OII04455O419282';


-- 2nd querie
CREATE INDEX idx_posts_product ON posts (product);
-- Hint 2
SELECT /*+ INDEX(Posts idx_posts_product) */ * FROM Posts WHERE product = 'Compromiso';


-- 3rd querie
-- CREATE INDEX idx_posts_score ON posts (score); 
-- ISN'T OPTIMAL 


-- 4th querie
-- WE USE A HINT
SELECT /*+ FULL(posts) PARALLEL(posts, 2) */ * from posts;


-- 5th querie
