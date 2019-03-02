CREATE TABLE `Customers` (
  `Customer_id` INT,
  `First_Name` VARCHAR(25),
  `Last_Name` VARCHAR(25),
  `Address` VARCHAR(25),
  `City` VARCHAR(25),
  `Zip_Code` VARCHAR(10),
  `Email` VARCHAR(25),
  `Contact_Number` INT,
  `Payment_Details` VARCHAR(25),
  PRIMARY KEY (`Customer_id`)
);

CREATE TABLE `Customer_Orders` (
  `Customer_Order_id` INT,
  `Customer_id` INT,
  `Product_id` INT,
  `Employee_id` INT,
  `Product_Quantity` INT,
  `Price_Paid` FLOAT,
  `Order_Date` TIMESTAMP,
  PRIMARY KEY (`Customer_Order_id`),
  KEY `FK` (`Customer_id`, `Product_id`, `Employee_id`)
);

CREATE TABLE `Supplier_Orders` (
  `Supplier_Order_id` INT,
  `Supplier_id` INT,
  `Product_id` INT,
  `Employee_id` INT,
  `Product_Quantity` INT,
  `Price_Paid` FLOAT,
  `Order_Date` TIMESTAMP,
  `Received_Date` TIMESTAMP,
  PRIMARY KEY (`Supplier_Order_id`),
  KEY `FK` (`Supplier_id`, `Product_id`, `Employee_id`)
);

CREATE TABLE `Products` (
  `Product_id` INT,
  `Supplier_id` INT,
  `Product_Name` VARCHAR(25),
  `Product_Type` VARCHAR(25),
  `Retail_Price` FLOAT,
  `Supplier_Price` FLOAT,
  `Quantity_In_Stock` INT,
  PRIMARY KEY (`Product_id`),
  KEY `FK` (`Supplier_id`)
);

CREATE TABLE `Suppliers` (
  `Supplier_id` INT,
  `Supplier_Name` VARCHAR(25),
  `Address` VARCHAR(25),
  `City` VARCHAR(25),
  `Zip_Code` VARCHAR(25),
  `Email` VARCHAR(25),
  `Contact_Number` INT,
  PRIMARY KEY (`Supplier_id`)
);

CREATE TABLE `Employees` (
  `Employee_id` INT,
  `PPS_Number` VARCHAR(25),
  `First_Name` VARCHAR(25),
  `Last_Name` VARCHAR(25),
  `Address` VARCHAR(25),
  `City` VARCHAR(25),
  `Zip_Code` VARCHAR(25),
  `Email` VARCHAR(25),
  `Contact_Number` INT,
  PRIMARY KEY (`Employee_id`),
  KEY `AK` (`PPS_Number`)
);


INSERT INTO `customers`(`Customer_id`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`, `Payment_Details`) VALUES ('001','Paddy','Ryan','1 Glenview Square','Limerick','E346kp','paddy@gmail.com','086123456','VISA 123');

INSERT INTO `customers`(`Customer_id`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`, `Payment_Details`) VALUES ('003','Margaret','Browne','36 Matthew Street','Cork','p3gph','mbrowne@gmail.com','07912345','VISA 345');

INSERT INTO `customers`(`Customer_id`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`, `Payment_Details`) VALUES ('002','Timothy','Ryan','23 Grafton Square','Dublin','T34gp2','tim@gmail.com','087234567','VISA 238');

INSERT INTO `customers`(`Customer_id`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`, `Payment_Details`) VALUES ('004','Susan', 'Fraser','45 Dillion Sreet','Galway','B45gp','susan@hotmail.com','079354667','VISA 456');

