<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Access Requests Page</title>
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
          <h2 align="left"><a href="index.html"><span class="style3">Post Access Requests From Friends..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
             <table width="366" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="43"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style2"><b>Si No. </b></div></td>
                        <td  width="187" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Friend Name</b></div></td>
                        <td  width="101" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Status</b></div></td>
						<td  width="101" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Requested Date</b></div></td>
                      </tr>
                      
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
		
						   	String query="select *  from access_req where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									
									s1=rs.getString(2);
									s2=rs.getString(3);
									s3=rs.getString(4);

									
									i++;
										
												%>
                      <tr>
                        <td height="100" align="center"  valign="middle"><div align="center" class="style7" style="color:#000000"><b>
                            <%out.println(i);%>
                        </b></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style7" style="color:#CC0033">
                           
                              <b><%out.println(s1);%></b>

                        </div></td>
						<td align="center"  valign="middle"><div align="center" class="style7" style="color:#006633">
                           
                              <b><%out.println(s2);%></b>

                        </div></td>
						<td align="center"  valign="middle"><div align="center" class="style7" style="color:#000000">
                           
                              <%out.println(s3);%>

                        </div></td>
                        
                      </tr>
                      <%
												j+=1;	
						
							
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
					 <p align="center">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style75">Back</a></p>
			
			
			
			
			
			
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
