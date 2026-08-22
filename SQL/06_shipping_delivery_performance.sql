SELECT 
    COALESCE(t.product_category_name_english, p.product_category_name, 'Uncategorized') AS category_english,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)))::NUMERIC, 2) AS avg_actual_delivery_days,
    ROUND(AVG(EXTRACT(DAY FROM (o.order_estimated_delivery_date - o.order_delivered_customer_date)))::NUMERIC, 2) AS avg_days_ahead_of_estimate,
    ROUND(AVG(r.review_score), 2) AS avg_review_score
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_products p ON oi.product_id = p.product_id
LEFT JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
LEFT JOIN olist_order_reviews r ON o.order_id = r.order_id
WHERE o.order_status = 'delivered' 
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY 1
HAVING COUNT(DISTINCT o.order_id) > 100
ORDER BY avg_actual_delivery_days DESC
LIMIT 15;