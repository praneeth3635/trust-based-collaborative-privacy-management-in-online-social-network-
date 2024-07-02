<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friend Requests Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	color: #FF0000;
}
.style3 {font-size: 24px; color:#E0801F; }
.style4 {
	color: #000000;
	font-size: 16px;
}
.style6 {
	color: #660000;
	font-size: 14px;
}
.style8 {
	color: #CC0033;
	}
.style9 {
	color: #FF3300;
	}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style1">Trust-based Collaborative Privacy Management in Online Social Networks</span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp"><span>OSN Admin</span></a></li>
          <li><a href="UserLogin.jsp"><span>Users</span></a></li>
  
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"><a href="index.html"><span class="style3">All User Friend Requests and Responses..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="650" border="1" align="center">
                    <tr>
                      <td width="27" height="47" align="center" valign="middle"><div align="center" class="style2"><span class="style6"><b>Id </b></span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6">Request From </span></b></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6">Requested User </span></b></div></td>
                      <td width="101" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6">Request To </span></b></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6"> Request To Name </span></b></div></td>
					  <td width="70" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6">Status</span></b></div></td>
                      <td width="87" align="center" valign="middle"><div align="center" class="style2"><b><span class="style6">Date</span></b></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           			   
					   String query="select * from frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(5);
								s5=rs.getString(4);
							
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54" style="color:#000000"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style8"><b><%=s2 %></b></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style9"><b><%=s3 %></b></div></td>
					  <td><div align="center" class="style48 style52 style54" style="color:#000000"><b><%= s4%></b></div></td>
                      <td><div align="center" class="style48 style52 style54" style="color:#000000"><%= s5%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
					<p>&nbsp;</p>
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="AdminMain.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
            
			
			
			
			
			
			
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
			<li><a href="AdminLogin.jsp">Logout</a></li>
            
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
    

</html>
