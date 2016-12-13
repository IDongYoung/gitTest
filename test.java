select a.id,a.name,a.address,b.n,a.time,b.i
				 from Course as a left join
				 (select User.name as n,User.id as i,Teacher_Course.C_id
				 from User,Teacher_Course
			   where User.id=Teacher_Course.T_id) as b on
				 a.id = b.C_id;
