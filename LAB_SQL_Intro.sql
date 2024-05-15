## LAB | SQL Intro 1
## In this lab, you will be using the Sakila database of movie rentals. You can follow the steps listed here to get the data locally: Sakila sample database - installation. You can work with two sql query files - sakila-schema.sql (creates the schema) + sakila-data.sql which inserts the data.

## Instructions
## 1. Use sakila database.

use sakila; ## Use the database sakila

## 2. Get all the data from tables actor, film and customer.

select * from actor; ## 4 columns: actor_id, first_name, last_name, last_update 
select * from film;
select * from customer;
  
## 3. Get film titles.

select title from film; ## selecting column "title" of the table "film"

## 4. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.

select * from language;

select name as language from language; ## I used "as language" due to alias language

## 5.1 Find out how many stores does the company have?

select * from store; ## There are 2 stores as the table "store" shows 2 different "store_id"

## another solution of exercise 5.1 is highglithed below:

select count(distinct store_id) from inventory; ## We see that there are 2 different stores when we count how many different "store_id" exist at the table "inventory"

## 5.2 Find out how many employees staff does the company have?

select * from staff; ## There are 2 employees as the table "staff" shows 2 different "staff_id"

## 5.3 Return a list of employee first names only?

select first_name from sakila.staff;  ## Firstname of 2 employees are: Mike and John