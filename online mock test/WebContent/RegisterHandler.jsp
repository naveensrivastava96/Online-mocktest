
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String name= request.getParameter("name");
String email= request.getParameter("email");
String pass= request.getParameter("pass");
String cpassword= request.getParameter("contact");
String address= request.getParameter("address");
String city= request.getParameter("city");
String pincode= request.getParameter("pincode");
String country= request.getParameter("country");
String score = new String("0");

//Connection cn=Conn.getConn();
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
 		System.out.println(e);	
 		}
 		
 		System.out.println(cn);
 	 
String sql1="insert into registertable values('"+name+"','"+email+"','"+pass+"','"+cpassword+"','"+address+"','"+city+"','"+pincode+"','"+country+"','"+score+"')";
Statement st=cn.createStatement();

int i=st.executeUpdate(sql1);

if(i==1)
{
	%>
	<jsp:include page="index.html"/>
	<% 
}
else
	response.sendRedirect("notreg.jsp");
%>



</body>
</html>