select * from `india-energy-analytics.India_energy_project.ev`;

select count(*) from `india-energy-analytics.India_energy_project.ev`;

/* Top five Years of Total sales Quantity */
select Year, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Year
order by Year desc
limit 5;

/* Month wise Total sales Quantity */
select upper(month_name) as Month,  sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Month ; 


/* Top 10 state wise Total sales Quantity */
select State, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by State
order by Total_Quantity_Sales desc
limit 10;


/* Top 15  Vehicle Class by Total sales Quantity */
select Vehicle_Class, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Vehicle_Class
order by Total_Quantity_Sales desc
limit 15;


/* Vehicle Category and Vehicle Class by Total sales Quantity */
select Vehicle_Category, Vehicle_Type, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Vehicle_Category, Vehicle_Type
order by Total_Quantity_Sales desc;


/* Year on Year Change  */
with cte1 as (select
Year, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Year
order by year)
select Year, Total_Quantity_Sales, 
round((Total_Quantity_Sales - lag(Total_Quantity_Sales) over(order by year))*100/ lag(Total_Quantity_Sales) over(order by year),2)
as Year_on_Year_Change
from cte1;


/* Month on Month Change  */
with cte2 as (select
Upper(Month_Name) as Month, sum(ev_sales_quantity) as Total_Quantity_Sales
from `india-energy-analytics.India_energy_project.ev`
group by Month
),
cte3 as (select Month,
Total_Quantity_Sales,
lag(Total_Quantity_Sales) over(order by case Month
        when 'JAN' then 1
        when 'FEB' then 2
        when 'MAR' then 3
        when 'APR' then 4
        when 'MAY' then 5
        when 'JUN' then 6
        when 'JUL' then 7
        when 'AUG' then 8
        when 'SEP' then 9
        when 'OCT' then 10
        when 'NOV' then 11
        when 'DEC' then 12
   end
    )
as Previous_Quantity_Sales
from cte2)

select Month, Total_Quantity_Sales, round((Total_Quantity_Sales - Previous_Quantity_Sales)*100/ Previous_Quantity_Sales,2)
as Month_on_Month_Change
from cte3;



/* Year wise Top rank State by Total_Sales_Quantity */
with cte4 as (select Year,
State, sum(ev_sales_quantity) as Total_Sales_Quantity,
row_number() over(partition by cast(Year as int64) order by sum(ev_sales_quantity) desc) as Ranks
from `india-energy-analytics.India_energy_project.ev`
group by Year, State)

select Year, State, Total_Sales_Quantity
from cte4
where Ranks = 1;



/* Electric Vehicle (EV) Sales Forecasting – Time Series Prediction using ARIMA_PLUS */
CREATE OR REPLACE MODEL `india-energy-analytics.India_energy_project.ev_forecast_model`
OPTIONS(
  MODEL_TYPE='ARIMA_PLUS',
  TIME_SERIES_TIMESTAMP_COL='Date',
  TIME_SERIES_DATA_COL='EV_Sales_Quantity',
  AUTO_ARIMA=True
) AS
SELECT
  Date,
  EV_Sales_Quantity
FROM `india-energy-analytics.India_energy_project.ev`
ORDER BY Date;


SELECT
  forecast_timestamp AS forecast_date,
  round(forecast_value,2) AS predicted_sales,
  round(prediction_interval_lower_bound,2) AS lower_bound,
  round(prediction_interval_upper_bound,2) AS upper_bound
FROM
  ML.FORECAST(
    MODEL `india-energy-analytics.India_energy_project.ev_forecast_model`,
    STRUCT(6 AS horizon, 0.8 AS confidence_level)
  );



SELECT *
FROM ML.EVALUATE(MODEL `india-energy-analytics.India_energy_project.ev_forecast_model`);
