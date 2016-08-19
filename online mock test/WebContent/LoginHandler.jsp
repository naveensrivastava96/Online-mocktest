<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   <%@  page import ="java.sql.Connection" %>
   <%@ page import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=	request.getParameter("email");
session.setAttribute("theemail",email);
String pass = request.getParameter("pass");


 final String driver="oracle.jdbc.driver.OracleDriver";
	final String url="jdbc:oracle:thin:@localhost:1521:xe";
	final String user="system";
	final String password="naveen99";
 Connection cn=null;
	

		try{
		Class.forName(driver);
		cn=DriverManager.getConnection(url,user,password);
		
		}
		catch(Exception e)
		{
			
		}
		%>
		
		
		<% String t=(String)session.getAttribute("theemail");

  String sql1="select * from REGISTERTABLE where email='"+t+"' and password ='"+pass+"'";
 
 Statement st=cn.createStatement();
 
 ResultSet rs= st.executeQuery(sql1);
 
 if(rs.next())
 {
	%>
	<jsp:include page="welcome.html"/>
	<% 
 }
 else
	 response.sendRedirect("invalidloginnew.jsp");
 


%>
</body>
</html>