package data;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC
{
	private final static String url1 = "jdbc:mysql://577c5b265ddbb.sh.cdb.myqcloud.com:4944/mytest?user=root&password=LIdongyang1316&useUnicode=true&characterEncoding=utf8";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟捷匡拷锟斤拷没锟斤拷锟斤拷锟斤拷锟斤拷锟�
	private final static String freemysql = "jdbc:mysql://sql6.freemysqlhosting.net/sql6148002?user=sql6148002&password=R3ZVrcVDDl&useUnicode=true&characterEncoding=utf8";
	String url2 = freemysql;
    private String url = url2;

	private final static String dbDriver = "com.mysql.jdbc.Driver";
    private Connection con = null;
    static 
    {
    	try {
    		Class.forName(dbDriver).newInstance();
		} catch (Exception ex) {
			System.out.println("驱动加载失败");
		}
    }

    public boolean creatConnection() 
    {
    	try {
    		con = DriverManager.getConnection(url);
    		con.setAutoCommit(true);
    	} catch (SQLException e) {
    		System.out.println(e.getMessage());
    		System.out.println("creatConnectionError!");
    	}
    	return true;
    }

    public boolean executeUpdate(String sql) 
    {
    	if (con == null) 
    	{
    		creatConnection();
    	}
    	try {
    		Statement stmt = con.createStatement();
    		stmt.executeUpdate(sql);	
    		return true;
    	} catch (SQLException e) {
    		System.out.println(e.getMessage());
    		return false;
    	}
	
    }

    public ResultSet executeQuery(String sql) 
    {
    	ResultSet rs;
    	try {
    		if (con == null) 
    		{
    			creatConnection();
    		}
    		Statement stmt = con.createStatement();
    		try {
    			rs = stmt.executeQuery(sql);
    		} catch (SQLException e) {
    			System.out.println(e.getMessage());
    			return null;
    		}
    	} catch (SQLException e) {
    		return null;
    	}
    	return rs;
    }
    public void close(ResultSet rs) 
    {
    	if(rs!= null)
    	{
    		try {
    			rs.close();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    	if(con!= null)
    	{
    		try {
    			con.close();
    			con=null;
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
    public void close2()
    {
    	if(con != null)
    	{
		   try {
		    con.close();
		    con=null;
		   } catch (SQLException e) {
		    e.printStackTrace();
		   }
		}
    }

    public static void main(String[] ass) throws UnsupportedEncodingException, SQLException
    {
    	JDBC jc=new JDBC();
    	jc.creatConnection();
    	String test ="你好世界！";
    	//String sql = "insert into mytest values('"+test+"',8)";
    	String sql1 = "select * from User;";
    	//jc.executeUpdate(sql);
    	ResultSet A = jc.executeQuery(sql1);
    	while(A.next())
    	{
    		String G = A.getString(3);
    		System.out.println(G);
    	}
    	jc.close2();
    }
}


