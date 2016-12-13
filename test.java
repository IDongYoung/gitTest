select a.id,a.name,a.address,a.n,a.time,b.S_id,b.score from
				 (select a.id,a.name,a.address,b.n,a.time
				 from Course as a left join
				      (select User.name as n, Teacher_Course.C_id
				           from User,Teacher_Course
				           where User.id=Teacher_Course.T_id)
				       as b on a.id=b.C_id)
				  as a left join Student_Course as b
				  on a.id=b.C_id and b.S_id='201392133';
