with hotels as (
Select * from dbo
union
Select * from dbo.['2019$']
union
Select * from dbo.['2020$'])

Select hotel, arrival_date_year, sum((stays_in_week_nights+stays_in_weekend_nights)*adr) as Revenue from hotels group by arrival_date_year,hotel