SELECT cust_name
FROM restBill
WHERE bill_total > 450.00
AND waiter_no IN 
    (SELECT staff_no
     FROM restStaff
     WHERE first_name = 'Charles');

SELECT first_name, surname
FROM restStaff
WHERE staff_no IN
    (SELECT headwaiter
     FROM restRoom_management
     WHERE room_date = 160111
     AND headwaiter IS NOT NULL
     AND EXISTS (SELECT *
                 FROM restBill
                 WHERE cust_name = 'Nerida Smith'
                 AND bill_date = 160111
                 AND restBill.waiter_no = restStaff.staff_no));

SELECT cust_name
FROM restBill
WHERE bill_total = 
    (SELECT MIN(bill_total)
     FROM restBill);

SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN
    (SELECT DISTINCT waiter_no
     FROM restBill);

SELECT restBill.cust_name, restStaff.first_name, restStaff.surname, restRoom_management.room_name
FROM restBill
JOIN restRest_table ON restBill.table_no = restRest_table.table_no
JOIN restRoom_management ON restRest_table.room_name = restRoom_management.room_name
JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restBill.bill_total = 
    (SELECT MAX(bill_total)
     FROM restBill);

