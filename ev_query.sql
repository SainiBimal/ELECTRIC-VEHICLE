USE unified_mentor;

select * from ev;

/* Top five Years of Total sales Quantity */

select Year, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Year
order by Total_Quantity_Sales desc
limit 5;


/* Month wise Total sales Quantity */

select upper(month_name) as Month,  sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Month
;


/* Quarter wise Total sales Quantity */

select 
case 
     when month_name in ("jan","feb", "mar") then 1 
	 when month_name in ("apr","may", "jun") then 2 
     when month_name in ("jul" , "aug", "sep") then 3 
     when month_name in ("oct" , "nov", "dec") then 4 
     else 0
     end as Quarter, 
     sum(ev_sales_quantity) as Total_Quantity_Sales

from ev
group by Quarter
;



/* Top 10 state wise Total sales Quantity */

select State, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by State
order by Total_Quantity_Sales desc
limit 10;

/* Top 15  Vehicle Class by Total sales Quantity */

select Vehicle_Class, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Vehicle_Class
order by Total_Quantity_Sales desc
limit 15;


/*   Vehicle Category and Vehicle Class by Total sales Quantity */

select Vehicle_Category, Vehicle_Type, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Vehicle_Category, Vehicle_Type
order by Total_Quantity_Sales desc
;

/* Year wise Top Vehicle Class of Uttar Pradesh State having Total sales Quantity greater than 1000  */

select Year, Vehicle_Class, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev 
where State = "Uttar Pradesh"
group by Year, Vehicle_Class
having Total_Quantity_Sales > 1000
order by Year;

/* Month wise Top Vehicle Category and Vehicle Class of Uttar Pradesh State having Total sales Quantity greater than 100  */

select upper(month_name) as Month , Vehicle_Category, Vehicle_Type, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev 
where State = "Uttar Pradesh"
group by Month , Vehicle_Category, Vehicle_Type
having Total_Quantity_Sales > 100
;

/* Year on Year Change  */

with cte1 as (select
Year, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Year
order by year)
 
select Year, Total_Quantity_Sales, 
round((Total_Quantity_Sales - lag(Total_Quantity_Sales) over(order by year))*100/ lag(Total_Quantity_Sales) over(order by year),2)
as Year_on_Year_Change
from cte1 
;


/* Month on Month Change  */

with cte2 as (select
Upper(Month_Name) as Month, sum(ev_sales_quantity) as Total_Quantity_Sales
from ev
group by Month
)
 ,
cte3 as (select Month,
Total_Quantity_Sales,
lag(Total_Quantity_Sales) over(order by field(Month, "Jan", "Feb","Mar", "Apr" , "Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec"))
as Previous_Quantity_Sales
from cte2)

select Month, Total_Quantity_Sales, round((Total_Quantity_Sales - Previous_Quantity_Sales)*100/ Previous_Quantity_Sales,2)
as Month_on_Month_Change
from cte3;




/* Year wise Top rank State by Total_Sales_Quantity */

with cte4 as (select Year,
State, sum(ev_sales_quantity) as Total_Sales_Quantity,
row_number() over(partition by Year order by sum(ev_sales_quantity) desc) as Ranks
from ev
group by Year, State)

select Year, State, Total_Sales_Quantity
from cte4
where Ranks = 1;


/* Month wise Top rank State by Total_Sales_Quantity in Year 2023 */

with cte5 as( select Year, upper(Month_Name) as Month, State, sum(ev_sales_quantity) as Total_Sales_Quantity,
row_number() over(partition by Year, upper(Month_Name) order by sum(ev_sales_quantity)desc) as Ranks
from ev
group by Year, Month, State
)

select Month, State, Total_Sales_Quantity
from cte5
where Ranks = 1 and Year = 2023
order by field(Month, "Jan", "Feb","Mar", "Apr" , "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec");

/* Top rank Vehicle Class by Total_Sales_Quantity in  December month and Year 2023 of Uttar Pradesh State */

with cte6 as (select Year, month_name as Month, State, Vehicle_Class, 
sum(ev_sales_quantity) as Total_Sales_Quantity, 
row_number() over (partition by Year, month_name, State, Vehicle_Class order by sum(ev_sales_quantity) desc) as Ranks
from ev
group by Year, Month, State, Vehicle_Class
)

select Vehicle_Class, Total_Sales_Quantity
from cte6
where Year = 2023 and Month = "dec" and State = "Uttar Pradesh" and Ranks = 1 and Total_Sales_Quantity > 0
order by Total_Sales_Quantity desc;


/* Top rank Vehicle Type by Total_Sales_Quantity in  December month and Year 2023 of Uttar Pradesh State */

with cte7 as ( select Year, month_name, State, Vehicle_Type, sum(ev_sales_quantity) as Total_Sales_Quantity,
row_number() over(partition by Year, month_name, State, Vehicle_Type  order by sum(ev_sales_quantity) desc) as Ranks
from ev
group by Year, month_name, State, Vehicle_Type
)

select Vehicle_Type, Total_Sales_Quantity
from cte7
where Year = 2023 and  month_name = "dec" and State = "Uttar Pradesh" and Ranks=1 and Total_Sales_Quantity > 0
order by Total_sales_Quantity desc;

/* Rolling Average by Year and Month wise */

with cte8 as ( select Year, concat(upper(left(Month_Name,1)),lower(right(Month_Name,2))) as Month,
sum(ev_sales_quantity) as Total_Sales_Quantity
from ev 
group by Year, Month
),

cte9 as (select Year, Month, Total_Sales_Quantity,
round(avg(Total_Sales_Quantity) over(partition by Year order by field(Month, "Jan", "Feb","Mar", "Apr" , "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec")
 rows between unbounded preceding and current row ),2) as Average_Rolling
 from cte8

 )
 

select Year, Month, Total_Sales_Quantity, Average_Rolling 
from cte9
order by Year, field(Month, "Jan", "Feb","Mar", "Apr" , "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec")
;

