SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*)
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restBill.waiter_no, restBill.bill_date
HAVING COUNT(*) >= 2;

SELECT restRest_table.room_name, COUNT(*)
FROM restRest_table
WHERE restRest_table.no_of_seats > 6
GROUP BY restRest_table.room_name;

SELECT restRoom_management.room_name, SUM(restBill.bill_total) AS total_bills
FROM restBill
JOIN restRest_table ON restBill.table_no = restRest_table.table_no
JOIN restRoom_management ON restRest_table.room_name = restRoom_management.room_name
GROUP BY restRoom_management.room_name;

SELECT headwaiter.first_name, headwaiter.surname, SUM(restBill.bill_total) AS total_bills
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
JOIN restStaff AS headwaiter ON restStaff.headwaiter = headwaiter.staff_no
GROUP BY headwaiter.staff_no, headwaiter.first_name, headwaiter.surname
ORDER BY total_bills DESC;

SELECT restBill.cust_name
FROM restBill
GROUP BY restBill.cust_name
HAVING AVG(restBill.bill_total) > 400;

SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*)
FROM restBill
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restBill.waiter_no, restBill.bill_date
HAVING COUNT(*) >= 3;

