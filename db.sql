create table class ( id int auto_increment not null primary key, starting_class varchar(100), usable_weapons varchar(100), class_change varchar(100) );
create table status ( id int auto_increment not null primary key, Lv int, HP int, str int, skl int, spd int, lck int, def int, res int, con int, mov int );
create table growth_rate ( id int auto_increment not null primary key, HP int, str int, skl int, spd int, lck int, def int, res int );
create table units ( id int auto_increment not null primary key, name varchar(100), class_id int, status_id int, growth_id int );
load data local infile 'class.csv' into table player fields terminated by ',' enclosed by '"';
load data local infile 'status.csv' into table player fields terminated by ',' enclosed by '"';
load data local infile 'growth.csv' into table player fields terminated by ',' enclosed by '"';
load data local infile 'units.csv' into table player fields terminated by ',' enclosed by '"';
