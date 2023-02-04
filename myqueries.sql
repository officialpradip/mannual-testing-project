
use classicmodels;
show tables;

select * from customers;

describe information_schema;

select Count(*) AS NumberofColumn FROM 
information_schema.columns WHERE table_name="customers";

select column_name FROM 
information_schema.columns WHERE table_name="customers";

select column_name, data_type FROM 
information_schema.columns WHERE table_name="customers";

select column_name,column_type FROM 
information_schema.columns WHERE table_name="customers";

select column_name, is_nullable FROM 
information_schema.columns WHERE table_name="customers";

select column_name, column_key FROM 
information_schema.columns WHERE table_name="customers";