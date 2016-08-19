<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.* "%>

<html>
<head>
<title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            
			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style1.css" />
			
			<link rel="stylesheet" href="css/boot.css" />
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    
	<script src="js/js1.js"></script>
<script src="js/js2.js" type="text/javascript"></script> 
<style>
td
{
    padding:0 15px 0 15px;
}
</style>
   
    
	
</head>
<body>
<!-- Header -->

<a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="profile.jsp">MY <span>Profile</span></a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                <li class="active"><a href="index.html">Home</a></li>                    
                <li><a href="gallery.html">Gallery</a></li>               
		        <li><a href="index.html#contact1">Contact Us</a></li>
				<li><a href="index.html">Logout</a></li>											
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
	  <br>
	  <br><br>
	  <br>
      <!-- END MENU -->    
    </header><br>
	<br><br><br>
	


<section>
<div class="table-wrapper">
<table>
<thead>

</thead>
<tbody>
<% 
String testkeyname= request.getParameter("testkeyname");
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
	
		String t=(String)session.getAttribute("theemail");
 String sql1="select * from registertable where email='"+t+"'";
 

 
 Statement st=cn.createStatement();
 
 ResultSet rs= st.executeQuery(sql1);
 while( rs.next() ){
		
 
%>
	
<% }
 String[] ty={"que1","que2","que3","que4","que5","que6","que7","que8","que9","que10","que11","que12","que13","que14","que15"};
 
 System.out.println(testkeyname);
 String sql2="select * from testkey ";
 Statement st1=cn.createStatement();
 
 ResultSet rs1= st1.executeQuery(sql2);
 int i=0,count=0;
 while( rs1.next() ){
	 
	// System.out.println( rs1.getString(testkeyname)+request.getParameter(ty[i]));
	 
	 if((rs1.getString(testkeyname)).equals(request.getParameter(ty[i])) )
	 {
		 count=count+1;
		 
		 }
	// if(!((rs1.getString(testkeyname)).equals(request.getParameter(ty[i]))) and ((request.getParameter(ty[i]))!='\0'))
	 //{}
	 	i=i+1;
	 
	
 }
 
		%>
<th></th>
											<td></td>
</tr>
</tr>

</tbody>
</table>
</div>
</section>
</div></section>
	<% String sql3="update registertable set score='"+count+"' where email='"+t+"' ";
	 Statement st3=cn.createStatement();
	 
	  st3.executeUpdate(sql3); %>
	<h1 align="center">Your Score<% out.println(" "+count); %></h1>
	<br>
	<h2 align="center">    </h2>
	<br><br><br><br><br><br>
	<center><a href="welcome.html" class="btn btn-success" align="center">Take Another Test</a></center>
	</body>
	</html>