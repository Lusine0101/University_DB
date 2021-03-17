SELECT AVG(grade)
 	FROM public.grades
group by "course_ID"
order by "course_ID"
	
Select students.student_name, max(grades.grade)
	From public.students
	Left Join public.grades
	on "grades.student_ID" = "students.student_ID"
Group by grades.student_ID, course_ID;


Select s.Name
          , c.Name
          , g.grade
          , Row_Number() over (Partition by g.course_ID order by g.grade desc)
From Grades g
    Join courses c on        
	c.course_ID = g.course_ID
    Join Students s on s.studentID=g.studentID
	WHERE Row_numberb <=10;

