-- Questions

 -- 1. What are the purchased bikes according to adolescents, middle age, and old customers?
SELECT age_bracket, Purchased_Bike, count(*) as count
FROM projects.bike
WHERE age_bracket = 'Adolescents' or
	  age_bracket = 'Middle_Age' or
      age_bracket = 'Old'
GROUP BY age_bracket, Purchased_Bike
ORDER BY count(*);

-- 2. Which is the most distance commuted with the purchased bikes?
SELECT Commute_Distance, Purchased_Bike, count(*) as count
FROM projects.bike
WHERE Commute_Distance = '0-1 miles'or
	  Commute_Distance = '1-2 miles' or
      Commute_Distance = '2-5 miles' or
      Commute_Distance = 'More than 10 Miles'
GROUP BY Commute_Distance, Purchased_Bike
ORDER BY count(*);

-- 3. What is the average income of customers?
SELECT avg(income), Gender, Purchased_Bike
FROM projects.bike
GROUP BY gender, Purchased_Bike;



	SELECT * FROM projects.bike;
