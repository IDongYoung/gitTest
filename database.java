package data;

import java.sql.ResultSet;

public class database 
{
	JDBC jc = null;
	public database()
	{
		jc = new JDBC();
	}
	
	public boolean CreateAccount(int myid,String my_p,int id,int type,String name,String password)
	{
		if (this.CheckAccount(myid,my_p)!=1) return false;
		String sql = "insert into User values("+id+","+type+",'"+name+"','"+password+"');";
		try
		{
			jc.executeUpdate(sql);
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	public int CheckAccount(int id, String password)
	{
		String sql = "select count(*) from User where id="+id+" and password='"+password+"';";
		try
		{
			ResultSet re = jc.executeQuery(sql);
			if (re.next())
			{
				int r = re.getInt(2);
				return r;
			}
			else return -1;
			
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
			return -1;
		}
	}
	public boolean EditPassword(int id,String old_p,String new_p)
	{
		if (CheckAccount(id, old_p)==-1) return false;
		String sql = "update User set password='"+new_p+"' where id="+id+" and password='"+old_p+"';";
		try
		{
			jc.executeUpdate(sql);
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	public boolean getAllStudent(int myid,String my_p,student[] student)
	{
		int R = this.CheckAccount(myid, my_p);
		if (R!=1) return false;
		String sql = "select count(*) from User where type=3;";
		try
		{
			ResultSet re = jc.executeQuery(sql);
			int num = re.getInt(1);
			student = new student[num];
			sql = "select * from User where type=3;";
			re = jc.executeQuery(sql);
			int i=0;
			while(re.next())
			{
				student[i] = new student();
				student[i].id = re.getInt(1);
				student[i].name = re.getString(3);
				i++;
			}
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
		return true;
	}
	public boolean getStudentByCourse(int myid,String my_p,student[] student)
	{
		int R = this.CheckAccount(myid, my_p);
		if (R!=1&&R!=2) return false;
		String sql = "select count(*) from User,Student_Course where type=3 and id=S_id;";
		try
		{
			ResultSet re = jc.executeQuery(sql);
			int num = re.getInt(1);
			student = new student[num];
			sql = "select * from User,Student_Course where type=3 and id=S_id;";
			re = jc.executeQuery(sql);
			int i=0;
			while(re.next())
			{
				student[i] = new student();
				student[i].id = re.getInt(1);
				student[i].name = re.getString(3);
				i++;
			}
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
		return true;
	}
	public boolean getAllTeacher(int myid,String my_p,teacher[] teacher)
	{
		int R = this.CheckAccount(myid, my_p);
		if (R!=1) return false;
		String sql = "select count(*) from User where type=2;";
		try
		{
			ResultSet re = jc.executeQuery(sql);
			int num = re.getInt(1);
			teacher = new teacher[num];
			sql = "select * from User where type=2;";
			re = jc.executeQuery(sql);
			int i=0;
			while(re.next())
			{
				teacher[i] = new teacher();
				teacher[i].id = re.getInt(1);
				teacher[i].name = re.getString(3);
				i++;
			}
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
		return true;
	}
	
	public boolean DeleteAccount(int myid,String my_p,int id)
	{
		int R = this.CheckAccount(myid, my_p);
		if (R!=1) return false;
		try
		{
			String sql = "delete from User where id="+id;
			jc.executeUpdate(sql);
			sql = "delete from Student_Course where S_id="+id;
			jc.executeUpdate(sql);
			sql = "delete from Teacher_Course where T_id="+id;
			jc.executeUpdate(sql);
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	
	/*------------------------------------------------------------------------------------------------------*/
	public boolean CreateCourse(int myid,String my_p,int id,String name,String address,String time)
	{
		int R = this.CheckAccount(myid, my_p);
		if (R!=1) return false;
		String sql = "insert into Course values("+id+",'"+name+"','"+address+"','"+time+"');";
		try
		{
			jc.executeUpdate(sql);
		}catch (Exception e)
		{
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	public course[] getCourseByTeacher(int id)
	{
		course[] result=null;
		String sql = "select count(*) from ";
		return result;
	}
	public course[] getCourseByStudent(int id)
	{
		course[] result=null;
		String sql = "select count(*) from ";
		return result;
	}
	public course[] getAllCourse()
	{
		course[] result=null;
		String sql = "select count(*) from ";
		return result;
	}
	public boolean DeleteCourseById(int id)
	{
		return true;
	}
	
	public boolean ChooseCourse()
	{
		return true;
	}
	public boolean UnChooseCourse()
	{
		return true;
	}
	public boolean SetTeacherForCourse()
	{
		return true;
	}



}
