# E-Commerce Customer Intelligence System

**An end-to-end data analytics project using PostgreSQL, SQL, Python, and Power BI.**

Analyze e-commerce sales, customer purchasing behavior, product performance, geographic trends, and customer value through data analysis and interactive dashboards.

## Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Project Objectives](#project-objectives)
- [Dataset](#dataset)
- [Technology Stack](#technology-stack)
- [Project Workflow](#project-workflow)
- [SQL Analysis](#sql-analysis)
- [Python Exploratory Data Analysis](#python-exploratory-data-analysis)
- [Power BI Dashboard](#power-bi-dashboard)
- [Key Findings](#key-findings)
- [Business Applications](#business-applications)
- [Project Structure](#project-structure)
- [How to Explore the Project](#how-to-explore-the-project)
- [Limitations](#limitations)
- [Future Improvements](#future-improvements)
- [Author](#author)

## Project Overview

The **E-Commerce Customer Intelligence System** is a data analytics project developed to transform raw e-commerce transactional data into meaningful business insights.

The project uses the Brazilian E-Commerce Public Dataset by Olist. PostgreSQL is used for database management and SQL-based business analysis, Python is used for exploratory data analysis (EDA), and Power BI is used to build interactive dashboards.

The analysis focuses on sales performance, customer purchasing behavior, product and seller performance, regional trends, and customer segmentation using Recency, Frequency, and Monetary (RFM) analysis.

This project demonstrates an end-to-end analytics workflow, from relational data modeling and querying to exploratory analysis and business intelligence reporting.

## Business Problem

E-commerce businesses generate substantial amounts of transactional data, but raw records do not automatically explain business performance.

Businesses need to understand:

- How sales and revenue change over time.
- Which product categories and sellers contribute the most revenue.
- How frequently customers purchase and how many return for additional orders.
- Which geographic regions generate the highest sales.
- How customer spending and purchasing patterns vary.
- Which customer groups may benefit from targeted retention strategies.

Without structured analysis, identifying these patterns and communicating them to decision-makers can be difficult.

This project addresses these analytical needs by organizing transactional data, investigating business metrics, and presenting results through interactive dashboards.

## Project Objectives

- Analyze sales performance and monthly revenue trends.
- Examine order statuses and delivered-order performance.
- Investigate customer purchasing frequency and repeat-customer behavior.
- Identify leading product categories and sellers by item revenue.
- Compare customer distribution and revenue across Brazilian states.
- Evaluate customer recency, purchase frequency, and monetary value using RFM analysis.
- Develop interactive Power BI dashboards to communicate analytical results.
- Apply SQL, Python, data modeling, and data visualization in a practical business scenario.

## Dataset

**Dataset:** Brazilian E-Commerce Public Dataset by Olist

**Source:** [Olist Brazilian E-Commerce Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains historical Brazilian e-commerce transactions and associated information about customers, orders, products, sellers, payments, reviews, and geographic locations.

The project uses the following nine tables:

| Table | Description |
|---|---|
| `olist_customers` | Customer identifiers, ZIP code prefixes, cities, and states |
| `olist_orders` | Order status and order lifecycle timestamps |
| `olist_order_items` | Order line items, product and seller identifiers, prices, and freight |
| `olist_order_payments` | Payment types, payment values, and installment information |
| `olist_order_reviews` | Review scores and review-related information |
| `olist_products` | Product attributes and product category information |
| `olist_sellers` | Seller identifiers and geographic attributes |
| `olist_geolocation` | Geographic coordinates associated with postal code prefixes |
| `product_category_translation` | Translation of product category names into English |

The original dataset is historical, not a live or real-time data source.

The raw dataset is available from its original publisher through Kaggle. Refer to the original dataset page for its files, documentation, and usage terms.

## Technology Stack

| Technology | Purpose |
|---|---|
| PostgreSQL | Relational database storage and management |
| SQL | Joins, aggregations, business analysis, and customer metrics |
| Python | Exploratory data analysis and data quality checks |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| SQLAlchemy | Database connectivity from Python |
| psycopg2 | PostgreSQL connectivity for Python |
| Power BI Desktop | Interactive dashboards and business intelligence reporting |
| DAX | Measures and calculated fields in Power BI |
| Git and GitHub | Version control and project portfolio publishing |

## Project Workflow

### 1. Database Setup and Data Modeling

- Created a PostgreSQL database named `ecommerce_customer_intelligence`.
- Loaded the nine Olist dataset tables.
- Configured primary keys and validated relevant foreign-key relationships.
- Reviewed column data types and addressed data type issues encountered during analysis.
- Kept the geolocation table separate from the main relationship model because postal code prefixes can have multiple coordinate records.

### 2. SQL Business Analysis

Developed SQL queries to investigate sales performance, monthly revenue trends, customer order frequency, product category performance, geographic sales, and RFM metrics.

The queries use joins, aggregations, filtering, date operations, and customer-level calculations to answer business questions.

### 3. Python Exploratory Data Analysis

Connected Python to PostgreSQL using SQLAlchemy and a PostgreSQL driver.

Performed data inspection, data quality checks, summary analysis, customer order-frequency analysis, category and state revenue analysis, and customer-level RFM analysis.

Exported selected analytical results to CSV files and generated visualizations for reporting.

### 4. Power BI Reporting

Connected Power BI Desktop to PostgreSQL, configured relationships between relevant tables, and developed DAX measures for key business metrics.

Built five dashboard pages to explore sales, customers, products, geography, and RFM customer segmentation.

## SQL Analysis

The SQL component focuses on the following areas:

### Sales Overview

- Analyze order statuses and delivered orders.
- Calculate item-price revenue and freight totals.
- Examine overall sales performance.

### Monthly Revenue Analysis

- Analyze revenue by purchase month.
- Identify changes in monthly sales performance.
- Explore revenue trends over the available historical period.

### Customer Analysis

- Calculate unique customer counts.
- Examine order frequency per customer.
- Identify repeat customers.
- Calculate average orders per customer and repeat-customer rate.

### Product and Category Analysis

- Compare product category revenue.
- Identify top-performing sellers.
- Examine product prices and freight costs.

### Geographic Analysis

- Compare revenue across Brazilian states.
- Analyze customer distribution by state.
- Explore geographic differences in review scores and sales performance.

### RFM Analysis

RFM stands for:

- **Recency:** How recently a customer purchased.
- **Frequency:** How many orders a customer placed.
- **Monetary:** How much a customer spent.

The analysis uses customer-level metrics to investigate purchasing behavior and assign rule-based customer segments.

## Python Exploratory Data Analysis

The notebook `01_exploratory_data_analysis.ipynb` documents the Python analysis workflow.

The EDA includes:

- PostgreSQL connectivity and table inspection.
- Data quality and missing-value checks.
- Sales summary calculations.
- Monthly revenue analysis.
- Customer order-frequency analysis.
- Product category revenue analysis.
- State-level revenue analysis.
- Customer-level RFM calculations.
- Export of selected results to CSV.
- Generation of charts for exploratory analysis.

### Exported Results

The project includes analytical output files such as:

- `sales_summary.csv`
- `monthly_revenue.csv`
- `customer_order_frequency.csv`
- `category_revenue_top10.csv`
- `state_revenue.csv`
- `customer_rfm.csv`

These files provide supporting results for analysis and reporting. Their values should be interpreted using the definitions and filters applied in the corresponding SQL queries and Python calculations.

## Power BI Dashboard

The Power BI report contains five pages designed to explore different aspects of e-commerce performance.

### 1. Executive Overview

Provides a high-level summary of business performance through KPI cards, monthly revenue trends, leading product categories, and order-status analysis.

Key metrics and visuals include:

- Total item revenue.
- Delivered orders.
- Average order item revenue.
- Average review score.
- Monthly item revenue trend.
- Top product categories by revenue.
- Order status distribution.

### 2. Customer Intelligence | Retention & Behaviour

Explores customer purchasing patterns and repeat-customer behavior.

Key metrics and visuals include:

- Total customers.
- Repeat customers.
- Average orders per customer.
- Repeat-customer rate.
- Customer order-frequency distribution.
- One-time versus repeat customers.
- Customers by state.
- Monthly customer order activity.

### 3. Product & Sales Performance

Examines product categories, seller performance, and item-level sales characteristics.

Key metrics and visuals include:

- Total item revenue.
- Total freight.
- Delivered order-item rows.
- Average item price.
- Top product categories by revenue.
- Monthly item revenue trend.
- Top sellers by item revenue.
- Average item price versus average freight per item.

### 4. Geographic Analysis | Regional Sales Performance

Explores geographic differences in sales and customer distribution across Brazilian states.

Key metrics and visuals include:

- Item revenue by customer state.
- Top states by item revenue.
- Customer distribution by state.
- State-level revenue and review score comparison.
- Delivered orders and customer-related KPIs.

Geographic visualizations depend on correct mapping of state identifiers.

### 5. Customer Value | RFM Segmentation

Investigates customer value and purchasing behavior through RFM metrics.

Key visuals include:

- Customers by RFM segment.
- Customer recency versus purchase frequency.
- Customer spending distribution.
- Customer-level RFM profile.

The RFM analysis helps distinguish customer groups based on purchase recency, order frequency, and spending behavior.

### Dashboard Screenshots

Place your screenshots in `powerbi/screenshots/` and use these paths below. The images will appear on GitHub when the files exist at these exact locations.

#### Executive Overview

<img width="3075" height="1763" alt="Ecommerce_Customer_Intelligence_page-0001" src="https://github.com/user-attachments/assets/e9fdbeeb-6126-4ca9-933a-beb662e1854a" />

#### Customer Intelligence

<img width="3075" height="1763" alt="Ecommerce_Customer_Intelligence_page-0002" src="https://github.com/user-attachments/assets/69d0da97-a5a6-4e8e-bd8a-ca972486cf26" />

#### Product & Sales Performance

<img width="3075" height="1763" alt="Ecommerce_Customer_Intelligence_page-0003" src="https://github.com/user-attachments/assets/d63b1de7-46b0-401d-8df2-ec9453ca3534" />

#### Geographic Analysis

<img width="3075" height="1763" alt="Ecommerce_Customer_Intelligence_page-0004" src="https://github.com/user-attachments/assets/33f7e2ae-bec1-45d5-ba99-1cc3fb593a75" />

#### RFM Customer Segmentation

<img width="3075" height="1763" alt="Ecommerce_Customer_Intelligence_page-0005" src="https://github.com/user-attachments/assets/a18216b8-bf6a-4cea-aad0-85a15b0d7b35" />

## Key Findings

This section should contain verified findings from the SQL analysis, Python outputs, and Power BI report.

Use it to answer questions such as:

- Which product category generated the highest item revenue?
- Which state contributed the most item revenue?
- What percentage of unique customers placed multiple orders?
- How did monthly revenue vary across the analyzed period?
- How were customers distributed across the RFM segments?

**Add three to five findings with actual values before publishing.** Include the relevant time period, metric definition, and customer or order denominator where appropriate.

Do not add estimated numbers or unsupported business claims.

## Business Applications

The analysis can support several business activities:

- **Sales monitoring:** Track historical revenue trends and order performance.
- **Customer retention:** Identify repeat-purchase patterns and customer groups that may need additional attention.
- **Product analysis:** Compare category and seller performance.
- **Regional analysis:** Identify geographic differences in revenue and customer distribution.
- **Customer value analysis:** Use RFM segments to support retention planning and customer engagement strategies.

These are potential applications of the analysis, not evidence that a real business implemented the recommendations or achieved measurable improvements.

## Project Structure

The repository is organized as follows:

```text
E-Commerce-Customer-Intelligence-System/
│
├── README.md
├── .gitignore
├── requirements.txt
├── LICENSE
│
├── powerbi/
│   ├── Ecommerce_Customer_Intelligence.pbix
│   └── screenshots/
│       ├── 01-executive-overview.png
│       ├── 02-customer-intelligence.png
│       ├── 03-product-sales-performance.png
│       ├── 04-geographic-analysis.png
│       └── 05-rfm-segmentation.png
│
├── sql/
│   ├── business_analysis/
│   └── additional_queries/
│
├── python/
│   └── 01_exploratory_data_analysis.ipynb
│
├── outputs/
│   ├── sales_summary.csv
│   ├── monthly_revenue.csv
│   ├── customer_order_frequency.csv
│   ├── category_revenue_top10.csv
│   ├── state_revenue.csv
│   └── customer_rfm.csv
│
├── visualizations/
│
└── docs/
    └── SQL Business Analysis - Results.docx
```

This is the intended structure. Update the names in this section if the actual repository uses different filenames or folders.

## How to Explore the Project

### Review the Power BI Dashboard

Open `powerbi/Ecommerce_Customer_Intelligence.pbix` in Power BI Desktop to explore the five report pages.

### Review the SQL Analysis

Browse the `.sql` files in `sql/` to understand the business questions, joins, aggregations, and calculations.

### Review the Python EDA

Open `python/01_exploratory_data_analysis.ipynb` in Jupyter Notebook or JupyterLab to inspect the exploratory analysis.

### Review the Outputs

Open the CSV files in `CSV Outputs/` and the chart images in `Visualizations Outputs/` to examine the exported results.

## Reproducing the Analysis

To reproduce the project locally:

1. Obtain the dataset from the original [Olist Kaggle dataset page](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).
2. Install PostgreSQL and create a local database.
3. Load the required tables into PostgreSQL.
4. Configure the database connection locally.
5. Install the Python dependencies listed in `requirements.txt`.
6. Run the SQL scripts against the configured database.
7. Open and run the Python notebook in a compatible environment.
8. Open the Power BI report and configure the appropriate data connection if required.

The analysis requires the source data and a correctly configured local database. A successful reproduction may require adapting database connection settings and file paths to the local environment.

**Security note:** Never commit database passwords, API keys, or private connection strings to the repository.

## Limitations

- The dataset represents historical transactions rather than live e-commerce activity.
- Item-price revenue and freight-inclusive revenue are separate measures and must not be treated as interchangeable.
- Customer metrics depend on the customer identifier and order-status filters used.
- RFM segments depend on the scoring method and business rules selected for the analysis.
- The exported Python RFM data represents a snapshot and does not automatically respond to Power BI slicers.
- Geographic results depend on the accuracy of the state identifiers and mapping configuration.
- Dashboard results depend on the data model, DAX measures, and filter relationships.

## Future Improvements

Potential improvements include:

- Add automated data quality validation.
- Develop customer cohort and retention analysis.
- Improve geographic mapping and regional comparisons.
- Refine RFM segments using validated business rules.
- Automate data refresh and analytical exports.
- Add more detailed metric definitions and a data dictionary.
- Improve report performance and reproducibility.

## Author

**Srushti Dewalekar**

MCA Student | Aspiring Data Analyst

Interested in SQL, Python, data analytics, business intelligence, and data-driven decision-making.

**GitHub:** [Add your GitHub profile URL]

---

*This project was developed for learning and portfolio purposes using a publicly available e-commerce dataset. All findings should be interpreted in the context of the source data, analytical methods, and metric definitions.*
