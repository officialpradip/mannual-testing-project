-- basic store procedure
delimiter //

create procedure SelectCustomers()
begin
	select * from customers;
end //

delimiter ;

call SelectCustomers()

-- store procedure with single parameter

delimiter //

create procedure SelectCustomerbyCity(IN mycity varchar(50))

begin 
	select * from customers where city=mycity;
	
end //

delimiter ;

call SelectCustomerbyCity('Melbourne')

-- store procedure with city and postalcode

delimiter //
create procedure Customerbycitypostal(IN mycity varchar(50), IN pcode varchar(50))
begin
	select * from customers where city=mycity and postalCode=pcode;
end //
delimiter ;
call Customerbycitypostal('Melbourne','3004')
