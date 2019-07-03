create table class ( id int auto_increment not null primary key, start_class varchar(100), weapons varchar(100), class_change varchar(100), type int );
create table status ( id int auto_increment not null primary key, Lv int, HP int, str int, skl int, spd int, lck int, def int, res int, con int, mov int );
create table growth_rate ( id int auto_increment not null primary key, HP_rate int, str_rate int, skl_rate int, spd_rate int, lck_rate int, def_rate int, res_rate int );
create table units ( id int auto_increment not null primary key, name varchar(100), class_id int, status_id int, growth_id int );
load data local infile 'class.csv' into table class fields terminated by ',' enclosed by '"';
load data local infile 'status.csv' into table status fields terminated by ',' enclosed by '"';
load data local infile 'growth.csv' into table growth_rate fields terminated by ',' enclosed by '"';
load data local infile 'units.csv' into table units fields terminated by ',' enclosed by '"';
