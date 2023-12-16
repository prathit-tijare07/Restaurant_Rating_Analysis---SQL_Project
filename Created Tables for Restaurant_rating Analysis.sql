Create Database Restaurant_Rating_Analysis;
use Restaurant_Rating_Analysis;



-- Title :- Restaurant_Ratings_Analysis 
-- Date :- 15-11-2023
-- Tool used :- Mysql


-- 1. Creating table (customer_details)

      Create table Customer_details( 
                                    Consumer_ varchar(20),
                                    City varchar(30),
                                    State varchar(30),
                                    Country varchar(40),
                                    latitude Decimal,
                                    Longitude decimal,
                                    Smoker Varchar(20),
                                    Drink_level Varchar(50),
                                    Transportation_method varchar(50),
                                    Marital_status varchar (30),
                                    Children varchar(30),
                                    age int,
                                    occupation varchar(50),
                                    Budget varchar(30));
      
      select * from customer_details;
          
 -- 2. Creating table ( Restaurants)
 Create table Restaurants(  
                           Restaurant_ID varchar(30),
                           Name varchar(150),
                           city varchar(50),
                           state varchar(50),
                           country varchar(50),
                           zip_code varchar(50),
                           latitude decimal,
                           longitude decimal,
                           alcohol_service varchar(50),
                           smoking_allowed varchar(50),
                           price varchar(50),
                           franchise varchar(50),
                           area varchar(50),
				           parking varchar(100));
         select * from restaurants;
         
              
-- 3. Creating table ( Customer_preferences)
	Create table customer_preferences(
                                  consumer_id varchar(20),
                                  preferred_cuisine varchar(50));

select * from customer_preferences;

-- 4. Creating table ( Ratings)
    Create table Ratings( 
								Consumer_id varchar(50),
                                restaurant_id varchar(50),
                                overall_rating int,
                                food_rating int,
                                service_rating int);
        select * from ratings; 
        
-- 5. Creating table ( Restaurant_cuisines)
       Create table restaurant_cuisines(
							            restaurant_id varchar(50),
                                        cuisine varchar(50));
                                        
select * from restaurant_cuisines;
select * from customer_details; 
select * from restaurants;
select * from customer_preferences;
select * from ratings;          
