WITH cohort_items AS (
    SELECT 
        c.customer_unique_id,
        MIN(DATE_TRUNC('month', o.order_purchase_timestamp)) OVER (PARTITION BY c.customer_unique_id) AS cohort_month,
        DATE_TRUNC('month', o.order_purchase_timestamp) AS order_month
    FROM olist_orders o
    JOIN olist_customers c ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
)
SELECT 
    cohort_month::DATE,
    order_month::DATE,
    COUNT(DISTINCT customer_unique_id) AS total_customers,
    (EXTRACT(YEAR FROM order_month) - EXTRACT(YEAR FROM cohort_month)) * 12 +
    (EXTRACT(MONTH FROM order_month) - EXTRACT(MONTH FROM cohort_month)) AS month_number
FROM cohort_items
GROUP BY 1, 2
ORDER BY 1, 2;