use [FOODIES];
go
--user
insert into [user_site] values 
('Nguyen Cong Hieu', 'male', 'male.jpg', 'hieunc@gmail.com', '0975243876', 'ee608a70e3a536f1af3726bbd8bd0b55'), --nchieu
('Tran Gia Bao', 'male', 'male.jpg', 'baotg@gmail.com', '0654735653', 'e405faf13f35eb5807579887f2e44220'), --tgbao
('Bach Cong Chinh', 'male', 'male.jpg', 'chinhbc@gmail.com', '0846746347', 'b985d6107f576d8fce6bfc9c3ac7d57a'), --bcchinh
('Mai Phuc Thanh', 'male', 'male.jpg', 'thanhmp@gmail.com', '0846746999', 'e8dd6c0a56a63469dad05603a24531ee'), --mpthanh (1-4)
('Tran Van Cong', 'male', 'male.jpg', 'congtv@gmail.com', '0975243876', '192f99c517b1a72516fed808b975b2c8'),--tvcong
('Tran Dieu Nhi', 'female', 'female.jpg', 'nhitd@gmail.com', '0263563876', 'e6638793ff0d8d1f5e42908c494547e6'),--tdnhi
('Ong Cao Thang', 'male', 'male.jpg', 'thangoc@gmail.com', '0864243898', '6a8f03dd4e3b3520f4df9b76300431d3'),--octhang
('Dong Nhi', 'female', 'female.jpg', 'nhid@gmail.com', '0524243896', '902ef3ceda10c004c0310417e121e479'),--dnhi
('Nguyen Tran Thanh', 'male', 'male.jpg', 'thanhnt@gmail.com', '0745343877', '2c0813259df4854e1cbe0b61bff8b5d5'),--ntthanh (5-9)
('Tran Hieu Nghia', 'male', 'male.jpg', 'hieunghia@gmail.com', '0978269991', 'd6cb8ca4437003603e3f3f37deda8a81'), --nghiath
('Tran Thi Tuong Vi', 'female', 'female.jpg', 'vittt@gmail.com', '0929876301', '75401ea7400b2a1af78b23a0bea76b75'), --vittt
('Le Ba Khanh Linh', 'female', 'female.jpg', 'linhlb@gmail.com', '0962879812', '72b882cecd5eb9559756e5a8bd1541be'), --linhlb
('Nguyen Viet Phuc', 'male', 'male.jpg', 'phucnv@gmail.com', '0966537866', '3c1a64c8a5f40afa071d7ca5a96e9724'), --phucnv
('Le Thinh', 'male', 'male.jpg', 'thinhlee@gmail.com', '0793904185', 'fd43d4f43dba924d25adbb464e26776f'),--thinhlee (10-14)
('Trinh Cong Son', 'male', 'male.jpg', 'sontc@gmail.com', '0911139921', '3037b94dacb32ece1ef5ce2410e4a3f0'),--sontc
('Ho Quang Hieu', 'male', 'male.jpg', 'hieuhq@gmail.com', '0939113112', '2c3e7abe114fb20d27cc5fd677819cd4'),--hieuhq
('Bach Chau Trinh', 'female', 'female.jpg', 'trinhbc@gmail.com', '0333133133', '7c134b110ddd633b8041cefbddd4f881'),--trinhbc
('Ho Vi Bao', 'male', 'male.jpg', 'baohv@gmail.com', '0981981204', 'bd05c6d0466d7888d9bc10639d207dc8'),--vitc
('Trinh Chi Vi', 'female', 'female.jpg', 'vitc@gmail.com', '0135213124', '5f699ae91554e3883bb746447e2a41c0'),--vitc (15-19)
('thanhdepchaivcl', N'male', N'male.jpg', N'thanhdepchaivcl@gmail.com', N'0213123423', N'81dc9bdb52d04dc20036dbd8313ed055'),
('thosanlesbian', N'female', N'female.jpg', N'lesbianhunter@lmao.com', N'0358374659', N'81dc9bdb52d04dc20036dbd8313ed055'),
('susu123', N'female', N'female.jpg', N'sugiabiengioi@gmail.com', N'0857365924', N'81dc9bdb52d04dc20036dbd8313ed055'),
('vanvatthuagocu', N'male', N'male.jpg', N'vanvatthuagocu@email.com', N'0126836482', N'81dc9bdb52d04dc20036dbd8313ed055'),
('skibidi123', N'female', N'female.jpg', N'dopdopyesyes@gmail.com', N'0124738473', N'81dc9bdb52d04dc20036dbd8313ed055'); --(20-24)
go


