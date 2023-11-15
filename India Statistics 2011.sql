-- Select * from dataset2;
-- number of rows into our dataset 

-- Select count(*) from dataset1
-- Select count(*) from dataset2

-- dataset for Jharkhand and Bihar
-- SELECT * FROM dataset1 WHERE State IN ('Jharkhand', 'Bihar')

-- Population of India
-- SELECT SUM(population) from dataset2
-- SELECT SUM(population) population from dataset2

-- Average growth
-- SELECT avg(growth) avg_growth FROM dataset1
-- SELECT state, avg(growth) avg_growth FROM dataset1 GROUP BY state;

-- Average Sex Ratio
-- SELECT state, round(avg(sex_ratio),0) avg_sex_ratio FROM dataset1 
-- GROUP BY STATE ORDER BY avg_sex_ratio desc;

-- Average Literacy Rate
-- SELECT state, round(avg(literacy),0) avg_literacy_ratio FROM dataset1
-- GROUP BY State HAVING ROUND(AVG(literacy),0)>90 ORDER BY avg_literacy_ratio desc;

-- Top 3 state showing highest growth ratio
-- SELECT state, avg(growth) avg_growth FROM dataset1
--  GROUP BY state ORDER BY avg_growth desc
 -- Limit 3;
 
 -- Bottom 3 state showing lowest sex ratio
 -- SELECT state, round(avg(sex_ratio),0) avg_sex_ratio FROM dataset1 
--  GROUP BY STATE ORDER BY avg_sex_ratio asc
 -- Limit 3;

-- top and bottom 3 states in literacy stat

-- DROP TABLE IF exists topstates;
-- CREATE Temporary TABLE topstates
	-- (state varchar(255),
   -- avg_literacy float
    
  --  );
-- INSERT INTO topstates(state, avg_literacy)
-- SELECT STATE,round(avg(literacy),0) 
-- avg_literacy FROM dataset1
-- GROUP BY STATE 
-- ORDER BY avg_literacy desc
-- LIMIT 3;
-- SELECT * FROM topstates;


-- DROP TABLE IF exists bottomstates;
-- CREATE Temporary TABLE bottomstates
-- 	(state varchar(255),
   --  avg_literacy float
    
  --  );
-- INSERT INTO bottomstates(state, avg_literacy)
-- SELECT STATE,round(avg(literacy),0) 
-- avg_literacy FROM dataset1
-- GROUP BY STATE 
-- ORDER BY avg_literacy asc
-- LIMIT 3;
-- SELECT * FROM bottomstates;

-- Union Operator

-- (SELECT * FROM topstates ORDER BY avg_literacy asc
-- LIMIT 3)
-- UNION
-- (SELECT*FROM bottomstates ORDER BY avg_literacy asc
-- LIMIT 3);

-- State starting with letter a
-- SELECT DISTINCT STATE FROM dataset1 WHERE lower(state) LIKE 'a%'

-- State starting with letter g or h
-- SELECT DISTINCT STATE FROM dataset1 WHERE lower(state) LIKE 'g%' or lower(state) LIKE 'h%'

-- State starting with letter k and ending with letter a
-- SELECT DISTINCT STATE FROM dataset1 WHERE lower(state) LIKE 'k%' and lower(state) LIKE '%a'


