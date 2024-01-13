create table if not exists users(
    user_id serial primary key,
    user_name varchar(100)
);

create table if not exists products(
    product_id serial primary key,
    product_name varchar(100),
    user_id_fk serial,
    foreign key(user_id_fk) references users(user_id)
);

insert into users(user_name)values ('Jose'),('Andres'),('James');

insert into products(product_name,user_id_fk) values ('Computer',1),('Smartphone',2),('TV',1);


select * from products;

delete from users where user_name = 'Jose';

delete from products where user_id_fk = (select user_id from users where user_name = 'Jose');