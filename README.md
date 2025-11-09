# 🚘Electric Vehicle (EV) Sales Analysis & Forecasting


The Electric Vehicle (EV) Sales Analysis & Forecasting project explores India’s EV adoption trends from 2014 to 2024, combining BigQuery for data analytics and Power BI for visualization.
This end-to-end data project demonstrates expertise in SQL-based data analysis, time-series forecasting using BigQuery ML (ARIMA+), and interactive dashboard design.
This repository presents an in-depth **data analysis and visualization** of Electric Vehicle (EV) sales trends across India using Microsoft Excel, SQL, Python and  Power BI.


------------------------------------------------------------------------

⚙️ Tech Stack

Google BigQuery → Data storage, cleaning, and analysis using SQL

BigQuery ML (ARIMA_PLUS) → Time series forecasting for future EV sales prediction

Power BI → Interactive dashboard for visualization and storytelling

Pyhton → For eda and visualization

Excel / CSV → Initial dataset preparation and transformation



------------------------------------------------------------------------


🔹 Key Features:
✅ Total EV Sales Trends: Year-over-year and month-over-month change

✅ State-wise EV Performance: Compare EV adoption across Indian states

✅ Vehicle Category Breakdown: 2W, 3W, 4W, Buses, Others

✅ Dynamic Filtering: Use slicers to filter by Year, Month, State.

✅ KPI Cards: Total Sales, Average Sales

------------------------------------------------------------------------


📌 Dashboard Components:
Section	Description
🔹 KPI Cards	Highlight key performance indicators like Total Sales, Average Sales.
📈 Trend Charts	Year-wise and month-wise sales volume (bar/line charts)
🗺️ Geo Analysis	State-wise sales with ranking and contribution
🚗 Vehicle Type Pie	Distribution of sales by 2W, 3W, 4W, Bus, Others
📅 Time Series Filtering and Interactive slicers for Year, Month, and State.
📊 YOY / MOM Change	Dedicated visual section with % growth/dip over time

------------------------------------------------------------------------
📊 Dashboard Overview using Power BI


