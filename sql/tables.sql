DROP TABLE IF EXISTS options;


DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS quiz;
DROP TABLE IF EXISTS images;

create table images(
    id serial primary key not null,
    image_name text not null,
    image_description text not null
);
create table quiz(
    id serial primary key not null,
    image_id int not null,
    question text not null,
    level int not null,
    foreign key (image_id) references images(id) on delete cascade
);
create table options(
    id serial primary key not null,
    question_id int not null,  
    option text not null,
    status text not null, 
    score int not null,
    foreign key (question_id) references quiz(id) on delete cascade    
);

create table users(
    id serial primary key not null,
    first_name text not null,
    score int not null
);




