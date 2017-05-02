
SELECT DISTINCT m.first_name, m.surname, f.name FROM members m JOIN bookings b ON m.id = b.mem_id
JOIN facilities f ON b.fac_id = f.id
WHERE f.name LIKE 'Tennis Court%'
ORDER BY m.first_name asc;


SELECT m.first_name, m.surname, f.name, count(*) as number_visits FROM members m JOIN bookings b ON m.id = b.mem_id
  JOIN facilities f ON b.fac_id = f.id
  WHERE f.name LIKE 'Pool Table' and m.surname = 'Dare'
  GROUP BY m.first_name, m.surname, f.name;


SELECT m.first_name, m.surname, f.name, count(*) as number_visits FROM members m JOIN bookings b ON m.id = b.mem_id
  JOIN facilities f ON b.fac_id = f.id
  WHERE  m.surname = 'Dare'
  GROUP BY m.first_name, m.surname, f.name
  ORDER BY number_visits DESC;


SELECT DISTINCT m.first_name, m.surname
  FROM members m JOIN members m2 ON m.id = m2.recommended_by
  ORDER BY m.first_name desc;

SELECT DISTINCT first_name || ' ' || surname AS booty , (SELECT first_name || '' || surname AS Reccomender FROM members mem WHERE mem.id = m.recommended_by ) FROM members m;
