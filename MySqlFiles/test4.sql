
create table if not exists users(
    user_id serial primary key,
    username varchar(100) not null unique ,
    email varchar(150) not null unique ,
    address varchar(150) not null
);

create table if not exists categories(
    category_id serial primary key,
    category_name varchar(150) not null ,
    description_category varchar(150) not null
);

create table if not exists posts(
    post_id serial primary key,
    fk_user_id serial not null,
    title varchar(30) not null,
    post_content text not null,
    creation_date date not null default (CURRENT_DATE),
    constraint fk_user_id_post foreign key (fk_user_id) references users(user_id) on delete set null
);

create table if not exists comments(
    comment_id serial primary key,
    fk_user_id serial not null,
    fk_post_id serial not null ,
    content text not null ,
    number_reactions integer,
    foreign key (fk_user_id) references users(user_id),
    foreign key(fk_post_id) references posts(post_id)
);

create table if not exists post_category(
     post_id integer not null,
     category_id integer not null
);

ALTER TABLE post_category ADD CONSTRAINT pk_category_id_pcat PRIMARY KEY(post_id,category_id);

ALTER TABLE post_category ADD CONSTRAINT fk_category_id_pcat FOREIGN KEY(category_id) REFERENCES categories(category_id);
ALTER TABLE post_category ADD CONSTRAINT fk_post_id_pcat FOREIGN KEY (post_id) REFERENCES posts(post_id);

ALTER TABLE post_category DROP CONSTRAINT fk_post_id_pcat;

ALTER TABLE users add column password varchar not null;

ALTER TABLE posts
ALTER COLUMN title TYPE VARCHAR(100);