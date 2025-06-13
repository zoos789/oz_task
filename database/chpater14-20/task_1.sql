# 1번 
CREATE TABLE employees(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) ,
    salary DECIMAL(10,2)
    
);


# 2번 
INSERT INTO employees(name, position,salary)
VALUES('혜린','PM',90000),
('은우', 'Frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 78000),
('민혁', 'Frontend', 96000),
('하온','Backend', 130000);