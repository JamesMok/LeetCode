# Write your MySQL query statement below
WITH subjectExams as (
    SELECT
        e.student_id, e.subject_name, count(*) as countSubjects
    FROM Examinations e
    GROUP BY e.student_id, e.subject_name
),
all_combos as(
    select s.student_id, s.student_name, sub.subject_name
    from Students s
    cross join Subjects sub
)
select ac.student_id, ac.student_name, ac.subject_name, 
Coalesce(se.countSubjects, 0) as attended_exams
from all_combos ac
LEFT JOIN SubjectExams se on se.student_id = ac.student_id
            and se.subject_name = ac.subject_name
order by ac.student_id, ac.subject_name