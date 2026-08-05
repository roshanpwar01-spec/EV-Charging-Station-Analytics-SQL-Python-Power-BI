use ev_charging;
show tables;

select * from ev_charging_final limit 5 ;
Describe ev_charging_final;

-- total revenue 
Select round(sum(Cost_INR),2) as total_revenue from ev_charging_final;

-- total energy 
Select round(sum(Energy_Consumed_kWh),2) as total_Energy from ev_charging_final;

-- total session
Select count(*) as total_session from ev_charging_final;

-- agv duration
SELECT ROUND(AVG(Session_Duration_Min),2) AS Avg_Duration_Min FROM ev_charging_final;

-- Revenue by City
Select City,round(sum(Cost_INR),2) as revenue 
from ev_charging_final
group by city
order by revenue desc;

-- Energy consumed by different vehicle
Select Vehicle_Type,round(sum(Energy_Consumed_kWh),2) as energy_consumed_by_vehicle 
from ev_charging_final
group by Vehicle_Type
order by Energy_Consumed_by_vehicle desc;

-- Revenue by Vehicle type
Select Vehicle_Type,round(sum(Cost_INR),2) as Revenue
from ev_charging_final
group by Vehicle_Type
order by Revenue DESC;

-- payment method used
Select payment_method ,count(*) as Total_transactions
from ev_charging_final
group by Payment_Method
order by Total_transactions DESC;

-- weekend and weekday revenue
Select weekend,round(sum(Cost_INR)) as Revenue
from ev_charging_final
group by weekend
order by Revenue DESC;

-- Peak Charging hours
Select hour,count(*) as session
from ev_charging_final
group by hour
order by session desc;

-- highest revenue category
Select revenue_category,count(*) as session
from ev_charging_final
group by Revenue_Category
order by session desc;

-- 