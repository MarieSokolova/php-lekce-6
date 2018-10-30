1.
to se mi nepodařilo

2.
SELECT p.name, COUNT(ps.grade)
FROM Pupil p
JOIN ClassSubject cs ON p.class_id = cs.class_id
JOIN PupilSubject ps ON cs.subject_id = ps.subject_id
WHERE ps.grade = 5
GROUP BY p.name

3.
SELECT c.year, c.name, AVG(ps.grade)
FROM Class c
JOIN ClassSubject cs ON c.id = cs.class_id
JOIN PupilSubject ps ON cs.subject_id = ps.subject_id
GROUP BY c.year, c.name

4.
SELECT c.year, AVG(ps.grade)
FROM Class c
JOIN ClassSubject cs ON c.id = cs.class_id
JOIN PupilSubject ps ON cs.subject_id = ps.subject_id
GROUP BY c.year

5.
SELECT t.name
FROM Teacher t
JOIN Class c ON t.id = c.homeroom_teacher_id
JOIN ClassSubject cs ON t.id = cs.teacher_id
GROUP BY t.name

6.
SELECT c.year, s.name, AVG(ps.grade)
FROM Class c
JOIN ClassSubject cs ON c.id = cs.class_id
JOIN PupilSubject ps ON cs.subject_id = ps.subject_id
JOIN Subject s ON cs.subject_id = s.id
GROUP BY c.year, s.name

7.
SELECT t.name, AVG(ps.grade)
FROM Class c
JOIN ClassSubject cs ON c.id = cs.class_id
JOIN PupilSubject ps ON cs.subject_id = ps.subject_id
JOIN Subject s ON cs.subject_id = s.id
JOIN Teacher t ON cs.teacher_id = t.id
GROUP BY t.name
nevím, jak zvolit těch 5