--CREATE DATABASE fishbread_db;
use fishbread_db;

--CREATE TABLE users(
		user_id int primary key auto_increment,
        name VARCHAR(255) not null,
        age int not null,
        email VARCHAR(100) unique,
        is_business boolean default False
);

--CREATE TABLE orders(
	order_id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references users(user_id),
    order_date date,
    amount DECIMAL(10, 2)
);

--CREATE TABLE inventory(
	item_id int primary key auto_increment,
    item_name VARCHAR(255) not null,
    quantity int not null
    );

--CREATE TABLE sales(
	sale_id int primary key auto_increment,
    order_id int,
    foreign key (order_id) references orders(order_id),
    item_id int,
    foreign key (item_id) references inventory(item_id),
    quantity_sold int not null    
);

--CREATE TABLE daily_sales(
	date date primary key,
    total_sales DECIMAL(10, 2) not null
);