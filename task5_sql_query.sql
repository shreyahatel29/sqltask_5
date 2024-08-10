select * from subjects

1) --Count--

select count (distinct sub_id) from subjects

select count (distinct grade) from subjects

2) --total grade for each instructor--

select instructor, sum(grade) as total_grade from subjects
group by instructor order by instructor asc

3) --avg grade for subuject in each department where grade is greater than 2

select department, avg (grade) as average_grade from subjects
group by department having avg(grade)>=2

4) --max grade for subjects for each department

select department, max(grade) as max_grade from subjects group by department

5) --min grade for science which is taught by instructor

select instructor, min(grade) as min_grade from subjects
where department='science' group by instructor

6) -- total grade & num of subject_name for each instructor, if grade >3

select instructor, sum(grade) as total_grade, count(sub_name) as subject_name from subjects
group by instructor having sum(grade)>3

7) --count of subjects each teaches arts department

select instructor, count(sub_name) as subject_name from subjects
where department = 'arts' group by instructor

8) --total grade for each instructor, where the avg grade is less than 4

select instructor, sum(grade) as total_grade from subjects
group by instructor having avg(grade)<3

9) --using between 

select department,avg(grade) as average_grade from subjects
group by department having avg(grade) between 2 and 5

10)--select grade count from subjects where grade is not null

select grade,count(*)from subjects
	where grade is not null
	group by grade
	having count (*)>4