--category
insert into product_category values 
(1, 'Non-vegetarian'),
(2, 'Vegetarian'),
(3, 'Drinks'),
(4, 'Others');
go

--product
--none-vegetarian
INSERT INTO product values('1', 'Com Tam', 'Com Tam is a Vietnamese dish featuring broken rice served with grilled pork, egg, pickled vegetables, and fish sauce.', 'comtam.jpg'); 
INSERT INTO product values('1', 'Pizza Super Supreme', 'Super Supreme pizza typically includes a variety of toppings like pepperoni, sausage, bell peppers, onions, olives, mushrooms, and sometimes additional meats or vegetables.', 'pizza.jpg'); 
INSERT INTO product values('1', 'Fried Chicken', 'Fried chicken is a dish where chicken pieces are coated in seasoned batter and deep-fried until crispy and golden brown.', 'fried-chicken.jpg'); 
INSERT INTO product values('1', 'Hamburger', 'A hamburger consists of a grilled beef patty, usually served in a bun, often with lettuce, tomato, cheese, and condiments.', 'hamburger.jpg'); 
INSERT INTO product values('1', 'Korean Spicy Noodles', 'Korean spicy noodles are typically ramen noodles coated in a fiery, flavorful sauce made with gochujang (chili paste) and other spices.', 'korean-spicy-noodles.jpg'); 
INSERT INTO product values('1', 'Banh Mi', 'Banh Mi is a Vietnamese sandwich featuring a crispy baguette filled with meats, pickled vegetables, cilantro, and chili peppers.', 'banh-mi.jpg'); 
INSERT INTO product values('1', 'Ramen', 'Ramen is a Japanese noodle soup consisting of Chinese-style wheat noodles in a flavorful broth, often topped with meat, eggs, and vegetables.', 'ramen.jpg'); 

--vegetarian
INSERT INTO product VALUES('2','Caprese Salad','Caprese Salad is a simple Italian dish made with fresh tomatoes, mozzarella cheese, basil leaves, olive oil, and balsamic vinegar, often seasoned with salt and pepper.','salad.jpg');
INSERT INTO product VALUES('2','Falafel','Deep-fried chickpea balls, often served in pita bread with veggies and tahini sauce.','falafel.jpg');
INSERT INTO product VALUES('2','Margherita Pizza','Margherita Pizza is a classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves, often drizzled with olive oil and seasoned with salt.','margherita-pizza.jpg');
INSERT INTO product VALUES('2','Pho Chay','A vegetarian version of the traditional Vietnamese noodle soup, made with vegetable broth, rice noodles, tofu, and various vegetables.','pho.jpg');
INSERT INTO product VALUES('2','Lentil Soup','Lentil soup: hearty, nutritious dish with lentils, vegetables, herbs, and spices, simmered until tender, perfect for comforting meals year-round.','lentil-soup.jpg');
INSERT INTO product VALUES('2','Vegan Bibimbap','Bibimbap is a Korean rice dish topped with assorted vegetables, and often meat, served with spicy gochujang sauce.','bibimbap.jpg');
INSERT INTO product VALUES('2','Japchae','Japchae is a Korean dish made with stir-fried sweet potato noodles, vegetables, mushrooms, and sometimes meat or tofu, seasoned with soy sauce and sesame oil.','japchae.jpg');

