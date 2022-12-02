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
insert into images(image_name,image_description) values('Carrot','Carrots are biennials that grow in loose soil and in cooler climates. There are wild carrots and domesticated carrots, and the part that most people eat is the taproot. This vegetable contains carotene, which helps you stay healthy and sharp-sighted');
insert into images(image_name,image_description) values('Muriwa','Green leafy vegetables are commonly served with any Sub-Saharan
African meal. They are known as muriwo in Zimbabwe, morogo in
Botswana, and sukuma wiki in Kenya.
Muriwo is an extremely nutrient-rich vegetable. It packs high amounts
of carotenoids, vitamin C, vitamin K, folic acid, iron, and calcium.');
insert into images(image_name,image_description) values('Not a Veg or Fruit','Not recognized as a fruit or vegetable');

insert into quiz(image_id,question,level) values(1,'Tomatoes reduce the risk of?',1);

insert into quiz(image_id,question,level) values(1,'Tomatoes are a great source of?',1);

insert into quiz(image_id,question,level) values(1,'The color of a mature tomato is?',1);

insert into quiz(image_id,question,level) values(1,'Tomatoes are mostly made up of
',1);
 
insert into quiz(image_id,question,level) values(2,'Oranges grow on?',1);
insert into quiz(image_id,question,level) values(2,'Their origin is?',1);
insert into quiz(image_id,question,level) values(2,'Oranges are a good source of fibre',1);
insert into quiz(image_id,question,level) values(2,'Oranges are high in?',1);


insert into quiz(image_id,question,level) values(3,'Are carrots good for your eyes',2);
insert into quiz(image_id,question,level) values(3,'Which diseases are associated with carrots benefit',2);
insert into quiz(image_id,question,level) values(3,'Do carrots improve the skin health?',2);
insert into quiz(image_id,question,level) values(3,'What type of a vegetable is a carrot',2);

insert into quiz(image_id,question,level) values(4,'In Zimbabwe greeny leafy vegetables are know as?',1);
insert into quiz(image_id,question,level) values(4,'Muriwo is served with?',1);
insert into quiz(image_id,question,level) values(4,'Muriwo packs amounts of',1);
insert into quiz(image_id,question,level) values(4,'Muriwo does not have',1);


insert into options(question_id,option,status,score) values(1,'heart disease','correct',25);
insert into options(question_id,option,status,score) values(1,'tooth ache','incorrect',0);
insert into options(question_id,option,status,score) values(1,'head ache','incorrect',0);
insert into options(question_id,option,status,score) values(1,'back pain','incorrect',0);

insert into options(question_id,option,status,score) values(2,'vitamin d','incorrect',0);
insert into options(question_id,option,status,score) values(2,'vitamin c','correct',25);
insert into options(question_id,option,status,score) values(2,'vitamin j','incorrect',0);
insert into options(question_id,option,status,score) values(2,'vitamin e','incorrect',0);

insert into options(question_id,option,status,score) values(3,'yellow','incorrect',0);
insert into options(question_id,option,status,score) values(3,'pink','incorrect',0);
insert into options(question_id,option,status,score) values(3,'red','correct',25);
insert into options(question_id,option,status,score) values(3,'blue','incorrect',0);

insert into options(question_id,option,status,score) values(4,'fat','incorrect',0);
insert into options(question_id,option,status,score) values(4,'fibre','incorrect',0);
insert into options(question_id,option,status,score) values(4,'sugar','incorrect',0);
insert into options(question_id,option,status,score) values(4,'water','correct',25);

insert into options(question_id,option,status,score) values(5,'water','incorrect',0);
insert into options(question_id,option,status,score) values(5,'trees','correct',25);
insert into options(question_id,option,status,score) values(5,'not enough information','incorrect',0);
insert into options(question_id,option,status,score) values(5,'grass','incorrect',0);

insert into options(question_id,option,status,score) values(6,'India','incorrect',0);
insert into options(question_id,option,status,score) values(6,'madgascar','incorrect',0);
insert into options(question_id,option,status,score) values(6,'Botswana','incorrect',0);
insert into options(question_id,option,status,score) values(6,'China','correct',25);

insert into options(question_id,option,status,score) values(7,'true','correct',25);
insert into options(question_id,option,status,score) values(7,'false','incorrect',0);
insert into options(question_id,option,status,score) values(7,'provide enough information','incorrect',0);
insert into options(question_id,option,status,score) values(7,'they are a good source of vitamin d','incorrect',0);

insert into options(question_id,option,status,score) values(8,'vitamin d','incorrect',0);
insert into options(question_id,option,status,score) values(8,'vitamin c','correct',25);
insert into options(question_id,option,status,score) values(8,'vitamin k','incorrect',0);
insert into options(question_id,option,status,score) values(8,'oxygen','incorrect',0);

insert into options(question_id,option,status,score) values(9,'Not sure','incorrect',0);
insert into options(question_id,option,status,score) values(9,'Yes they have vitamin A','correct',25);
insert into options(question_id,option,status,score) values(9,'Not all the time','incorrect',0);
insert into options(question_id,option,status,score) values(9,'Could be','incorrect',0);

insert into options(question_id,option,status,score) values(10,'Back pain','incorrect',0);
insert into options(question_id,option,status,score) values(10,'reduces risk of flu','incorrect',0);
insert into options(question_id,option,status,score) values(10,'help with stomach cramps','incorrect',0);
insert into options(question_id,option,status,score) values(10,'reduces risk of cancer','correct',25);

insert into options(question_id,option,status,score) values(11,'sufficient','correct',25);
insert into options(question_id,option,status,score) values(11,'insufficient','incorrect',0);
insert into options(question_id,option,status,score) values(11,'They make your skin oily','incorrect',0);
insert into options(question_id,option,status,score) values(11,'i think so','incorrect',0);

insert into options(question_id,option,status,score) values(12,'tuber','incorrect',0);
insert into options(question_id,option,status,score) values(12,'seed','incorrect',0);
insert into options(question_id,option,status,score) values(12,'root','correct',25);
insert into options(question_id,option,status,score) values(12,'stem','incorrect',0);

insert into options(question_id,option,status,score) values(13,'muriwo','correct',25);
insert into options(question_id,option,status,score) values(13,'morogo','incorrect',0);
insert into options(question_id,option,status,score) values(13,'spinach','incorrect',0);
insert into options(question_id,option,status,score) values(13,'sukuma','incorrect',0);

insert into options(question_id,option,status,score) values(14,'pizza', 'incorrect',0);
insert into options(question_id,option,status,score) values(14,'burger','incorrect',0);
insert into options(question_id,option,status,score) values(14,'any sub-saharan african meal','correct',25);
insert into options(question_id,option,status,score) values(14,'amasi','incorrect',0);

insert into options(question_id,option,status,score) values(15,'juice','correct',25);
insert into options(question_id,option,status,score) values(15,'water','incorrect',0);
insert into options(question_id,option,status,score) values(15,'not enough information','incorrect',0);
insert into options(question_id,option,status,score) values(15,'milk','incorrect',0);

insert into options(question_id,option,status,score) values(16,'vitamin c','incorrect',0);
insert into options(question_id,option,status,score) values(16,'vitamin k','incorrect',0);
insert into options(question_id,option,status,score) values(16,'folic','incorrect',0);
insert into options(question_id,option,status,score) values(16,'vitamin d','correct',25);



insert into quiz(image_id,question,level) values(3,'What kind of carrots do people eat mostly',1);
insert into quiz(image_id,question,level) values(3,'what do carrots contain',1);
insert into quiz(image_id,question,level) values(3,'what ways can you buy carrot',1);
insert into quiz(image_id,question,level) values(3,'which one of these was NOT a common carrot color when carrots originate',1);


insert into options(question_id,option,status,score) values(17,'yellowish carrots','incorrect',0);

insert into options(question_id,option,status,score) values(17,'taproot carrot','correct',25);

insert into options(question_id,option,status,score) values(17,'root carrot','incorrect',0);
insert into options(question_id,option,status,score) values(17,'sweet carrot','incorrect',0);

insert into options(question_id,option,status,score) values(18,'zinc','incorrect',0);

insert into options(question_id,option,status,score) values(18,'iron','incorrect',0);

insert into options(question_id,option,status,score) values(18,'starch','incorrect',0);

insert into options(question_id,option,status,score) values(18,'carotene','correct',25);

insert into options(question_id,option,status,score) values(19,'canned','incorrect',0);

insert into options(question_id,option,status,score) values(19,'frozen','incorrect',0);

insert into options(question_id,option,status,score) values(19,'fresh','incorrect',0);

insert into options(question_id,option,status,score) values(19,'all of the above','correct',25);

insert into options(question_id,option,status,score) values(20,'yellow','incorrect',0);

insert into options(question_id,option,status,score) values(20,'white','incorrect',0);

insert into options(question_id,option,status,score) values(20,'green','correct',25);

insert into options(question_id,option,status,score) values(20,'purple','incorrect',0);




















