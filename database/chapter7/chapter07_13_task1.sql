

-- CREATE USER 'fishbread_user'@'localhost' IDENTIFIED BY 'fishpassword'; 

GRANT ALL PRIVILEGES ON *.* TO 'fishbread_user'@'localhost';

flush privileges;

SHOW GRANTS FOR 'fishbread_user'@'localhost';