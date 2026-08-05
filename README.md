# ⚡ EV Charging Station Analytics — SQL, Python & Power BI

An end-to-end data analytics project analyzing EV charging station operations across 10 Indian cities. The project covers data cleaning and feature engineering in Python, business querying in MySQL, statistical testing, and a 3-page interactive Power BI dashboard delivering insights on revenue, energy consumption, and customer behavior.

---

## 📌 Project Objective

Develop an interactive Power BI dashboard to analyze EV charging station data and provide business insights into revenue, energy consumption, charging sessions, customer behavior, and operational performance — supporting data-driven decisions to improve efficiency and profitability.

---

## 🗂️ Dataset Overview

| Detail | Description |
|---|---|
| Records | 20,000 charging sessions |
| Stations | 500 unique stations |
| Cities | 10 (Kolkata, Pune, Hyderabad, Indore, Delhi, Jaipur, Chennai, Mumbai, Bhopal, Ahmedabad) |
| Vehicle Types | Car, Bus, Truck, Bike |
| Payment Methods | UPI, Card, Cash |
| Date Range | Jan 2024 – Dec 2025 |
| Columns | 21 (raw: 18, after feature engineering: 21) |

**Raw fields:** Station ID, City, Date, Vehicle Type, Charging Start/End Time, Energy Consumed (kWh), Cost (INR), Payment Method, Session Duration.

**Engineered fields:** Day, Month, Year, Day of Week, Weekend flag, Hour, Time Slot, Revenue Category, Cost per kWh, Session Hours.

---

## 🛠️ Tech Stack

- **Python** (Pandas, Matplotlib, Seaborn, SciPy) — data cleaning, feature engineering, EDA, statistical testing
- **MySQL** — business querying and aggregation
- **Power BI** — interactive dashboard and visualization
- **Jupyter Notebook** — analysis workflow (`EV.ipynb`)

---

## 🔄 Project Workflow

### 1. Data Cleaning (Python)
- Checked and confirmed no missing values across the dataset
- Identified and removed duplicate session records
- Converted `Date` and time columns to proper datetime types
- Validated session durations for negative/invalid values

### 2. Feature Engineering (Python)
Derived new columns to enable deeper time-based and categorical analysis:
- `Day`, `Month`, `Year`, `Day_of_Week`, `Weekend`
- `Hour` and `Time_Slot` (Morning / Afternoon / Evening / Night) from charging start time
- `Revenue_Category` (High / Medium / Low) using quantile-based binning
- `Session_Duration_Min` calculated from start and end timestamps

### 3. Exploratory Data Analysis (Python)
Visualized and answered key business questions:
- Which city generates the highest revenue and consumes the most energy?
- Which vehicle type contributes the most revenue?
- Which payment method is most preferred?
- What are the busiest charging hours and highest-demand time slots?
- Does longer charging duration correlate with higher revenue?

### 4. Statistical Analysis (Python)
- **Pearson correlation** between Energy Consumed, Cost, and Session Duration — checked for linear relationships between operational and revenue metrics
- **One-way ANOVA** on Cost (INR) across Vehicle Types (F-statistic = 1.57, p = 0.196) — tested whether revenue per session differs significantly by vehicle type

### 5. SQL Analysis (MySQL)
Business queries covering (see `ev_charging.sql`):
- Total revenue, total energy consumed, total sessions, average session duration
- Revenue by city and by vehicle type
- Energy consumption by vehicle type
- Payment method distribution
- Weekday vs. weekend revenue comparison
- Peak charging hours
- Revenue category breakdown

### 6. Power BI Dashboard
Built a 3-page interactive dashboard (`ev_charging.pbix`) featuring:
- KPI cards for total revenue, total energy, total sessions, and average session duration
- City-wise and vehicle-wise revenue breakdowns
- Peak hour and time-slot demand charts
- Payment method preference visualization
- Weekday vs. weekend usage comparison
- Slicers for City, Vehicle Type, Payment Method, and Date

---

## 💡 Business Insights

- Revenue is concentrated in a handful of high-performing cities, indicating priority markets for capacity expansion
- **Cars** contribute the highest share of charging revenue among all vehicle types
- Charging demand peaks during specific hours of the day, useful for load balancing and staffing
- **Digital payments (UPI)** are the most frequently used payment method
- Monthly revenue trends reveal seasonal variation in charging demand
- Customer charging behavior differs meaningfully between weekdays and weekends
- Statistical testing showed **no significant linear relationship** between session duration and cost, and **no statistically significant difference** in average revenue across vehicle types (p > 0.05) — revenue differences by vehicle type are more likely driven by volume of sessions than by per-session pricing

---

## 📁 Repository Structure

```
├── EV.ipynb                        # Python: cleaning, feature engineering, EDA, statistical tests
├── ev_charging.sql                 # MySQL: business analysis queries
├── ev_charging.pbix                # Power BI: 3-page interactive dashboard
├── EV_Charging__20k_Rows.csv       # Raw dataset
├── EV_Charging_Final.csv           # Cleaned & feature-engineered dataset
└── README.md
```

---

## 🚀 Future Scope

- Integrate real-time EV charging station data via live API feeds
- Add machine learning models to forecast demand and revenue
- Build station-level performance monitoring with automated alerts
- Develop predictive maintenance dashboards for charging infrastructure
- Connect to a live SQL Server/MySQL database for automatic dashboard refresh
- Incorporate weather, traffic, and holiday data to improve demand forecasting

---

## 👤 Author

**Roshan Panwar (Roshi)**
MSc Data Science & Statistics | Data Analyst
[GitHub](https://github.com/roshanpwar01-spec) • [LinkedIn](https://linkedin.com/in/roshanpanwar-195048388)