INSERT INTO `customers`(`Customer_id`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`, `Payment_Details`) VALUES ('005','Patricia','Malley','34 Griffin Street','Kilkenny','G45hp','malley@yahoo.com','05698685','VISA 346');

INSERT INTO `employees`(`Employee_id`, `PPS_Number`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('1010','345856','Helen','Sullivan','56 Griffith Street','Limerick','E45gp','helenS@gmail.com','0687954');

INSERT INTO `employees`(`Employee_id`, `PPS_Number`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('1011','47597','Dermot','Ryan','23 Frier Street','Ennis','E34gpt','dermot@gmail.com','058647');

INSERT INTO `employees`(`Employee_id`, `PPS_Number`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('1012','346785','Tricia','Brian','23 Ryan Street','Limerick','E45gp','tricia@gmail.com','056677354');

INSERT INTO `employees`(`Employee_id`, `PPS_Number`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('1013','684986','Pat','Shea','45 Lorcan Street','Cork','p56GH','PAT@gmail.com','05867834');

INSERT INTO `employees`(`Employee_id`, `PPS_Number`, `First_Name`, `Last_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('1014','3654867','Susie','Brow','23 Mill Street','lIMERICK','g5BUP','Susie@gmail.com','05786686');

INSERT INTO `suppliers`(`Supplier_id`, `Supplier_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('145322','Dyson Electronics','23 Cecil Street','Dublin','D34gp','dysond@electronics.ie','0123464');

INSERT INTO `suppliers`(`Supplier_id`, `Supplier_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('356676','Henry','46 Frier Road','Belfast','B46HP','henry@electronics.uk','1095764');

INSERT INTO `suppliers`(`Supplier_id`, `Supplier_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('2644666','Hotpoint','76 Fryr Road','Galway','g46TP','hotpoint@electronics.ie','04758664');

INSERT INTO `suppliers`(`Supplier_id`, `Supplier_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('2656866','Vacpoint','75 Shally Road','Cork','C67gP','vacpoint@electronics.ie','021568664');

INSERT INTO `suppliers`(`Supplier_id`, `Supplier_Name`, `Address`, `City`, `Zip_Code`, `Email`, `Contact_Number`) VALUES ('46756788','ryanselectronics','455 Matthew Road','Kilkenny','K45gpt','ryans@electronics.ie','05488678');

INSERT INTO `products`(`Product_id`, `Supplier_id`, `Product_Name`, `Product_Type`, `Retail_Price`, `Supplier_Price`, `Quantity_In_Stock`) VALUES ('4756857','145322','Dyson Electronics','vacum cleaner','58.00','34.00','45');

INSERT INTO `products`(`Product_id`, `Supplier_id`, `Product_Name`, `Product_Type`, `Retail_Price`, `Supplier_Price`, `Quantity_In_Stock`) VALUES ('456777','356676','Henry','Dishwasher','196','125','56');

INSERT INTO `products`(`Product_id`, `Supplier_id`, `Product_Name`, `Product_Type`, `Retail_Price`, `Supplier_Price`, `Quantity_In_Stock`) VALUES ('3466763','2644666','Hotpoint','washing machine','256.00','196.00','56'); 

INSERT INTO `products`(`Product_id`, `Supplier_id`, `Product_Name`, `Product_Type`, `Retail_Price`, `Supplier_Price`, `Quantity_In_Stock`) VALUES ('346664','2656866','Vacpoint','Dryer','265.00','175.00','45');

INSERT INTO `products`(`Product_id`, `Supplier_id`, `Product_Name`, `Product_Type`, `Retail_Price`, `Supplier_Price`, `Quantity_In_Stock`) VALUES ('5677867','46756788','ryanselectronics','microwave','125.00','100.00','45');

INSERT INTO `supplier_orders`(`Supplier_Order_id`, `Supplier_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`, `Received_Date`) VALUES ('34676','145322','4756857','1010','23','34.00','2018-12-12','2019-01-10');

INSERT INTO `supplier_orders`(`Supplier_Order_id`, `Supplier_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`, `Received_Date`) VALUES ('3446363','356676','456777','1011','12','1400.00','2019-01-04','2019-01-20');

INSERT INTO `supplier_orders`(`Supplier_Order_id`, `Supplier_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`, `Received_Date`) VALUES ('23676','2644666','3466763','1012','3','588.00','2019-02-12','2019-02-25');

INSERT INTO `supplier_orders`(`Supplier_Order_id`, `Supplier_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`, `Received_Date`) VALUES ('234556','2656866','346664','1013','3','525','2019-01-23','2019-01-30');

INSERT INTO `supplier_orders`(`Supplier_Order_id`, `Supplier_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`, `Received_Date`) VALUES ('456677','46756788','5677867','1014','4','400.00','2019-03-23','2019-03-30');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('2356','001','456777','1012','1','196.00','2019-04-25');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('2345','005','4756857','1013','2','116','2019-01-10');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('6754','003','34664','1011','1','265.00','2018-01-29');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('75867','003','3466763','1','1013','256.00','2019-02-28');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('4553','002','5677867','1012','2','250.00','2019-04-10');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('4676','003','4756857','1011','1','58.00','2019-04-23');

INSERT INTO `customer_orders`(`Customer_Order_id`, `Customer_id`, `Product_id`, `Employee_id`, `Product_Quantity`, `Price_Paid`, `Order_Date`) VALUES ('37576','004','456777','1013','3','196.00','2019-04-10');