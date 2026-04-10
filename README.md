# Superstore Executive BI Dashboard

An end-to-end business intelligence project analyzing 4 years of U.S. retail sales data (2014–2017). Built a Python data pipeline, performed exploratory data analysis, and delivered executive-facing dashboards in both Tableau and Power BI — identifying critical profitability gaps and actionable business recommendations.

---

## Live Dashboards

| Tool | Link |
|---|---|
| Tableau Public | [View Tableau Dashboard](https://public.tableau.com/views/SuperstoreExecutiveBIDashboard/ExecutiveDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) |
| Power BI | [View Power BI Dashboard](https://app.powerbi.com/groups/me/reports/239b4f96-20f2-475b-a4c2-cab229dd69b3/ed1db75129bebd87692f?experience=power-bi) |

---

## Key Findings

- **Revenue grew 51% from 2014–2017** ($484K to $733K) but overall profit margin plateaued at ~13%, signaling a scaling efficiency problem
- **Furniture category is a profit detractor** — $742K in revenue but only 2.5% margin ($18K profit), dragged down by Tables (-8.6% margin) and Bookcases (-2.8% margin)
- **18.7% of all orders are loss-making** — heavily correlated with discount rates above 20%, where loss rate jumps to over 50%
- **West region leads in both revenue and profit** ($725K revenue, $108K profit) while Central underperforms relative to its revenue share
- **Technology is the highest-value category** — $836K revenue at 17.4% margin, nearly 7x the margin of Furniture

---

## Business Recommendations

1. **Cap discounts at 20%** — orders with discounts above 20% have a loss rate exceeding 50%. Implementing a discount ceiling would meaningfully reduce the 1,871 loss-making orders
2. **Audit the Furniture category** — Tables specifically generate -$17K in total profit despite being a top-5 revenue sub-category. Pricing strategy or supplier costs need immediate review
3. **Invest in the West region and Technology** — highest margin combination in the dataset. Reallocating marketing budget toward this segment would improve overall profitability without requiring revenue growth

---

## Project Structure

```
Exec-BI-Dashboard/
│
├── data/
│   └── superstore.csv                         # Raw dataset (Kaggle Superstore)
│
├── notebooks/
│   └── 01_data_exploration.ipynb              # Full pipeline: cleaning, EDA, feature engineering
│
├── outputs/
│   ├── superstore_clean.csv                   # Cleaned dataset exported for Tableau & Power BI
│   ├── monthly_summary.csv                    # Aggregated monthly KPIs by category/region/segment
│   ├── state_summary.csv                      # State-level revenue, profit, and margin
│   ├── subcategory_summary.csv                # Sub-category profitability and discount analysis
│   ├── Superstore_Executive_BI_Dashboard.pbix # Power BI workbook
│   ├── 01_revenue_profit_trend.png
│   ├── 02_category_segment_region.png
│   ├── 03_subcategory_profit.png
│   └── 04_discount_impact.png
│
└── README.md
```

---

## Dashboard Views

| Chart | Description |
|---|---|
| Revenue & Profit Trend | Monthly revenue and profit lines across 2014–2017 |
| Profit by Sub-Category | Horizontal bar chart showing profit and margin % per sub-category, colored red/green |
| Revenue & Profit by State | Filled U.S. map colored by profit with state-level tooltips |
| Annual Revenue Growth | Year-over-year combo chart with revenue bars and YoY growth % line |
| KPI Cards | 5 dynamic cards — Total Revenue, Total Profit, Margin %, Total Orders, Avg Days to Ship |

---

## Data Pipeline

**Dataset:** Superstore Sales Dataset — 9,994 orders, 21 columns, 2014–2017

**Cleaning steps:**
- Converted `Order Date` and `Ship Date` from string to datetime
- Verified zero null values across all 21 columns
- Cast `Postal Code` to string for geographic compatibility

**Engineered features:**
- `Days to Ship` — fulfillment speed per order
- `Profit Margin %` — row-level and aggregated margin calculation
- `Order Year` / `Order Month` / `Year-Month` — time series components
- `Discount Band` — categorical grouping of discount levels
- `Is Loss` — boolean flag for loss-making orders

**DAX Measures (Power BI):**
- `Total Revenue` — SUM of Sales formatted as currency
- `Total Profit` — SUM of Profit formatted as currency
- `Profit Margin %` — DIVIDE(SUM(Profit), SUM(Sales)) formatted as percentage
- `Total Orders` — DISTINCTCOUNT of Order ID
- `Avg Days to Ship` — AVERAGE of Days to Ship
- `YoY Revenue Growth %` — year-over-year sales growth using CALCULATE and FILTER

---

## Tech Stack

| Tool | Purpose |
|---|---|
| Python | Data cleaning and feature engineering |
| Pandas | Data transformation and aggregation |
| Matplotlib / Seaborn | Exploratory visualizations |
| Jupyter Notebook | Analysis documentation |
| Tableau Public | Executive dashboard (published) |
| Power BI Desktop | Executive dashboard with DAX measures (published) |
| SQL (aggregations) | KPI computation logic |
| Git | Version control |

---

## Executive KPIs

| Metric | Value |
|---|---|
| Total Revenue | $2,297,201 |
| Total Profit | $286,397 |
| Overall Margin | 12.5% |
| Total Orders | 5,009 |
| Total Customers | 793 |
| Avg Order Value | $459 |
| Avg Days to Ship | 4.0 days |
| Loss-Making Orders | 1,871 (18.7%) |

---

## Dataset Source

[Superstore Dataset — Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

---

## Author

**Marcus Rodriguez**
[LinkedIn](https://linkedin.com/in/marcus-rodriguez-78345335a) | [GitHub](https://github.com/imamink)