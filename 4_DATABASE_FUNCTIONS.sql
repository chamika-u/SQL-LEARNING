--Mathematical Functions

SELECT ABS(2.6); --abs value
SELECT CEIL(2.3); --Highest integer for a decimal number
SELECT FLOOR(2.3); --Lowest integer for a decimal number
SELECT ROUND(2.3456, 2); --(Number, decimal points wants to round)
SELECT SQRT(144); --Find square root of a number
SELECT SQRT(4.0);
SELECT ROUND(SQRT(4.0),0);-- Find square root of a given number and round it to 2 decimal points.

--Date Functions

SELECT CURRENT_DATE; -- Seleclt current date
SELECT EXTRACT(DAY FROM CURRENT_DATE); --Select only the day from current date
SELECT EXTRACT(MONTH FROM CURRENT_DATE); --Select only the month from current date
SELECT EXTRACT(YEAR FROM CURRENT_DATE); --Select only the year from current date