--drinks
INSERT INTO product VALUES('3', 'Water', 'Water is a fundamental substance for life, composed of hydrogen and oxygen. It is essential for hydration and necessary for many bodily functions.', 'water.jpg');
INSERT INTO product VALUES('3', 'Pepsi', 'Pepsi is a popular carbonated cola beverage known for its sweet taste and widespread global consumption.', 'pepsi.jpg');
INSERT INTO product VALUES('3', 'Orange Juice', 'Orange juice is a refreshing beverage made from squeezing oranges, known for its tangy and sweet flavor.', 'orange-juice.jpg');
INSERT INTO product VALUES('3', '7 Up', '7 Up is a lemon-lime flavored soda known for its crisp and refreshing taste, enjoyed worldwide.', '7-up.jpg');
INSERT INTO product VALUES('3', 'Vinamilk', 'Vinamilk is a Vietnamese dairy company known for producing a variety of milk and dairy products, widely recognized in Vietnam and internationally.', 'vinamilk.jpg');
INSERT INTO product VALUES('3', 'Matcha Latte', 'Matcha latte is a green tea-based beverage made with finely ground matcha powder, steamed milk, and sometimes sweetened with honey or sugar.', 'matcha.jpg');
INSERT INTO product VALUES('3', 'Mango Smoothies', 'A mango smoothie blends ripe mangoes with yogurt, milk, and honey, creating a refreshing and creamy drink enjoyed chilled.', 'smoothie.jpg');

--others
INSERT INTO product VALUES('4', 'Cakes', 'Cake is a sweet dessert made from flour, sugar, eggs, and butter, often baked and decorated with frosting or icing.', 'cake.jpg')
INSERT INTO product VALUES('4', 'Banh Trang Tron', 'Banh Trang Tron is a Vietnamese street food salad made with rice paper, herbs, peanuts, and various sauces.', 'banh-trang-tron.jpg')
INSERT INTO product VALUES('4', 'Pannacotta', 'Panna cotta is an Italian dessert made of cream, milk, sugar, and gelatin, often served with fruit coulis or caramel.', 'panna.jpg')
INSERT INTO product VALUES('4', 'Fruit', 'Fruit refers to the edible part of plants, typically sweet or sour, such as apples, oranges, bananas, and berries, enjoyed fresh or cooked.', 'fruit.jpg')
INSERT INTO product VALUES('4', 'Beer', 'Beer is an alcoholic beverage made from fermented grains, hops, yeast, and water, enjoyed for its various flavors, styles, and cultural significance worldwide.', 'beer.jpg')
INSERT INTO product VALUES('4', 'Vegetable', 'Vegetables are nutrient-rich plant foods eaten raw or cooked, providing essential vitamins, minerals, and fiber for a healthy diet.', 'veget.jpg')
INSERT INTO product VALUES('4', 'Spice', 'Spices are aromatic plant substances used to flavor food, derived from seeds, fruits, roots, or bark, enhancing dishes globally.', 'spice.jpg')

--pro-item
--none vegetarian
INSERT INTO product_item VALUES('50','com-tam.jpg','3')
INSERT INTO product_item VALUES('20', 'pizza-item.jpg', '10')
INSERT INTO product_item VALUES('100', 'fried-chicken-item.jpg', '5')
INSERT INTO product_item VALUES('200', 'hamburger-item.jpg', '6')
INSERT INTO product_item VALUES('80', 'korean-noodles-item.jpg', '9')
INSERT INTO product_item VALUES('400', 'banh-mi-item.jpg', '15')
INSERT INTO product_item VALUES('50', 'ramen-item.jpg', '20')

