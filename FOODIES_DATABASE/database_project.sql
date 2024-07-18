USE master;
GO

DROP DATABASE IF EXISTS FOODIES;
GO

CREATE DATABASE FOODIES
GO

USE FOODIES;
GO

CREATE TABLE [user_site] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [username] NVARCHAR(255) NOT NULL UNIQUE,
	[gender] NVARCHAR(6) NOT NULL,
	[image] TEXT NOT NULL,
    [email] NVARCHAR(255) NOT NULL,
    [phone] NVARCHAR(11) NOT NULL,
    [password] NVARCHAR(32) NOT NULL
);
GO

--CREATE TABLE [region] (
--    [id] NVARCHAR(2) NOT NULL PRIMARY KEY,
--    [name] NVARCHAR(255)
--);
--GO



--CREATE TABLE [address] (
--    [id] INT IDENTITY(1,1) PRIMARY KEY,
--    [user_id] INT NOT NULL,
--    [street] NVARCHAR(255),
 --   [address] NVARCHAR(255),
--    [city] NVARCHAR(255),
--    [country] NVARCHAR(255),
--    [postal_code] NVARCHAR(5),
--    [region_id] NVARCHAR(2) NOT NULL,
--    FOREIGN KEY([user_id]) REFERENCES [user_site]([id]) ON DELETE NO ACTION,
--    FOREIGN KEY([region_id]) REFERENCES [region]([id]) ON DELETE NO ACTION
--);
--GO

--insert into [address] values 
--('nvt', 'ascasc', 'VL', 'VN', '56432', 'AS'),
--('nvt', 'ascasc', 'VL', 'VN', '56432', 'SA');

--go

--select * from [user_site]
--select * from [user_address]
--select * from [address]

--CREATE TABLE [user_address] (
--    [username] VARCHAR(100) NOT NULL,
--    [address_id] INT,
--    --[is_default] INT,
--    FOREIGN KEY([username]) REFERENCES [user_site]([id]) ON DELETE NO ACTION,
--    FOREIGN KEY([address_id]) REFERENCES [address]([id]) ON DELETE NO ACTION
--);
--GO



CREATE TABLE [product_category] (
    [id] INT PRIMARY KEY,
    [category_name] NVARCHAR(255)
);
GO


CREATE TABLE [product] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [category_id] INT,
    [name] NVARCHAR(255),
    [description] TEXT,
    [product_image] NVARCHAR(255),
    FOREIGN KEY([category_id]) REFERENCES [product_category]([id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [product_item] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [qty_in_stock] INT,
    [product_image] NVARCHAR(255),
    [price] DECIMAL(16, 2)
);
GO

CREATE TABLE [shopping_cart] (
    [id] INT PRIMARY KEY,
    [user_id] INT,
    FOREIGN KEY([user_id]) REFERENCES [user_site]([id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [shopping_cart_item] (
    [id] INT PRIMARY KEY,
    [cart_id] INT,
    [product_item_id] INT,
    [qty] INT,
    FOREIGN KEY([cart_id]) REFERENCES [shopping_cart]([id]) ON DELETE NO ACTION,
    --FOREIGN KEY([product_item_id]) REFERENCES [product_item]([id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [order_status] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [status] NVARCHAR(255)
);
GO

CREATE TABLE [shop_order] (
    [id] INT PRIMARY KEY,
    [user_id] INT,
    [order_date] DATE,
    [shipping_address] INT,
    [order_total] DECIMAL(16, 2),
    [order_status_id] INT,
    --FOREIGN KEY([shipping_address]) REFERENCES [address]([id]) ON DELETE NO ACTION,
    FOREIGN KEY([order_status_id]) REFERENCES [order_status]([id]) ON DELETE CASCADE,
	FOREIGN KEY([user_id]) REFERENCES [user_site]([id]) ON DELETE CASCADE
);
GO

CREATE TABLE [order_line] (
    [id] INT PRIMARY KEY,
    [product_item_id] INT,
    [order_id] INT,
    [qty] INT,
    [price] DECIMAL(16, 2),
    --FOREIGN KEY([product_item_id]) REFERENCES [product_item]([id]) ON DELETE NO ACTION,
    FOREIGN KEY([order_id]) REFERENCES [shop_order]([id]) ON DELETE CASCADE
);
GO

CREATE TABLE [user_review] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [user_id] INT NOT NULL,
    [ordered_product_id] INT NOT NULL,
    [comment] VARCHAR(MAX),
    FOREIGN KEY([user_id]) REFERENCES [user_site]([id]) ON DELETE NO ACTION,
    FOREIGN KEY([ordered_product_id]) REFERENCES [order_line]([id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [admin] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [name] NVARCHAR(255),
    [username] NVARCHAR(255),
    [password] NVARCHAR(32),
	[avatar_img] TEXT
);
GO