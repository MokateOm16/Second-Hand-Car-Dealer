create schema cars;
use cars
-- Read cars data --
select * from car_dekho;
-- Total Cars:TO get a count of Total Records.
select count(*) from car_dekho;

-- The Manager asked the employee how many cars will be available in 2023?
select count(*) from car_dekho where year=2023;

-- The Manager asked the employee how many cars will be available in 2020,2021,2022?
select count(*) from car_dekho where year in(2021 , 2022,2020 ) group by year;

-- Clint asked me to print the TOtal of cars by year,I don't see the details.
select year, count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel cars will there be in 2020--
select count(*) from car_dekho where year =2020 and fuel ='diesel';

-- Client asked to car dealer agent how many petrol cars will there be in 2020--
select count(*) from car_dekho where year =2020 and fuel ='petrol';

-- The Manager told the employee to give print all the fuel cars(petrol,disel and CNG) come by all year
select * from car_dekho where fuel in('petrol','disel','CNG') ;

-- Manager saod there were more than 100 cars in given year,which year had more than 100 cars?
select year, count(*) from car_dekho group by year having count(*)>100;

-- Manager said to the employee All cars count details between 2015 and 2023
select count(*) from car_dekho where year between 2015 and 2023;