--vegetarian
INSERT INTO product_item VALUES('100', 'salad-item.jpg', '8')
INSERT INTO product_item VALUES('20', 'falafel-item.jpg', '10')
INSERT INTO product_item VALUES('50', 'vegen-pizza.jpg', '14')
INSERT INTO product_item VALUES('120', 'pho-item.jpg', '17')
INSERT INTO product_item VALUES('50', 'soup-item.jpg', '4')
INSERT INTO product_item VALUES('40', 'bibimbap-item.jpg', '6')
INSERT INTO product_item VALUES('60', 'japchae-item.jpg', '8')

--drink
INSERT INTO product_item VALUES('500', 'water-item.jpg', '1')
INSERT INTO product_item VALUES('200', 'pepsi-item.jpg', '2')
INSERT INTO product_item VALUES('60', 'juice-item.jpg', '5')
INSERT INTO product_item VALUES('100', '7-up-item.jpg', '2')
INSERT INTO product_item VALUES('400', 'milk-item.jpg', '4')
INSERT INTO product_item VALUES('70', 'latte-item.jpg', '8')
INSERT INTO product_item VALUES('150', 'smoothie-item.jpg', '9')

--others
INSERT INTO product_item VALUES('60', 'cake-item.jpg', '25')
INSERT INTO product_item VALUES('200', 'banh-trang-tron-item.jpg', '8')
INSERT INTO product_item VALUES('500', 'panna-item.jpg', '2')
INSERT INTO product_item VALUES('100', 'fruit-item.jpg', '18')
INSERT INTO product_item VALUES('600', 'beer-item.jpg', '5')
INSERT INTO product_item VALUES('400', 'vegetable-item.jpg', '6')
INSERT INTO product_item VALUES('300', 'spice-item.jpg', '4')

--reigion
--INSERT INTO region VALUES
--('AS', 'Asia'), 
--('EU', 'Europe'), 
--('AN', 'Antarctica'), 
--('AF', 'Africa'), 
--('OC', 'Oceania'), 
--('NA', 'North America'), 
--('SA', 'South America');
--GO

--[order_status]
INSERT INTO [order_status] VALUES
('Ordered'),
('Shipping'),
('Arrived');
GO


--[shop_order]
INSERT INTO [shop_order] VALUES
(1, '2', '2024-03-20', '', '469', '3'),
(2, '3', '2024-04-16', '', '239', '2'),
(3, '2', '2024-05-17', '', '331', '1'),
(4, '4', '2024-07-12', '', '330', '2'),
(5, '5', '2023-07-12', '', '528', '1'),
(6, '5', '2024-07-23', '', '690', '2'),
(7, '6', '2023-06-07', '', '926', '3'),
(8, '6', '2024-03-02', '', '854', '2'),
(9, '7', '2024-04-05', '', '261', '1'),
(10, '7', '2023-08-14', '', '418', '3'),
(11, '8', '2023-01-16', '', '1131', '3'),
(12, '8', '2024-02-18', '', '568', '1'),
(13, '9', '2024-05-20', '', '734', '2'),
(14, '9', '2023-10-23', '', '620', '3'),
(15, '10', '2023-11-02', '', '156', '2'),
(16, '10', '2024-07-05', '', '128', '1'),
(17, '11', '2023-12-10', '', '209', '2'),
(18, '11', '2023-09-13', '', '364', '3'),
(19, '12', '2024-07-14', '', '436', '2'),
(20, '12', '2023-12-17', '', '323', '2'),
(21, '13', '2024-07-21', '', '138', '3'),
(22, '13', '2023-11-25', '', '166', '1'),
(23, '14', '2024-06-26', '', '185', '1'),
(24, '14', '2024-05-28', '', '374', '3'),
(25, '15', '2023-04-20', '', '589', '1'),--1
(26, '16', '2023-01-20', '', '230', '3'),--2
(27, '17', '2024-02-20', '', '238', '2'),--3
(28, '18', '2023-11-20', '', '91', '1'),--4
(29, '19', '2024-02-20', '', '359', '3'),--5
(30, '15', '2024-06-20', '', '10', '2'),--6
(31, '16', '2024-04-20', '', '80', '1'),--7
(32, '17', '2024-07-20', '', '31', '3'),--8
(33, '18', '2023-12-20', '', '44', '2'),--9
(34, '19', '2024-03-20', '', '45', '1'),--10
(35, '20', CAST(N'2024-07-14' AS Date), 11, CAST(20.00 AS Decimal(16, 2)), 1),
(36, '20', CAST(N'2024-07-14' AS Date), 11, CAST(31.00 AS Decimal(16, 2)), 1),
(37, '21', CAST(N'2024-07-14' AS Date), 11, CAST(37.00 AS Decimal(16, 2)), 1),
(38, '21', CAST(N'2024-07-14' AS Date), 11, CAST(27.00 AS Decimal(16, 2)), 1),
(39, '22', CAST(N'2024-07-14' AS Date), 11, CAST(39.00 AS Decimal(16, 2)), 1),
(40, '22', CAST(N'2024-07-14' AS Date), 11, CAST(18.00 AS Decimal(16, 2)), 1),
(41, '23', CAST(N'2024-07-14' AS Date), 11, CAST(25.00 AS Decimal(16, 2)), 1),
(42, '23', CAST(N'2024-07-14' AS Date), 11, CAST(56.00 AS Decimal(16, 2)), 1),
(43, '24', CAST(N'2024-07-14' AS Date), 11, CAST(277.00 AS Decimal(16, 2)), 1),
(44, '24', CAST(N'2024-07-14' AS Date), 11, CAST(105.00 AS Decimal(16, 2)), 1);
GO

