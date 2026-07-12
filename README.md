# 🚖 Odisha Yatri — Ride-Booking Data Analytics Project

A complete end-to-end data analytics project built on ride-booking platform data, covering the full pipeline from **raw data cleaning (Excel)** → **data querying & transformation (PostgreSQL/SQL)** → **interactive dashboarding (Power BI + DAX)**.

This project was developed as a final-year **MCA capstone project** under the Data Analytics training program at the **Institute of Professional Studies and Research (IPSAR), Cuttack**.

---

## 📌 Project Overview

Odisha Yatri simulates a real-world ride-booking platform (similar to Ola/Uber) and analyzes booking, revenue, cancellation, and rating data to uncover actionable business insights. The goal was to take messy raw data through a full analytics lifecycle — cleaning, structuring, querying, and visualizing — the same way a data analyst would in industry.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Initial data cleaning, formatting, and exploratory checks |
| **PostgreSQL (SQL)** | Data storage, querying, transformation, and business-question analysis |
| **Power BI** | Interactive dashboard design and data visualization |
| **DAX** | Custom measures and calculated KPIs powering the dashboard |

## 🔄 Project Workflow

1. **Data Cleaning — Excel**-
   ## DataSet Used
   - <a href="https://github.com/biswalra/Final-Year-Data-analytics-project-/blob/main/odisha_yatri%20dataset.csv">Booking Dataset</a>
     
   Cleaned the raw ride-booking dataset: handled missing values, fixed inconsistent formatting, removed duplicates, and standardized fields (dates, payment methods, status labels) before loading into the database.

2. **Data Querying & Analysis — PostgreSQL (SQL)**
   
   Loaded the cleaned data into PostgreSQL as the `odisha_yatri` table and wrote SQL queries to answer key business questions — booking trends, cancellations by customer/driver, revenue by payment method, top customers, and rating patterns.

5. **Dashboard Development — Power BI**
   Connected Power BI directly to the PostgreSQL table and built a 5-page interactive report with DAX measures for KPIs like cancellation rate and revenue aggregation.

## 📊 Dashboard Pages

The `.pbix` report contains **5 interactive pages**:

### 1. Overall
- Total Bookings (KPI cards)
- Ride Volume Over Time (line chart)
- Booking Status Breakdown (pie chart)
- Date slicer for time-based filtering

### 2. Vehicle Type
- KPI cards breaking down bookings and revenue (`Sum of booking_value`) by vehicle category
- Date slicer for filtering by time period

### 3. Revenue
- Revenue by Payment Method (column charts)
- Top 5 Customers (table) ranked by booking value
- Date slicer

### 4. Cancellation
- Total Bookings, Succeeded Bookings, Canceled Bookings, and Canceled Rate (KPI cards)
- Cancelled Rides by Customers (pie chart)
- Cancelled Rides by Drivers (pie chart)
- Date slicer

### 5. Ratings
- Customer Rating and Driver Rating KPI cards
- Rating distribution summaries
- Date slicer

## 🗃️ Data Model

The report connects to a single PostgreSQL table: **`public.odisha_yatri`**

Key fields used across the dashboard:

| Column | Description |

| `booking_id` | Unique identifier for each ride booking |
| `customer_id` | Unique identifier for each customer |
| `date` | Date of the booking |
| `booking_status` | Status of the ride (completed, cancelled, etc.) |
| `booking_value` | Fare/value of the booking |
| `payment_method` | Mode of payment used |
| `ride_distance` | Distance covered during the ride |
| `customer_rating` | Rating given by the customer |
| `driver_ratings` | Rating given to the driver |
| `canceled_rides_by_customer` | Flag/count for customer-initiated cancellations |
| `canceled_rides_by_driver` | Flag/count for driver-initiated cancellations |
| `canceledpercentage` | Calculated cancellation rate measure |

## 📈 Key Insights

- Identified peak booking periods and ride volume trends over time
- Quantified cancellation rates split by customer-initiated vs. driver-initiated cancellations
- Analyzed revenue distribution across different payment methods
- Surfaced the top 5 highest-value customers
- Compared customer and driver rating patterns across the platform

## 📁 Repository Structure


├── data/                          # Raw and cleaned datasets
├── sql/                           # SQL scripts (table creation, cleaning, analysis queries)
├── excel/                         # Excel workbooks used for initial cleaning
├── finalyear_power_bi_project.pbix   # Power BI dashboard file
└── README.md                      # Project documentation


## 🎓 Academic Context

This project was completed as part of the final-year MCA capstone requirement, demonstrating practical, end-to-end data analytics skills — from raw data handling to business-ready dashboards — under the Data Analytics training program at **IPSAR, Cuttack**.

## ▶️ How to View the Dashboard

1. Download `finalyear_power_bi_project.pbix`
2. Open it in **Power BI Desktop** (free download from Microsoft)
3. Use the page tabs at the bottom to navigate between Overall, Vehicle Type, Revenue, Cancellation, and Ratings views
4. Use the Date slicer on each page to filter by time period

---

Built with Excel, PostgreSQL, and Power BI as part of an MCA Data Analytics capstone project.*
