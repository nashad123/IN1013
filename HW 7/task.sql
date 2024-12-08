CREATE VIEW samsBills AS
SELECT 
    s.first_name,
    s.surname,
    b.bill_date,
    b.cust_name,
    b.bill_total
FROM 
    restBill b
JOIN 
    restStaff s
ON 
    b.waiter_no = s.staff_no
WHERE 
    s.first_name = 'Sam' AND s.surname = 'Pitt';

SELECT 
    first_name,
    surname,
    bill_date,
    cust_name,
    bill_total
FROM 
    samsBills
WHERE 
    bill_total > 400;

CREATE VIEW roomTotals AS
SELECT 
    t.room_name,
    SUM(b.bill_total) AS total_sum
FROM 
    restBill b
JOIN 
    restRest_table t
ON 
    b.table_no = t.table_no
GROUP BY 
    t.room_name;

CREATE VIEW teamTotals AS
SELECT 
    CONCAT(h.first_name, ' ', h.surname) AS headwaiter_name,
    SUM(b.bill_total) AS total_sum
FROM 
    restBill b
JOIN 
    restStaff w
ON 
    b.waiter_no = w.staff_no
LEFT JOIN 
    restStaff h
ON 
    w.headwaiter = h.staff_no
GROUP BY 
    h.staff_no, h.first_name, h.surname;