--[order_line]
INSERT INTO [order_line] VALUES
(1, '1', '1', '16', '3'),
(2, '4', '1', '17', '6'),
(3, '5', '1', '1', '9'), 
(4, '2', '1', '4', '10'),
(5, '6', '1', '18', '15'),
(6, '8', '2', '6', '8' ),
(7, '10', '2', '4', '14' ),
(8, '15', '2', '3', '1' ),
(9, '8', '2', '8', '8' ),
(10, '5', '2', '2', '9' ),
(11, '9', '2', '5', '10' ),
(12, '18', '3', '8', '2' ),
(13, '20', '3', '2', '8' ),
(14, '22', '3', '5', '25' ),
(15, '25', '3', '7', '18' ),
(16, '27', '3', '8', '6' ),
(17, '28', '4', '20', '4' ),
(18, '16', '4', '16', '2' ),
(19, '19', '4', '4', '4' ),
(20, '17', '4', '3', '5' ),
(21, '10', '4', '11', '17' ),
(22, '5', '5', '46', '9'),
(23, '16', '5', '15', '2'),
(24, '24', '5', '42', '2'), --528
(25, '19', '6', '35', '4'),
(26, '1', '6', '50', '3'),
(27, '9', '6', '40', '10' ),--690
(28, '23', '7', '2', '8' ),
(29, '18', '7', '5', '2' ),
(30, '22', '7', '36', '25' ),--926
(31, '10', '8', '49', '14' ),
(32, '9', '8', '8', '10' ),
(33, '12', '8', '22', '4' ),--854
(34, '1', '9', '25', '3' ),
(35, '24', '9', '21', '2' ),
(36, '28', '9', '36', '4' ),--261
(37, '20', '10', '30', '8' ),
(38, '24', '10', '29', '2' ),
(39, '4', '10', '20', '6' ),--418
(40, '23', '11', '36', '8' ),
(41, '11', '11', '39', '17' ),
(42, '19', '11', '45', '4' ),--1131
(43, '16', '12', '29', '2' ),
(44, '13', '12', '50', '6' ),
(45, '10', '12', '15', '14' ),--568
(46, '20', '13', '23', '8' ),
(47, '2', '13', '45', '10' ),
(48, '24', '13', '50', '2' ),--734
(49, '1', '14', '43', '3' ),
(50, '11', '14', '22', '17' ),
(51, '5', '14', '13', '9' ),--620 (5-14)
(52, '5', '15', '3', '5'),
(53, '11', '15', '5', '17'),
(54, '8', '15', '7', '8'), 
(55, '9', '16', '9', '10'),
(56, '17', '16', '2', '5'),
(57, '19', '16', '7', '4' ),
(58, '12', '17', '9', '10' ),
(59, '15', '17', '19', '1' ),
(60, '2', '17', '10', '10' ),
(61, '5', '18', '8', '9' ),
(62, '4', '18', '12', '6' ), 
(63, '7', '18', '11', '20' ),
(64, '8', '19', '8', '8' ), 
(65, '22', '19', '12', '25' ), 
(66, '25', '20', '4', '18' ),
(67, '14', '20', '7', '8' ), 
(68, '18', '20', '8', '2' ),
(69, '21', '20', '19', '9' ),
(70, '12', '21', '21', '4' ), 
(71, '11', '21', '2', '17' ),
(72, '9', '21', '2', '10' ),
(73, '7', '22', '3', '20' ), 
(74, '4', '22', '6', '6' ),
(75, '2', '22', '7', '10' ),
(76, '4', '23', '8', '6' ),
(77, '5', '23', '9', '9' ),
(78, '12', '23', '14', '4' ),
(79, '9', '24', '12', '10' ),
(80, '26', '24', '34', '5' ),
(81, '12', '24', '21', '4' ), --(15-24)
(82, '3', '25', '16', '5'),
(83, '2', '25', '17', '10'),
(84, '5', '25', '1', '9'), 
(85, '8', '25', '4', '6'),
(86, '11', '25', '18', '17'),
(87, '14', '26', '6', '8' ),
(88, '10', '26', '4', '14' ),
(89, '16', '26', '3', '2' ),
(90, '9', '26', '8', '10' ),
(91, '17', '30', '2', '5' ),
(92, '23', '26', '5', '8' ),
(93, '18', '27', '8', '2' ),
(94, '21', '27', '2', '9' ),
(95, '22', '27', '5', '25' ),
(96, '21', '27', '7', '9' ),
(97, '24', '27', '8', '2' ),
(98, '28', '31', '20', '4' ),
(99, '16', '28', '16', '2' ),
(100, '18', '28', '4', '2' ),
(101, '4', '28', '3', '6' ),
(102, '1', '28', '11', '3' ),
(103, '28', '29', '20', '4' ),
(104, '15', '29', '16', '2' ),
(105, '14', '32', '4', '4' ),
(106, '17', '32', '3', '5' ),
(107, '11', '29', '3', '17' ),
(108, '6', '34', '3', '15' ),
(109, '10', '29', '3', '14' ),
(110, '12', '33', '11', '4' ),
(111, '10', '29', '11', '14' ),
(112, 1, 35, 2, CAST(3.00 AS Decimal(16, 2))),
(113, 5, 35, 1, CAST(9.00 AS Decimal(16, 2))),
(114, 3, 35, 1, CAST(5.00 AS Decimal(16, 2))),
(115, 3, 36, 1, CAST(5.00 AS Decimal(16, 2))),
(116, 2, 36, 1, CAST(10.00 AS Decimal(16, 2))),
(117, 28, 36, 4, CAST(4.00 AS Decimal(16, 2))),
(118, 2, 37, 1, CAST(10.00 AS Decimal(16, 2))),
(119, 26, 37, 5, CAST(5.00 AS Decimal(16, 2))),
(120, 24, 37, 1, CAST(2.00 AS Decimal(16, 2))),
(121, 7, 38, 1, CAST(20.00 AS Decimal(16, 2))),
(122, 15, 38, 3, CAST(1.00 AS Decimal(16, 2))),
(123, 12, 38, 1, CAST(4.00 AS Decimal(16, 2))),
(124, 2, 39, 1, CAST(10.00 AS Decimal(16, 2))),
(125, 3, 39, 1, CAST(5.00 AS Decimal(16, 2))),
(126, 20, 39, 3, CAST(8.00 AS Decimal(16, 2))),
(127, 14, 40, 1, CAST(8.00 AS Decimal(16, 2))),
(128, 16, 40, 3, CAST(2.00 AS Decimal(16, 2))),
(129, 18, 40, 2, CAST(2.00 AS Decimal(16, 2))),
(130, 3, 41, 1, CAST(5.00 AS Decimal(16, 2))),
(131, 18, 41, 1, CAST(2.00 AS Decimal(16, 2))),
(132, 25, 41, 1, CAST(18.00 AS Decimal(16, 2))),
(133, 4, 42, 1, CAST(6.00 AS Decimal(16, 2))),
(134, 9, 42, 1, CAST(10.00 AS Decimal(16, 2))),
(135, 7, 42, 2, CAST(20.00 AS Decimal(16, 2))),
(136, 26, 43, 14, CAST(5.00 AS Decimal(16, 2))),
(137, 19, 43, 9, CAST(4.00 AS Decimal(16, 2))),
(138, 25, 43, 7, CAST(18.00 AS Decimal(16, 2))),
(139, 21, 43, 5, CAST(9.00 AS Decimal(16, 2))),
(140, 3, 44, 1, CAST(5.00 AS Decimal(16, 2))),
(141, 4, 44, 8, CAST(6.00 AS Decimal(16, 2))),
(142, 2, 44, 5, CAST(10.00 AS Decimal(16, 2))),
(143, 16, 44, 1, CAST(2.00 AS Decimal(16, 2)));
GO

