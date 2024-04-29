-- Hint 1
SELECT /*+ INDEX(posts idx_posts_barcode) */ * FROM Posts WHERE barcode = 'OII04455O419282';

-- Hint 2
SELECT /*+ INDEX(Posts idx_posts_product) */ * FROM Posts WHERE product = 'Compromiso';



