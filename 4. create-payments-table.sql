USE sql_invoicing; 

CREATE TABLE payments_audit
(
	client_id 		INT 			NOT NULL, 
    date 			DATE 			NOT NULL,
    amount 			DECIMAL(9, 2) 	NOT NULL,
    action_type 	VARCHAR(50) 	NOT NULL,
    action_date 	DATETIME 		NOT NULL
)
```

# Event 
1. Real Use Cases
2. Auto delete old data
3. Daily report generation
4. Backup tasks
5. Auto update status
```sql
DELIMITER $$

CREATE EVENT monthly_salary_update
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
    UPDATE employees SET salary = salary * 1.10;
    INSERT INTO logs(message) VALUES ('Salary updated');
END $$

DELIMITER ;
```

# Transactions
transaction is a sequence of one or more SQL operations that are executed as a single unit of work.
