use Restaurant_Rating_Analysis;

-- Title :- Restaurant_Ratings_Analysis 
-- Date :- 15-11-2023
-- Tool used :- Mysql


-- Restaurant Details --
-- Business questions--


-- Q16.Total restaurants in each state
      select state,count(restaurant_id)total_customers
      from restaurants
      group by state
      order by total_customers desc;
      
-- Q17 Total restaurants in each city
       select city,count(restaurant_id) total_customers
       from restaurants
       group by city
       order by total_customers desc;
       
-- Q18. Restaurants count by alcohol service 
        select alcohol_service,count(restaurant_id) total_restaurants
        from restaurants
        group by alcohol_service
        order by total_restaurants desc;
        
-- Q19.Restaurants count by smoking allowed
        select smoking_allowed,count(restaurant_id) total_restaurants
        from restaurants
        group by smoking_allowed
        order by total_restaurants DESC;
        
-- Q20.Alcohol & Smoking analysis
       select alcohol_service,smoking_allowed,count(restaurant_id)total_restaurants
       from restaurants
       group by alcohol_service,smoking_allowed
       order by total_restaurants desc;
       
-- Q21.Restaurants count by Price
        select price,count(restaurant_id) total_restaurants
        from restaurants
        group by price
        order by total_restaurants DESC;
        
-- Q22.Restaurants count by parking.
        select parking,count(restaurant_id)total_restaurants
        from restaurants
        group by parking
        order by total_restaurants DESC;
        
-- Q23.Count of Restaurants by cuisines
        select cuisine,count(restaurant_id)total_restaurants
        from restaurant_cuisines
        group by cuisine
        order by total_restaurants desc;
        
-- Q24. Preferred cuisines of each customer
        select name, count(cuisine) total_cuisines
        from restaurant_cuisines a
        Inner JOIN restaurants b
        ON a.restaurant_id = b.Restaurant_ID
        group by name 
        order by total_cuisines DESC;

-- Q25.Restaurant price analysis for each cuisine
       select cuisine,
              sum(CASE When price = 'HIGH' then 1 Else 0 END) As "HIGH",
              sum(CASE When price = 'MEDIUM' then 1 Else 0 END) As "MEDIUM",
              sum(CASE When price = 'LOW' then 1 Else 0 END) As "LOW"
              from restaurants a
              INNER JOIN Restaurant_cuisines b
              ON a.Restaurant_ID = b.restaurant_id
		      group by cuisine
              order by cuisine DESC;
			
-- Q26.finding out count of each cuisine in each state
         select * from restaurant_cuisines;
       select* from restaurants;
        select b.cuisine,
	           SUM(CASE WHEN a.state = 'Morelos' Then 1 Else 0 END) AS Morelos,
	           SUM(CASE WHEN a.state = 'San Luis Potosi' Then 1 Else 0 END) AS San_Luis_Potosi,
	           SUM(CASE WHEN a.state = 'Tamaulipas' Then 1 Else 0 END) AS Tamaulipas
			   from restaurants a
               Inner join restaurant_cuisines b
               ON a.restaurant_id = b.restaurant_id
               group by b.cuisine
               order by b.cuisine;