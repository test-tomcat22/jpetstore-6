<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*,java.util.*" %>         
<%
	Connection conn = null;       
	PreparedStatement pstmt = null;
	
	Random generator = new Random();        
	        
	int num1;
  
       num1= generator.nextInt(5)+3;        
  
        int num2 = generator.nextInt(9) * 100; 
		
	try{
	String url = "jdbc:mysql://oss.wordpress-mysql:3306/accordion";
	String id = "accordion";                              
	String pw = "accordion";                             
	Class.forName("com.mysql.jdbc.Driver"); 
	conn=DriverManager.getConnection(url,id,pw);
	String sql = "select 'test',sleep(?)=0";
	pstmt = conn.prepareStatement(sql); 
	pstmt.setInt(1,num1);
	pstmt.executeQuery();
	}catch(Exception e){   
	e.printStackTrace();
	}finally{        
	if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}  
	if(conn != null) try{conn.close();}catch(SQLException sqle){}    
	}

	Thread.sleep(num2);
%>
execute query
