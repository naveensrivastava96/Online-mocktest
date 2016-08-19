<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.* "%>

   
<!--DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"-->
<html>
<head>
<title>My Profile</title>
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
    </header>
</section>
<section id="main" class="wrapper ">
				<div class="container">

					<header class="major">
						<h2><B>My Account</h2>
</header>


<section>
<div class="table-wrapper">
<table>
<thead>

</thead>
<tbody>
<% 
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
										<tr>
<th>Name</th>
											
											<td><%= rs.getString("name") %></td>
</tr>
<th>E-Mail</th>
											<td><%= rs.getString("email") %></td>
</tr>
<th>Address</th>
											<td><%= rs.getString("address") %></td>
</tr>
<th>City</th>
											<td><%= rs.getString("city") %></td>
</tr>
<th>Pincode</th>
											<td><%= rs.getString("pincode") %></td>
</tr>
</tr>
<th>Country</th>
											<td><%= rs.getString("country") %></td>
</tr>
</tr>
<th>score</th>
											<td><%= rs.getString("score") %></td>
</tr>
</tr>
<% } %>
<th></th>
											<td></td>
</tr>
</tr>

</tbody>
</table>
</div>
</section>
</div></section>



</body>
</html>