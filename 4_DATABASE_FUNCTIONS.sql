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
SELECT DATE_TRUNC('Day', order_timestamp) FROM Orders;
SELECT AGE(order_timestamp) FROM Orders;
SELECT AGE(delivery_timestamp, order_timestamp) FROM Orders;

SELECT DATE_PART('DAY', CURRENT_DATE); --Select only the day from current date
SELECT DATE_PART('MONTH', CURRENT_DATE); --Select only the month from current date
SELECT DATE_PART('YEAR', CURRENT_DATE); --Select only the year from current date
 
SELECT DATE_TRUNC('DAY', CURRENT_DATE); --Select truncate date to day
SELECT DATE_TRUNC('MONTH', CURRENT_DATE); --Select truncate date to month
SELECT DATE_TRUNC('YEAR', CURRENT_DATE); --Select truncate date to year

SELECT AGE(CURRENT_DATE, TIMESTAMP '2024-10-01'); --Display gap between given timestamp (date) and current date

SELECT AGE(TIMESTAMP '2026-09-29', TIMESTAMP '2004-09-29'); --Display gap between given timestamp and given timestap
SELECT TO_DATE('01/01/2023', 'DD/MM/YYYY'); --Convert string type data do defined date structure
SELECT TO_CHAR(CURRENT_DATE, 'DD/MM/YYYY'); --Converting char type to defined date structure

--Time Functions

SELECT CURRENT_TIME; --Display current time
SELECT CURRENT_TIMESTAMP; --Display current time and date
SELECT LOCALTIME; --Display local time
SELECT LOCALTIMESTAMP; --Display local date and time

SELECT EXTRACT(HOUR FROM order_timestamp) FROM Orders; --Extract only the hour
SELECT EXTRACT(MINUTE FROM order_timestamp) FROM Orders; --Extract only the minute
SELECT EXTRACT(SECOND FROM order_timestamp) FROM Orders; --Extract only the seconds
SELECT CURRENT_TIMESTAMP AT Time Zone 'America/New_York'; --Convert current timestamp to region time zones

--String Functions

SELECT city || address FROM customer; --Select city and adresss together
SELECT city ||'---'|| address FROM customer; --Separate city from the address by '---'
SELECT CONCAT(city,address) FROM customer; --Select city and adresss together
SELECT CONCAT_WS('--',city,address) FROM customer; --Separate city from the address by CONCAT_WS('--')

SELECT TRIM('    HELLO    '); --Remove extra spaces from left and right
