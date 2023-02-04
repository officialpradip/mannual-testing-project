delimiter //
create procedure getorder(
IN cust_no INT,
OUT shipped INT,
OUT cancled INT,
OUT resolved INT,
OUT disputed INT)

begin
-- shipped
select count(*) into shipped from orders where customerNumber = cust_no and status="Shipped";

-- cancled
select count(*) into cancled from orders where customerNumber = cust_no and status="Cancled";

-- resolved
select count(*) into resolved from orders where customerNumber = cust_no and status="Resolved";

-- disput
select count(*) into disputed from orders where customerNumber = cust_no and status="Disputed";
end //

delimiter ;

call getorder(141,@shipped,@cancled,@resolved,@disputed);
select @shipped,@cancled,@resolved,@disputed