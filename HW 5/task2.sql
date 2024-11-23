1) 
SELECT SUM(bill_total) AS 'Income' FROM restBill;

2) 
SELECT SUM(bill_total) AS `Feb Income` FROM restBill WHERE bill_date > 160200 AND bill_date < 160300;

3)
SELECT AVG(bill_total) FROM restBill WHERE table_no = '2';

4)
SELECT MIN(table_no) FROM restREST_table WHERE room_name = 'Blue';
SELECT AVG(table_no) FROM restREST_table WHERE room_name = 'Blue';
SELECT AVG(table_no) FROM restREST_table WHERE room_name = 'Blue';

5)
 SELECT COUNT(table_no) FROM restBill WHERE waiter_no = '004' OR '002'


