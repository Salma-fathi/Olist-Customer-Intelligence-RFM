# Olist Customer Intelligence: RFM & Retention Analytics

Unlocking customer purchasing behavior and retention strategies through advanced **PostgreSQL analytics** and interactive **Power BI visualizations**.

---

## 📌 Project Overview

This project is an end-to-end e-commerce analytics case study built on the Brazilian Olist dataset.
The objective is to transform raw transactional data into actionable business intelligence that supports:

- Customer retention improvement
- Revenue optimization
- Segment-driven marketing strategy

The repository demonstrates how data engineering, SQL analytics, and BI storytelling can be combined into an executive-ready decision support solution.

---

## 🛠️ Tech Stack

### **PostgreSQL**

Used for:

- Data modeling and relational structure design
- Data cleaning and transformation
- RFM scoring and cohort retention logic
- Analytical querying for customer behavior and performance tracking

### **Power BI**

Used for:

- Interactive dashboard development across two pages (Executive Overview, Customer Intelligence & RFM Analysis)
- KPI monitoring: Total Customers, Avg Revenue Per Customer, Repeat Customer Rate
- A 5×5 R_Score × F_Score matrix heatmap for segment-level insights
- Executive storytelling with a Key Business Insights & Actions panel

---

## 💡 Key Business Insights

### 1) Customer Retention (Cohort Analysis)

- Repeat customer rate: **3.12%**, below typical e-commerce benchmarks (~20–30%)
- Tracks repurchase behavior across monthly acquisition cohorts
- Surfaces churn-risk windows after first purchase
- Action: post-purchase email automation and loyalty incentives to drive second orders

### 2) RFM Segmentation (Recency, Frequency, Monetary)

Customers are scored 1–5 on each of Recency, Frequency, and Monetary, then classified into three segments:

| Segment | Customers | Revenue Share |
|---|---|---|
| **Regular Customers** | 28K | 42% |
| **Low-Value / One-time** | 65K | 33% |
| **High-Value Single** | 4K | 25% |

- Highlights high-value segments for targeted campaigns
- Supports segmentation-driven retention and upsell strategies

### 3) RFM Correlation (R × F Matrix)

The R_Score × F_Score matrix shows a diagonal clustering pattern — customers with high recency scores tend to also have high frequency scores, with few customers in mismatched combinations. This means churn risk is concentrated rather than evenly spread, making early recency decline a useful leading indicator before frequency drops too.

### 4) Geographic Concentration

- São Paulo (SP) accounts for **>40%** of total customers
- Action: prioritize local marketing and regional fulfillment in SP — validated against SP's revenue share (not customer share alone) before scaling investment

---

## 🧪 Methodology

### Data & Modeling Workflow

1. Ingest and structure Olist relational datasets in PostgreSQL
2. Build analytical views/tables for customer and order-level metrics
3. Define reusable business logic for retention and RFM scoring
4. Import scored/segmented tables into Power BI and layer on DAX measures and formatting

### SQL Analytics Layer

SQL scripts are organized to support:

- Customer lifecycle analysis
- RFM scoring and segmentation
- Cohort retention logic
- Monetary and frequency profiling
- Geographic / state-level revenue distribution

### DAX & BI Layer

DAX measures and calculated columns are used in Power BI for:

- Dynamic KPI calculations (Total Customers, Avg Revenue Per Customer, Repeat Customer Rate)
- A `State_Full_Name` calculated column, mapping 2-letter state codes to full names to fix map geocoding ambiguity
- Retention and segment-based visuals, including conditional-formatting on the R×F matrix heatmap

---

## 📊 Dashboard Screenshots

![Executive Overview](assets/screenshots/Executive%20Overview.PNG)
*Executive overview dashboard.*

![Customer Intelligence & RFM Analysis](assets/screenshots/Customer%20Intelligence%20%26%20RFM%20Analysis.PNG)
*RFM segmentation dashboard.*

---

## 📁 Repository Structure

```text
Olist-Customer-Intelligence-RFM/
│
├── README.md
├── .gitignore
├── LICENSE
├── SQL/
├── powerbi/                       # Power BI files (.pbix) and DAX documentation
└── assets/
    └── screenshots/               # Dashboard image exports for documentation
```

---

## 🚀 Setup

1. Create a PostgreSQL database and run `SQL/01_schema.sql`
2. Load the raw Olist CSVs into the corresponding tables
3. Run `SQL/02_rfm_analysis.sql` to build the RFM-scored customer table
4. (Optional) Run the remaining scripts in `SQL/` to validate cohort retention, the R×F matrix, and geographic distribution directly against the database
5. Open the Power BI `.pbix` file in `powerbi/` and connect it to your PostgreSQL instance

---

## 🚀 Future Enhancements

- Add automated refresh pipeline documentation
- Add advanced customer lifetime value (CLV) modeling
- Add forecasting layer for order/revenue trends
- Align segment colors consistently across all dashboard visuals

---

## 📄 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.

Copyright (c) 2026 Salma-fathi
