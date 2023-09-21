-- creating schema sales 
Create schema sales;

-- creating customer table
create table sales.customer (
CustomerID int primary key, 
Email varchar(30) unique not null, 
Address Text, 
Phone char(10) not null,
Age smallint not null, 
DOB date  );


-- inserting values in customer table 
insert into sales.customer (CustomerID, 
Email,  
Address,  
Phone, 
Age, 
DOB ) values 
(1, "aadhav234@gmail.com", 'TN', '9968577451',23,'2001-01-01'),
(2, "balux344@gmail.com", 'HY', '9868577483',21,'2001-08-07'), 
(3, "chandru87@gmail.com", 'TN', '9969577461',22,'2000-03-09'), 
(4, "dinesh524@gmail.com", 'TN', '9968573071',23,'1999-07-15'), 
(5, "fizal32@gmail.com", 'TN', '9638257454',25,'1995-11-19'), 
(6, "Guru002@gmail.com", 'TN', '876507451',19,'2005-05-24'), 
(7, "hari6001@gmail.com", 'HY', '6359874561',21,'2001-11-26'), 
(8, "johnn64@gmail.com", 'HY', '8965461245',22,'2000-12-29'),
(9, "kamal631@gmail.com", 'TN', '9765214783',18,'2006-04-19') ;

-- showing output of sales tables
select * from sales.customer ;
 

