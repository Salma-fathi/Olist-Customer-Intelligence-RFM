SELECT 
    DATE_TRUNC('month', o.order_purchase_timestamp)::DATE AS purchase_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(p.payment_value), 2) AS total_revenue
FROM olist_orders o
JOIN olist_order_payments p ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY 1;