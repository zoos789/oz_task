USE testdatabase;
SELECT *FROM employees;


#3번
SELECT name, salary from employees;  


#4번
SELECT name,salary FROM employees WHERE position = 'Frontend' AND salary <= 90000 ; 



# 5번 시작
UPDATE employees                    
SET salary = salary * 1.10
WHERE position = 'PM' ;

#5번 결과
SELECT * 
FROM employees 
WHERE position = 'PM';    
#  5번끝



# 6번 시작
UPDATE employees    
SET salary = salary * 1.05
WHERE position = 'Backend';

#6번 결과
SELECT * 
FROM employees 
WHERE position = 'Backend';  
#6번 끝 



#7번 시작
DELETE FROM employees 
WHERE name = '민혁';
#7번 결과
SELECT * FROM employees;  
#7번 끝



#8번 시작
SELECT position, AVG(salary)  
FROM employees
GROUP BY position;   
#8번 끝



#9번
DROP TABLE employees;
