show databases;

/* Creating database for assignment-3 */
create database a3;
use a3;

/* Creating Client_master table */
create table Client_master
	(Client_No varchar(6) primary key check (Client_no like 'C%'),
	  Name varchar(20) Not null,
      Address1 varchar(30),
      Address2 varchar(30),
      City varchar(15),
      Pincode int(8),
      State varchar(15),
      Bal_due decimal(10,2)
      );
      
/* Creating Product_master table */
create table Product_master(
	 Product_no varchar(6) primary key,
     Descriptions varchar(15),
     Profit_percent decimal(4,2) Not Null,
     Unit_measure varchar(10) Not Null,
     Qty_no_hand int(8) not null,
     Reorder_lvl int(8) not null,
     Sell_price decimal(8,2) not null,
     Cost_price decimal(8,2) not null, 
     check(Sell_price != 0),
     check(Cost_price != 0)
     );

/* Creating Salesman_master table */
create table Salesman_master(
		Salesman_no varchar(6) primary key,
        Salesman_name varchar(20) not null,
        Address1 varchar(30) not null,
        Address2 varchar(30),
        City varchar(20),
        Pincode varchar(8),
        State varchar(20),
        Sal_amt decimal(8,2) not null,
        Tgt_to_get decimal(6,2) not null,
        Ytd_sales decimal(6,2) not null,
        Remarks varchar(60)
        check (Salesman_no like 'S%'),
        check (Sal_amt != 0),
        check (Tgt_to_get != 0)
        );
        
/* Creating Sale_order table */
create table Sale_order(
			Order_no varchar(6) primary key,
            Order_date date,
            Client_no varchar(6),
            Dely_Addr varchar(25),
            Salesman_no varchar(6),
            Dely_type char(1) default 'F',
            Billed_yn char(1),
            Dely_date date,
            Order_status varchar(10),
            foreign key (Client_no) references Client_master(Client_no),
            foreign key (Salesman_no) references Salesman_master(Salesman_no),
            check (Order_no like 'O%'),
            constraint deltype_const check (Dely_type like 'P' or Dely_type like 'F'),
            check (Dely_date > Order_date),
            constraint Ordstatus_const check 
            (Order_status like 'In process' or Order_status like 'Fulfilled' or Order_status like 'Back Order' or Order_status like 'Cancelled')
            );

/* creating Sale_order_details */
create table Sale_order_details(
			Order_no varchar(6),
            Product_no varchar(6),
            Qty_ordered int(8),
            Qty_disp int(8),
            Product_rate decimal(10,2),
            foreign key (Order_no) references Sale_order(Order_no),
            foreign key (Product_no) references Product_master(Product_no),
			primary key (Order_no,Product_no)
            );

/* Inserting in Client_master */

