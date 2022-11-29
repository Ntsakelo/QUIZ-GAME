insert into images(image_name,image_description) values('Tomato','Tomatoes are the major dietary source of the antioxidant lycopene,
which has been linked to many health benefits, including reduced risk
of heart disease and cancer.
They are also a great source of vitamin C, potassium, folate, and
vitamin K.
Usually red when mature, tomatoes can also come in a variety of
colors, including yellow, orange, green, and purple.
Fresh tomatoes are low in carbs. The carb content consists mainly of
simple sugars and insoluble fibers. These fruits are mostly made up of
water.');
insert into images(image_name,image_description) values('Orange','Oranges are round, orange-colored citrus fruits that grow on trees.
They originally came from China, but today these nutritious
powerhouses are grown in warm climates around the world
Oranges are a good source of fiber.
Getting enough fiber on a daily basis is essential for overall health
and helps keep your digestive system healthy.
Oranges are also high in certain nutrients, especially vitamin C and
folate.');
insert into images(image_name,image_description) values('Moringa','Moringa is an important food source in some parts of the world. It can
be grown cheaply and easily, and retains much of its nutritional value
when dried. As an antioxidant, it seems to help protect cells from
damage.
Moringa is used for asthma, diabetes, breast-feeding, and many other
purposes.
People taking medication should consult a doctor before taking
moringa extract.')
insert into images(image_name,image_description) values('Muriwo','Green leafy vegetables are commonly served with any Sub-Saharan
African meal. They are known as muriwo in Zimbabwe, morogo in
Botswana, and sukuma wiki in Kenya.
Muriwo is an extremely nutrient-rich vegetable. It packs high amounts
of carotenoids, vitamin C, vitamin K, folic acid, iron, and calcium.');

-- 
-- (Tomatoes level 1)
insert into quiz(image_id,question,level) values(1,'Tomatoes reduce the risk of?',1)

insert into quiz(image_id,question,level) values(1,'Tomatoes are a great source of?',1)

insert into quiz(image_id,question,level) values(1,'The color of a mature tomato is?',1)

insert into quiz(image_id,question,level) values(1,'Tomatoes are mostly made up of
',1)
-- (Oranges level 1) 
insert into quiz(image_id,question,level) values(2,'Oranges grow on?',1);
insert into quiz(image_id,question,level) values(2,'Their origin is?',1);
insert into quiz(image_id,question,level) values(2,'Oranges are a good source of fibre',1);
insert into quiz(image_id,question,level) values(2,'Oranges are high in?',1);
-- (Moringa level 1)
insert into quiz(image_id,question,level) values(3,'Moringa can be grown cheaply',1);
insert into quiz(image_id,question,level) values(3,'To retain much of its nutrients Moringa should be?',1);
insert into quiz(image_id,question,level) values(3,'Before taking Moringa one should consult a?',1);
insert into quiz(image_id,question,level) values(3,'Moringa Is used for',1);
-- (Muriwo level 2)
insert into quiz(image_id,question,level) values(4,'In Zimbabwe greeny leafy vegetables are know as?',1);
insert into quiz(image_id,question,level) values(4,'Muriwo is served with?',1);
insert into quiz(image_id,question,level) values(4,'Muriwo packs amounts of',1);
insert into quiz(image_id,question,level) values(4,'Muriwo does not have',1);

--
insert into options(question_id,option,status,score) values(1,'heart disease','correct',25);
insert into options(question_id,option,status,score) values(1,'tooth ache','incorrect',25);
insert into options(question_id,option,status,score) values(1,'head ache','incorrect',25);
insert into options(question_id,option,status,score) values(1,'back pain','incorrect',25);

insert into options(question_id,option,status,score) values(2,'vitamin d','incorrect',25);


