-- 1. Use sakila database.
use sakila;

-- 2. Get all the data from tables actor, film and customer.

-- Get all actors
SELECT 
    *
FROM
    actor;
-----------------    

-- Get all films
SELECT 
    *
FROM
    film;
-----------------        

-- Get all customers
SELECT 
    *
FROM
    customer;
-----------------

-- 3. Get film titles.
SELECT 
    title
FROM
    film;

-- 4. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT 
    *
FROM
    language
WHERE
    language_id IN (SELECT DISTINCT
            (language_id)
        FROM
            film);

-- 5.1 Find out how many stores does the company have?
SELECT 
    COUNT(*)
FROM
    store;

-- 5.2 Find out how many employees staff does the company have?
SELECT 
    COUNT(*)
FROM
    staff;

-- 5.3 Return a list of employee first names only?
SELECT 
    first_name
FROM
    staff;