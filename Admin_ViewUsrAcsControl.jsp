<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Access Control Details Page</title>
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
	font-size: 14px;
}
.style8 {color:#CC0033}
.style9 {color:#006633}
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
          <h2 align="center"><a href="index.html"><span class="style3">User <%=request.getParameter("username")%>'s Post Access Controls to Friends..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <table width="473" height="95"  border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="31"  valign="middle" height="46" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="135" valign="middle" height="46" style="color: #660000;"><div align="center" class="style5 style56 style57"><b>Friend  Name</b></div></td>
                      <td  width="47" valign="middle" height="46" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Images</b></div></td>
                      <td  width="48" valign="middle" height="46" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Content</b></div></td>
					  <td  width="32" valign="middle" height="46" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>All</b></div></td>
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
					  	String username=request.getParameter("username");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from acs_control where username='"+username+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								
								
								
								i++;
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7"><span class="style4">
                        <%out.println(i);%>
                      </span></div></td>
         			 <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            <span class="style8">
                      <b> <%out.println(s1);%> </b>	</span></div></td>
					  <% if(s2.equalsIgnoreCase("Yes")){%>
					  <td height="0" bgcolor="#009900" align="center"  valign="middle"><div align="center" class="style7"><span class="style4">
                        <%out.println(s2);%>
                      </span></div></td>
					  <%}else{%>
					  <td height="0" bgcolor="#FF0000" align="center"  valign="middle"><div align="center" class="style7"><span class="style4">
                        <%out.println(s2);%>
                      </span></div></td>
					  <%}%>
					  <% if(s3.equalsIgnoreCase("Yes")){%>
                      <td height="0" bgcolor="#009900" align="center"  valign="middle"><div align="center" class="style7"><span class="style4">
                        <%out.println(s3);%>
                      </span></div></td>
					  <%}else{%>
					  <td width="17" height="0" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style7"><span class="style4">
                        <%out.println(s3);%>
                      </span></div></td>
					  <%}%>
					  <% if(s4.equalsIgnoreCase("Yes")){%>
					  <td width="17" height="0" align="center"  valign="middle" bgcolor="#009900"><div align="center" class="style7"><span class="style4">
                        <%out.println(s4);%>
                      </span></div></td>
					  <%}else{%>
					  <td width="75" height="0" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style7"><span class="style4">
                        <%out.println(s4);%>
                      </span></div></td>
					  <%}%>
                      
                    </tr>
                    <%
						}
										
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
		  
                    <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="center"><a href="Admin_ViewUserAccessControl.jsp" class="style14"><br />
                Back</a></div></td>
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
