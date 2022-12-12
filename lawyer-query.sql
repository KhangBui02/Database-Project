-- To find all the lawyers working on a specific case (Dan)
SELECT c.C_ID, c.t_lawyer, c.l_lawyer, l.fname, l.lname, l.L_type
FROM Case c, Lawyer l
WHERE c.C_ID = 103 AND (C.t_lawyer = l.L_ID or c.l_lawyer = l.L_ID);


--To find all the lawyers working on an ongoing case in a certain area (Dan)
SELECT l.L_ID, l.area, l.fname, l.lname, c.C_result, c.C_ID, l.L_type
FROM Case c, Lawyer l
WHERE l.area = 'IP' AND c.C_result = 'Ongoing' AND (c.t_lawyer = l.L_ID OR c.l_lawyer = l.L_ID)
ORDER BY l.L_ID;


-- To find all the lawyers that work in a specific area (Michael)
SELECT area, L_ID, fname, lname 
FROM Lawyer 
WHERE area = 'Corporate';


-- To find all the lawyers that attended a specific school (Michael)
SELECT s.S_name, s.grad_date, l.L_ID, l.fname, l.lname 
FROM Schooling s, Lawyer l
WHERE s.S_name = 'Villanova' AND l.School = s.S_ID;