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
- Analytical querying for customer behavior and performance tracking

### **Power BI**
Used for:
- Interactive dashboard development
- KPI monitoring and segment-level insights
- Executive storytelling with drill-through exploration

---

## 💡 Key Business Insights

### 1) Customer Retention (Cohort Analysis)
- Tracks repurchase behavior across customer cohorts
- Surfaces churn-risk windows after first purchase
- Helps identify where loyalty programs can have highest impact

### 2) RFM Segmentation (Recency, Frequency, Monetary)
- Classifies customers by value and engagement
- Highlights VIP/high-value segments for targeted campaigns
- Supports segmentation-driven retention and upsell strategies

---

## 🧪 Methodology

### Data & Modeling Workflow
1. Ingest and structure Olist relational datasets in PostgreSQL  
2. Build analytical views/tables for customer and order-level metrics  
3. Define reusable business logic for retention and RFM scoring  

### SQL Analytics Layer
- SQL scripts are organized to support:
  - Customer lifecycle analysis
  - Cohort retention logic
  - Monetary and frequency profiling

### DAX & BI Layer
- DAX measures are used in Power BI for:
  - Dynamic KPI calculations
  - RFM score mapping
  - Retention and segment-based visuals

---

## 📊 Dashboard Screenshots

### Executive Overview
![Executive Overview](assets/screenshots/executive-overview.png)

*Executive overview dashboard.*

### Customer Intelligence & RFM Analysis
![Customer Intelligence & RFM Analysis](assets/screenshots/customer-intelligence-rfm.png)

*RFM segmentation dashboard.*

---

## 📁 Repository Structure

```text
Olist-Customer-Intelligence-RFM/
│
├── README.md
├── .gitignore
├── SQL/                         # SQL scripts (queries, views, transformations)
├── powerbi/                     # Power BI files (.pbix) and related assets
└── assets/
    └── screenshots/             # Dashboard image exports for documentation
```

---

## 🚀 Future Enhancements

- Add automated refresh pipeline documentation
- Add advanced customer lifetime value (CLV) modeling
- Add forecasting layer for order/revenue trends

---

## 🤝 Contributions

This is a portfolio project, but feedback and suggestions are welcome via Issues or Pull Requests.

---

## 📄 License

You can add a license (e.g., MIT) if you want others to reuse parts of this project.
