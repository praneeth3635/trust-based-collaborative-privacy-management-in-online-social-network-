<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Req Res Page</title>
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
.style5 {
	font-size: 16px;
	color: #000000;
}
.style6 {color: #E0801F}
.style7 {color: #000000}
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
          <h2 align="left"><a href="index.html"><span class="style3">Friend Requests To <%=(String)application.getAttribute("uname")%>..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <table width="554" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="132" height="30" align="center" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Username</b></div></td>
                        <td  width="119" height="30" align="center" valign="middle"style="color: #660000;"><div align="center" class="style2"><b>Mobile</b></div></td>
                        <td  width="117" height="30" align="center" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Address</b></div></td>
                        <td  width="74" height="30" align="center" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Gender</b></div></td>
						<td  width="78" height="30" align="center" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Status</b></div></td>
                      </tr>
                      <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s1=rs.getString(2);
											s2=rs.getString(5);
											s3=rs.getString(6);
											s4=rs.getString(8);
											s5=rs.getString(9);
											
						
					%>
                      <tr>
			
                        <td  width="132" height="60" align="center" valign="middle" class="style9" style="color:#CC0033;">&nbsp;&nbsp;
                              <b><%out.println(s1);%></b>                        </td>
                        <td  width="119" height="60" align="center" valign="middle" class="style7">&nbsp;
                              <%out.println(s2);%>                        </td>
                        <td height="60" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s3);%>                        </td>
							  <td height="60" align="center"  valign="middle" class="style7">&nbsp;
                              <%out.println(s4);%>                        </td>
                        <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="78" valign="middle" height="60" style="color:#000000;"align="center"><a href="User_updaterequest1.jsp?rid=<%=j%>" class="style44">waiting</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="16" height="60" align="center" valign="middle" class="style7">
                          <span class="style45">
                          <%out.println(status);%>
                          </span>&nbsp;</td>
                        <%
						}
						%>
                      </tr>
                      <%
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
				  <p align="right" class="style14"><a href="UserMain.jsp" class="style13">Back</a></p>
			
			
			
			
			
			
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
            <li><a href="UserMain.jsp">Home</a></li>
			<li><a href="UserLogin.jsp">Logout</a></li>
            
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
    

</html>
