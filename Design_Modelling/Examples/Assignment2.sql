
CREATE DATABASE [Manufacturer]

create table Component
(
component_id int not null,
component_name varchar(30) not null,
description_ varchar(50) not null,
supplier_id int FOREIGN KEY REFERENCES Suppliers(supplier_id),
product_id int FOREIGN KEY REFERENCES Products(product_id)
CONSTRAINT Component_PK PRIMARY KEY(component_id)
)
go

create table Products
(
product_id int not null,
product_name varchar(30) not null,
quantity varchar(50) not null,
price money not null,
CONSTRAINT Products_PK PRIMARY KEY(product_id)
)
create table Suppliers
(
supplier_id int UNIQUE not null,
supplier_name varchar(30) not null,
adresse varchar(50) not null,
contact nvarchar(max) not null,
CONSTRAINT Suppliers_PK PRIMARY KEY(supplier_id)
)
create table Comp_supplier
(
supplier_id int not null,
component_id int not null

PRIMARY KEY (component_id, supplier_id),
)
create table Comp_product
(
component_id int not null
product_id int not null

PRIMARY KEY (component_id, product_id),
)