INSERT INTO Client_master (Client_No, Name, City, PinCode, State, Bal_due)
VALUES
('C00001', 'Ivan Bayross', 'Bombay', 400054, 'Maharashtra', 15000),
('C00002', 'Vandana Saitwal', 'Madras', 780001, 'Tamil Nadu', 0),
('C00003', 'Pramada Jaguste', 'Bombay', 400057, 'Maharashtra', 5000),
('C00004', 'Basu Navindgi', 'Bombay', 400056, 'Maharashtra', 0),
('C00005', 'Ravi Sreedharan', 'Delhi', 100001, 'Delhi', 2000),
('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0); 

/* Inserting in Product_master */
    INSERT INTO Product_master (Product_no, Descriptions, Profit_percent, Unit_measure, Qty_no_hand, Reorder_lvl, Sell_Price, Cost_Price)
	VALUES
	('P00001', '1.44 Floppies', 5.00, 'Piece', 100, 20, 525.00, 500.00),
	('P03453', 'monitors', 6.00, 'Piece', 10, 3, 12000.00, 11280.00),
	('P06734', 'mouse', 5.00, 'Piece', 20, 5, 1050.00, 1000.00),
	('P07865', '1.22 Floppies', 5.00, 'Piece', 100, 20, 525.00, 500.00),
	('P07868', 'keyboards', 2.00, 'Piece', 10, 3, 3150.00, 3050.00),
	('P07885', 'CD Drive', 2.50, 'Piece', 10, 3, 5250.00, 5100.00),
	('P07965', '540 HHD', 4.00, 'Piece', 10, 3, 8400.00, 8000.00),
	('P07975', '1.44 Drive', 5.00, 'Piece', 10, 3, 1050.00, 1000.00),
	('P08865', '1.22 Drive', 5.00, 'Piece', 2, 3, 1050.00, 1000.00);






/* Inserting in Salesman_master */
	INSERT INTO Salesman_master (Salesman_no, Salesman_name, Address1, Address2, City, Pincode, State, Sal_amt, Tgt_to_get, Ytd_sales, Remarks)
	VALUES
	('S00001', 'Kiran', 'A/14', 'Worli', 'Bombay', '400002', 'Maharashtra', 3000, 100, 50, 'Good'),
	('S00002', 'Manish', '65', 'Nariman', 'Bombay', '400001', 'Maharashtra', 3000, 200, 100, 'Good'),
	('S00003', 'Ravi', 'P-7', 'Bandra', 'Bombay', '400032', 'Maharashtra', 3000, 200, 100, 'Good'),
	('S00004', 'Aashish', 'A/5', 'Juhu', 'Bombay', '400044', 'Maharashtra', 3500, 200, 150, 'Good');
    
/* Inserting in Sales_order */
INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES ('O19001', '1996-01-12', 'C00001', 'F', 'N', 'S00001', '1996-01-20', 'In Process');

INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES('O19002', '1996-01-25', 'C00002', 'P', 'N', 'S00002', '1996-01-27', 'Cancelled');
        
INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES ('O46865', '1996-02-18', 'C00003', 'F', 'Y', 'S00003', '1996-02-20', 'Fulfilled');

INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES ('O19003', '1996-04-03', 'C00001', 'F', 'Y', 'S00001', '1996-04-07', 'Fulfilled');

INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES ('O46866', '1996-05-20', 'C00004', 'P', 'N', 'S00002', '1996-05-22', 'Cancelled');  

INSERT INTO Sale_order (order_no, order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES ('O19008', '1996-05-24', 'C00005', 'F', 'N', 'S00004', '1996-05-26', 'In Process');

/* Inserting in Sale_order_details */	
     INSERT INTO sale_order_details 
	 (order_no, Product_no, Qty_ordered, Qty_disp, Product_rate)
	 VALUES
 		('O19001', 'P00001', 4, 4, 525),
 		('O19001', 'P07965', 2, 1, 8400),
 		('O19001', 'P07885', 2, 1, 5250),
 		('O19002', 'P00001', 10, 0, 525),
 		('O46865', 'P07868', 3, 3, 3150),
 		('O46865', 'P07885', 3, 1, 5250),
 		('O46865', 'P00001', 10, 10, 525),
 		('O46865', 'P03453', 4, 4, 1050),
 		('O19003', 'P03453', 2, 2, 1050),
 		('O19003', 'P06734', 1, 1, 12000),
 		('O46866', 'P07965', 1, 0, 8400),
 		('O46866', 'P07975', 1, 0, 1050),
 		('O19008', 'P00001', 10, 5, 525),
 		('O19008', 'P07975', 5, 3, 1050);
    
-- Q.3 Exercises computation on tsble data
-- a) 
	 select name from client_master where name like '_a%';
     
     select * from client_master where city like '_a%';
     
     select * from client_master where city='Bombay' or city='Delhi';
     
     select name from client_master where Bal_due > 10000;
     
     select * from sale_order where month(order_date) = 1;
     
     select * from sale_order where Client_no='C00001' or Client_no='C00002';
     
	 select Descriptions from product_master where Sell_price > 2000 and Sell_price <= 5000;
     
     select *, sell_price*0.15 as new_price from product_master where Sell_price > 1500 ;
	
     select name,city,state from client_master where state != 'Maharashtra';
     
     select count(Order_no) from sale_order;
     
     select avg(cost_price) from product_master;
     
     select max(cost_price) 'max_price' , min(cost_price) 'min_price' from product_master;
     
     select count(Product_no) from product_master where cost_price>=1500;
     
     select * from product_master where Qty_no_hand < Reorder_lvl;
     
-- 4)
     
     select order_no,dayname(order_date) from sale_order;
     
     select monthname(order_date),order_date from sale_order;
     
     select date_format(order_date,'%d-%M-%y') from sale_order;
     
     select adddate(curdate(),15);
     
     select datediff(Dely_date,Order_date) from sale_order;
     
-- 5)
    select s.product_no,p.descriptions,sum(Qty_ordered) from sale_order_details s,product_master p where p.product_no=s.product_no group by product_no ;

    select product_no,sum(Qty_ordered),sum(Qty_ordered)*Product_rate from sale_order_details group by product_no;

    SELECT c.Name,sod.Order_no,avg(Qty_ordered) 
    FROM sale_order_details sod, sale_order s,client_master c 
    where sod.Order_no=s.Order_no and s.Client_no=c.Client_No
    group by sod.Order_no
    having sum(Qty_ordered*product_rate) <= 15000;

    SELECT sod.Order_no,sum(Qty_ordered*Product_rate)
    FROM sale_order_details sod, sale_order s 
    where sod.Order_no=s.Order_no 
    group by sod.Order_no;
    
    
    -- *****************
 -- In below Query group by is based on order_date therefore 
--  it can't be excluded otherwise there's two order-dates with jan month  
    select Order_date,month(Order_date),sum(Qty_ordered*Product_rate) 
    from sale_order s, sale_order_details sod
    where s.Order_no=sod.Order_no
    group by month(Order_date)
    having month(Order_date)=1;

