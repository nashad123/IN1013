
SELECT DISTINCT s.first_name, s.surname
FROM restBill b
INNER JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE b.cust_name = 'Tanya Singh';

SELECT rm.room_date
FROM restRoom_management rm
INNER JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE s.first_name = 'Charles' 
  AND rm.room_name = 'Green' 
  AND rm.room_date BETWEEN 160201 AND 160229;

SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
INNER JOIN restStaff z ON s.headwaiter = z.headwaiter
WHERE z.first_name = 'Zoe' AND z.surname = 'Ball' 
  AND s.staff_no != z.staff_no;

SELECT b.cust_name, b.bill_total, s.first_name, s.surname
FROM restBill b
INNER JOIN restStaff s ON b.waiter_no = s.staff_no
ORDER BY b.bill_total DESC;

SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no IN (
    SELECT b.waiter_no
    FROM restBill b
    WHERE b.table_no IN (
        SELECT DISTINCT b1.table_no
        FROM restBill b1
        WHERE b1.bill_no IN (14, 17)
    )
);

SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no IN (
    SELECT headwaiter
    FROM restRoom_management
    WHERE room_name = 'Blue' AND room_date = 160312
);




