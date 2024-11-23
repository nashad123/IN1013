1)
SELECT bill_date, bill_total FROM restBill WHERE cust_name = 'Bob Crow';

2)
SELECT DISTINCT cust_name FROM restBill WHERE cust_name LIKE '% Smith' ORDER BY cust_name DESC;

3)
SELECT distinct cust_name FROM restBill WHERE cust_name LIKE '% C%';

4)
 SELECT first_name, surname FROM restStaff WHERE staff_no IN (SELECT DISTINCT headwaiter FROM restStaff WHERE headwaiter IS NOT NULL

5)
SELECT * FROM restBILL where (bill_date > 160200 and bill_date <16030

6)
SELECT DISTINCT bill_date FROM restBill WHERE bill_date between 15010

