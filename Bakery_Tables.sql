CREATE TABLE CUSTOMER
(
     CustomerId int IDENTITY (1,1) PRIMARY KEY,
     CustomerName varchar (50) NOT NULL UNIQUE,
     Location varchar (50) NULL,
     Phone varchar (50) NOT NULL,
)
GO

CREATE TABLE PRODUCT
(
     ProductId int IDENTITY (1,1) PRIMARY KEY,
	 CustomerId int NULL,
     ProductName varchar (50) NOT NULL UNIQUE,
)
GO

CREATE TABLE DELIVERY
(
     CustomerName varchar (50) PRIMARY KEY,
	 DeliveryId int UNIQUE,
     DeliveryName varchar (50) NULL,
     Location varchar (50) NULL,
)
GO

CREATE TABLE STOCK
(
     StockId int IDENTITY (1,1) PRIMARY KEY,
     ProductId int NULL,
     Quantity int NOT NULL,
)
GO

INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Emeka', 'Abia', '08066557788')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Godwin', 'Lagos', '07037222908')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Semilore', 'Ogun', '09019945577')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Mike', 'Lagos', '09090402321')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Jimmy', 'Lagos', '08002323981')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Hassan', 'Nassarawa', '08067675321')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Love', 'Lagos', '09033220007')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Ampita', 'Lagos', '09087654321')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Jonathan', 'Lagos', '09080304060')
INSERT INTO CUSTOMER (CustomerName, Location, Phone) VALUES ('Kehinde', 'Osun', '07012133558')
GO

INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('1', 'BeefRoll')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('2', 'MeatPie')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('6', 'GigiRoll')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('7', 'ChickenPie')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('8', 'Peanut')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('9', 'SuperRoll')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('10', 'Doughnut')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('12', 'ChinChin')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('12', 'KuliKuli')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('13', 'EggRoll')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('14', 'Cookie')
INSERT INTO PRODUCT (CustomerId, ProductName) VALUES ('1', 'Bread')
GO

INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('8', 'BreadOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('1', 'SnackService', 'Abia')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('2', 'SnackOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('6', 'BreadOrder', 'Nassarawa')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('5', 'SnacksOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('9', 'SnacksOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('10', 'BreadOrder', 'Osun')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('7', 'SnacksOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('4', 'SnacksOrder', 'Lagos')
INSERT INTO DELIVERY (DeliveryId, DeliveryName, Location) VALUES ('3', 'BreadOrder', 'Ogun')
GO

INSERT INTO STOCK (ProductId, Quantity) VALUES ('1', '50')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('3', '57')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('7', '30')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('8', '52')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('9', '61')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('10', '101')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('11', '22')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('12', '49')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('13', '80')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('14', '41')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('15', '39')
INSERT INTO STOCK (ProductId, Quantity) VALUES ('16', '94')
GO