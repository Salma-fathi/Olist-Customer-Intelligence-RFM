SELECT 
    COALESCE(t.product_category_name_english, p.product_category_name, 'Uncategorized') AS category_english,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    ROUND(SUM(oi.price), 2) AS total_sales,
    ROUND(AVG(r.review_score), 2) AS avg_review_rating
FROM olist_order_items oi
JOIN olist_products p ON oi.product_id = p.product_id
LEFT JOIN product_category_name_translation t 
    ON p.product_category_name = t.product_category_name
LEFT JOIN olist_order_reviews r 
    ON oi.order_id = r.order_id
GROUP BY 1
ORDER BY total_sales DESC
LIMIT 15;