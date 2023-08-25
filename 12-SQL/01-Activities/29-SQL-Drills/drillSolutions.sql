-- get everything from the employees table

select * from employees

-- this time only retrieve the firstName, lastName and officeCode
select 
firstname, 
lastname, 
officecode
from employees

-- filter the last query get all the officeCodes less than 3

select 
firstname, 
lastname, 
officecode 
from employees
where officecode < 3


-- get everything from the offices table

select * from offices

-- this time only retrieve the city, phone, and state, and officeCode
select city, phone, state from offices


-- filter the last query, get the state of "CA"

select city, phone, state 
from offices
where state = "CA"




--join the offices table to the employees table and return all of the data

select * from employees
inner join offices
on employees.officeCode = offices.officeCode;


--join the offices table to the employees table and return  firstName, lastName, officeCode city, phone, and state
select firstname, 
lastname, 
city, 
phone, 
state, 
offices.officecode
from employees
inner join offices
on employees.officeCode = offices.officeCode;

--filter the last query by city, only retrieve the entry for Boston
select firstname, 
lastname, 
city, 
phone, 
state, 
offices.officecode
from employees
inner join offices
on employees.officeCode = offices.officeCode;
where city = "Boston"

--filter instead by getting all cities that contain the letter "o" in the city column
select firstname, 
lastname, 
city, 
phone, 
state, 
offices.officecode
from employees
inner join offices
on employees.officeCode = offices.officeCode;
where city like "%0%"






--return everything from employees and customers

select *
       from employees
inner join customers on 
employees.employeeNumber = customers.salesRepEmployeeNumber;

-- join employee to customers table,
-- return only the employee firstname and lastname, and customer firstname and last name and customer phone number
select firstname as employeeFirst, 
       lastName as employeeLast,
       contactFirstName as customerFirst, 
       contactLastName as customerLast, 
       customers.phone as customerPhone,
       offices.phone as employeeNumber,
       extension as extension
       from employees
inner join customers on 
employees.employeeNumber = customers.salesRepEmployeeNumber
inner join offices on offices.officeCode = employees.officeCode;
-- return all the employees who do not have a customer
select firstname as employeeFirst, 
       lastName as employeeLast,
       contactFirstName as customerFirst, 
       contactLastName as customerLast, 
       customers.phone as customerPhone,
       offices.phone as employeeNumber,
       extension as extension
       from employees
left join customers on 
employees.employeeNumber = customers.salesRepEmployeeNumber
where contactFirstName is null


-- return all the customers who do not have an employee
select firstname as employeeFirst, 
       lastName as employeeLast,
       contactFirstName as customerFirst, 
       contactLastName as customerLast, 
       customers.phone as customerPhone,
       offices.phone as employeeNumber,
       extension as extension
       from employees
right join customers on 
employees.employeeNumber = customers.salesRepEmployeeNumber
where firstname is null