![DashBoards](https://github.com/user-attachments/assets/eca3b9c3-b446-4447-a38a-d61f5572a712)




------------------------------------------------------------------------
Dashboard using Excel


![Dashboard excel](https://github.com/user-attachments/assets/f7cc0949-4581-4cb3-b3ab-ea9242bce803)




------------------------------------------------------------------------

🗓️ Year-on-Year EV Sales (2014–2024)
- EV sales have grown from **2.4K in 2014** to **1.5M in 2023**.
- Peak growth observed in: 
  - **2021 → 2022**: +209% YoY growth
  - **2020 → 2021**: +165% YoY growth
- **2024** saw a drop (as of current data): -90.61%
![yoy](https://github.com/user-attachments/assets/02965465-d6cf-45bf-b127-40feb6fe9963)

<img width="1799" height="607" alt="Screenshot 2025-08-20 024700" src="https://github.com/user-attachments/assets/4e0ccc94-9435-4173-b89f-58ce1f3e5e40" />


------------------------------------------------------------------------


📆 Month-on-Month (MoM) Analysis
- **Highest sales months**: November, December, and January
- Noticeable **drop in February** followed by recovery in March
![mom](https://github.com/user-attachments/assets/83bce2dd-b2ae-43b9-bdb2-def5b9dbe37d)


------------------------------------------------------------------------


📍 State-wise Performance
- **Top Performing States**:
  - 🥇 Uttar Pradesh: ~730K units
  - 🥈 Maharashtra: ~400K units
  - 🥉 Karnataka: ~320K units
- Lower adoption in northeastern and union territory regions
- ![state wise ev](https://github.com/user-attachments/assets/1ee491b5-9016-4a1e-850f-34e8b9a9aab3)



EV State wise Sale correlation
![EV corr](https://github.com/user-attachments/assets/4c5fc55d-389d-4bed-a9bb-eebe8ce31a11)


Top 5 State KDE Plot
![EV kde plot](https://github.com/user-attachments/assets/1b9e2f69-9ea0-4ac4-8c26-0350fb75bd75)


------------------------------------------------------------------------



🚗 EV Sales by Vehicle Type
- **2-Wheelers**: 50.3% of total sales
- **3-Wheelers**: 45.1%
- **4-Wheelers and Buses**: Small but growing segment
![vtype wise ev](https://github.com/user-attachments/assets/2fc64426-4e3d-4a14-b058-f7c67040663b)


------------------------------------------------------------------------


📅 Year-wise EV Sales Trend
EV adoption has grown significantly from 2,392 units in 2014 to over 1.5 million units in 2023

Fastest growth period: 2020–2022, with YoY gains of 165% and 209%

2024 shows a decline (-90.6%) due to possible data incompleteness
![Year wise ev](https://github.com/user-attachments/assets/d60567fb-fc61-463f-b0e8-34ddd14f1b8d)


------------------------------------------------------------------------


🗓️ Month-wise EV Sales (Seasonal Trend)
November, December, and January recorded the highest sales

Seasonal peaks align with festive quarters and government scheme launches

February often drops sharply after January peak
![month wise ev](https://github.com/user-attachments/assets/756167f0-4ec3-4565-8328-f816c281529e)


------------------------------------------------------------------------


🕓 Quarter-wise EV Sales Distribution
Q4 (Oct–Dec) leads with 30.7% of total sales

Q1 and Q3 are closely matched (~24–25%), while Q2 is the lowest

Quarter	Share of Sales
Q4	30.66%
Q1	24.75%
Q3	24.43%
Q2	20.17%
![quarter wise ev](https://github.com/user-attachments/assets/1effc85f-28b6-44ec-8bec-2da948386185)


------------------------------------------------------------------------


🚘 EV Sales by Vehicle Category
2-Wheelers: 🥇 50.3% of all EVs sold — most dominant

3-Wheelers: 🥈 45.1% — strong in last-mile and shared mobility

4-Wheelers: 🥉 4.2% — still emerging

Buses & Others: less than 1%
![vcat wise ev](https://github.com/user-attachments/assets/d6bf89ec-bed0-4157-a2b4-6a2be37e6895)


------------------------------------------------------------------------



🏷️ EV Sales by Vehicle Class
Top 3 classes:

M-CYCLE/SCOOTER

E-RICKSHAW (Passenger)

MOTOR CAR

Others like Construction Equipment and Institution Buses have negligible volumes
![vclass wise ev](https://github.com/user-attachments/assets/07919cc9-e5c6-46e3-82d5-dbf00c3976ab)


------------------------------------------------------------------------



📊 Year vs Vehicle Category vs Sales
2023 had the highest sales across all categories

2W and 3W consistently dominated across all years

4W sales only started picking up after 2018
![year vcat ev](https://github.com/user-attachments/assets/1e605308-c12f-44b2-9e85-9185313365d9)


------------------------------------------------------------------------


🗺️ State vs Vehicle Category vs Sales
Uttar Pradesh leads in 2W and 3W sales

Maharashtra and Karnataka are strong in 4W adoption

Delhi shows consistent performance across categories, especially 3W
![state vcat ev](https://github.com/user-attachments/assets/17f5f55d-9024-4c9b-9593-628999a2036a)



------------------------------------------------------------------------

## 🧪 Statistical Testing

Chi-Square Test → State and EV category are dependent (different states prefer different EV types).

A/B Testing → Sales trend changed after 2020 → Growth in EV adoption became much stronger.

Hypothesis Testing →  Sales are not equal across all states.


------------------------------------------------------------------------


## 🤖 Machine Learning

Model: Decision Tree Classifier

Target: Vehicle Category

Features: Year, State and Sales Quantity

Evaluation: Accuracy, Classification Report, Confusion Matrix

✅ Results: Model predicts EV category with reasonable accuracy.


------------------------------------------------------------------------


🧠 Insights and Summary of Key Trends:
🚀 EV market exploded post-2020 due to policy support and infrastructure.

⚡ "EV sales peaked in 2023 with over 1.5M units sold, a 48.8% increase over 2022. Uttar Pradesh led state-wise adoption with over 730K units."

🛵 2-Wheelers dominate personal ownership, 3-Wheelers dominate commercial.

🌐 Certain states (e.g., UP, MH, KA, DL) are driving nationwide adoption.

🧭 Future growth likely in 4W & bus segments as subsidies and infrastructure expand.

📌 All insights are backed by Power BI dashboard visuals created from 96,000+ sales records between 2014 and 2024.


------------------------------------------------------------------------



## 📁 Files in this Repository

| File | Description |
|------|-------------|


| `ev.csv` |  Raw EV sales dataset |

| `Electrical Vehicle Sales Analysis.pdf` | Final presentation |

| `ev_bigquery.sql`| SQL scripts of EV Sales Analysis and forecasting |

| `ev_query.sql`| SQL scripts used to preprocess, querying and summarize data |

| `EV.ipynb`| Python scripts used to preprocess or summarize data | 

| `ev.pbix`| Power BI used to visualize and summarize data |

| `ev.xlsx`| Excel used to preprocess, summarize and visualize  data |

| `README.md`| Readme file summary of the data |

| `ev.pdf` | Full Power BI dashboard export with all visualizations |


-----------------------------------------------------------------------



## 🚀 Technologies Used

- 📊 **Power BI Desktop**  
  Used for building interactive dashboards, visualizations, KPIs, and dynamic slicers to analyze EV sales trends.

- 📁 **Microsoft Excel**  
  Utilized for raw data cleaning, pivoting, and basic calculations like YoY and MoM changes before importing into Power BI.

- 🧠 **DAX / Power Query**  
  Enabled advanced calculations through custom measures, calculated columns, and efficient data modeling.

- 🐍 **Python (Pandas, Matplotlib)**  
  Used for exploratory data analysis (EDA), trend analysis, and generating additional statistical summaries.

- 🧮 **SQL (Structured Query Language)**  
  Applied for querying large EV datasets, joining state-level data, filtering by vehicle categories, and preparing structured outputs before visualization.




-----------------------------------------------------------------------


  
## 📈 Metrics Tracked

- Total EV Sales (national & state-wise)
- YoY Growth (%)
- MoM Growth (%)
- Sales by:
  - Month
  - Quarter
  - Vehicle Category (2W, 3W, 4W, Bus, Others)
  - Vehicle Class (Scooter, E-Rickshaw, etc.) 



-----------------------------------------------------------------------------



## 📌 Business Insights & Recommendations

### High Growth States
- **Insight:** Uttar Pradesh and Maharashtra lead in EV sales volume.
- **Action:** States like Uttar Pradesh and Maharashtra show high EV sales and growth potential. To capitalize, companies should increase local dealership presence, service hubs, and after-sales support to boost accessibility and trust—especially in Tier-2 and Tier-3 cities.

### 3-Wheeler Demand
- **Insight:** 3-wheelers have grown 31% YoY, primarily driven by last-mile delivery and commercial fleets.
- **Action:** 3-wheelers are growing rapidly due to demand from logistics, delivery, and ride-share businesses. Partnering with companies like Zomato, Flipkart, or regional courier services can drive bulk sales. Offering leasing or battery-swapping services enhances adoption.

### Lagging States
- **Insight:** States like Bihar and Rajasthan underperform despite potential market size.
- **Action:** States like Bihar and Rajasthan underperform despite population size. The cause may be low awareness, infrastructure gaps, or unclear subsidy policies. Localized marketing, EV demo events, and education on cost savings can drive demand.

### Manufacturer Strategy
- **Insight:** Brand X leads in 2W category but faces price competition.
- **Action:** If one brand dominates (e.g., 2W), they must defend share with better EMI plans, warranty upgrades, or pricing bundles. Competitive financing helps deter customer shift toward rising competitors in lower-margin markets.

### Seasonality Insight
- **Insight:** Q4 consistently shows peak in EV sales due to festivals and subsidy deadlines.
- **Action:** Sales peak during Q4 due to festive offers and subsidy deadlines. Companies should increase ad spend, launch new models, and stock inventory before this period to meet demand efficiently and avoid stockouts or missed opportunities.



 
-----------------------------------------------------------------------



## 📚 Future Enhancements

- Include interactive Power BI `.pbix` file
- Integrate with external EV adoption policies dataset
- Add forecasting using Power BI AI visuals 


-----------------------------------------------------------------------


## 🙌 Author

**BIMAL KUMAR SAINI**              
Data Analyst Intern                      
📧 bimalsaini333@gmail.com               
🔗 [LinkedIn][https://www.linkedin.com/in/bimalsaini333/] | [GitHub][https://github.com/SainiBimal]

![Visitor Count](https://komarev.com/ghpvc/?username=SainiBimal&style=flat-square)

![Hits](https://hits.sh/github.com/SainiBimal/MyRepo.svg?style=flat-square)



