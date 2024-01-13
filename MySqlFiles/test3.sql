
create table if not exists authors(
    author_id serial primary key,
    author_name varchar(100) not null
);

create table if not exists directions(
    direction_id serial primary key,
    direction varchar not null unique,
    author_id_fk serial,
    foreign key(author_id_fk) references authors(author_id)
);