--admin
insert into [admin] 
values
('hieu', 'nch', '905ad72a4d7e2d581adf8ced8e6cebe7', 'conghieu.jpg'), --nch123
('thanh', 'mpt', '6491f04915dff0da1374d9cfcdeef676', 'phucthanh.jpg'), --mpt123
('bao', 'tgb', '1257d73d661885281103bf8dc84de3b2', 'giabao.jpg'), --tgb123
('chinh', 'bcc', '2692306c452a3247dbc4b7b99bc44470', 'congchinh.jpg'); --bcc123
go





--using this query after delete a user (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [user_site]; DBCC CHECKIDENT ('user_site', RESEED, @maxId);

DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [user_site]; IF @maxId IS NULL BEGIN DBCC CHECKIDENT ('user_site', RESEED, 0); END ELSE BEGIN DBCC CHECKIDENT ('user_site', RESEED, @maxId); END


--using this query after delete a region (excute twice)
--DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM region; DBCC CHECKIDENT ('region', RESEED, @maxId);


--using this query after delete a product_category (excute twice)
--DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM product_category; DBCC CHECKIDENT ('product_category', RESEED, @maxId);


--using this query after delete a product (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM product; DBCC CHECKIDENT ('product', RESEED, @maxId);


--using this query after delete a product_item (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM product_item; DBCC CHECKIDENT ('product_item', RESEED, @maxId);


--shopping_cart_item


--using this query after delete a shopping_cart_item (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM shopping_cart_item; DBCC CHECKIDENT ('shopping_cart_item', RESEED, @maxId);



--shopping_cart


--using this query after delete a shopping_cart (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM shopping_cart; DBCC CHECKIDENT ('shopping_cart', RESEED, @maxId);


--using this query after delete a [order_status] (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [order_status]; DBCC CHECKIDENT ('order_status', RESEED, @maxId);


--using this query after delete a [shop_order] (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [shop_order]; DBCC CHECKIDENT ('[shop_order]', RESEED, @maxId);

select * from [shop_order]

select * from [order_line] ol
join [shop_order] so
on so.id = ol.order_id


--COUNTING SUMARY USER ORDERED
select us.id, us.username, us.email, us.phone, COALESCE(SUM(so.order_total), 0) as [total_payment] , count(so.[user_id]) as [total_bill]
from shop_order so
right join user_site us
on so.[user_id] = us.id
group by us.id, us.username, us.email, us.phone
order by [total_payment] desc



SELECT us.id, us.username, us.gender, us.email, us.phone, COALESCE(SUM(so.order_total), 0) AS total_payment, COUNT(so.user_id) AS total_bill FROM shop_order so RIGHT JOIN user_site us ON so.user_id = us.id 
GROUP BY us.id, us.username, us.gender, us.email, us.phone ORDER BY total_payment DESC


select order_id, sum(qty*price) from [order_line] group by order_id

select so.id, us.username, so.order_date, so.order_total
from shop_order so
join user_site us 
on so.[user_id] = us.id
where us.id = 4

select * from order_line

--select order list from a user
select so.id, p.[name], sum(ol.qty) as [qty], sum(ol.price) as [price], sum(ol.qty*ol.price) as [total_price], so.order_date
from order_line ol
join shop_order so on so.id = ol.order_id
join product_item [pi] on [pi].id = ol.product_item_id
join product p on p.id = [pi].id
where so.user_id = 2
group by so.id, p.[name], so.order_date
order by so.id

--get total
select id, order_total from shop_order where user_id = 2 order by id

--delete order_line
delete from order_line where order_id in ((select distinct ol.order_id
from order_line ol
join shop_order so on so.id = ol.order_id
where so.user_id = 2))


--delete shop_order
delete from shop_order where user_id = 3
delete from user_site where id = 4


--using this query after delete a [order_line] (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [order_line]; DBCC CHECKIDENT ('order_line', RESEED, @maxId);


--[user_review]


--using this query after delete a [user_review] (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [user_review]; DBCC CHECKIDENT ('user_review', RESEED, @maxId);


--using this query after delete a [admin] (excute twice)
DECLARE @maxId INT; SELECT @maxId = MAX(id) FROM [admin]; DBCC CHECKIDENT ('admin', RESEED, @maxId);

--DASHBOARD
--revenue
select sum(order_total) as [revenue] from shop_order

select * from product_item
--cost
select [pi].id, p.name, price/2 as [cost] 
from product_item [pi]
join product p on p.id = [pi].id

select * from user_site
--profit
select sum(order_total) - (select sum(price/2)*7 as [cost] from product_item) as [profit] from shop_order

--amount sales product
select sum(qty) as [sales_product] from order_line 

select ol.product_item_id, p.name, sum(ol.qty) as [order_qty], ol.price
from order_line ol
join product p on p.id = ol.product_item_id
group by ol.product_item_id, p.name, ol.price
order by order_qty desc

--most sales products
select top(5) ol.product_item_id, p.name, sum(ol.qty) as number_of_sales_product 
from order_line ol
join product p on p.id = ol.product_item_id
group by product_item_id, p.name
order by number_of_sales_product desc

--bought in month
select COUNT(*) as [bought_in_month], sum(order_total) as [total_income] from shop_order where MONTH(order_date) = 7
select sum(order_total) as [total_income] from shop_order where MONTH(order_date) = 7
select * from shop_order

--admin home view user
select * from user_site

select top(10) us.username, us.email, us.phone, sum(so.order_total) as [order_total] from shop_order so
join user_site us on us.id = so.user_id
group by us.username, us.email, us.phone
order by order_total desc

--admin home view order (newest order)

select top(10) us.username, us.email, so.order_date, so.order_total, os.status from shop_order so 
join user_site us on us.id = so.user_id 
join order_status os on os.id = so.order_status_id
order by so.order_date desc

--get latest year
select top(1) year(so.order_date) as [latest_year]
from shop_order so 
join user_site us on us.id = so.user_id 
join order_status os on os.id = so.order_status_id
order by so.order_date desc

--get earliest year
select top(1) year(so.order_date) as [earliest_year]
from shop_order so 
join user_site us on us.id = so.user_id 
join order_status os on os.id = so.order_status_id
order by so.order_date asc
