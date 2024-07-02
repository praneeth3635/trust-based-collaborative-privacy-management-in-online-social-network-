<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Users Page</title>
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
.style22 {color: #000000}
.style2 {color:#CC0000}
.style25 {color: #1e5381}
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
          <h2 align="center"><span class="style3">Weighted by Trust Value Users..</span></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
		  
	<table width="521" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="55"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="172" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57"><b>User Image</b></div></td>
                      <td  width="215" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>User Name</b></div></td>
                      <td  width="69"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Vote</b></div></td>
                    </tr>
                   
                    <%
					  
					  	
						String s1="",s2="",s3="",s4="";
						int i=0,k=0,s5=0;
						try 
						{
						   	String query="select * from user where vote!="+0+" and status='"+"Authorized"+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s5=rs.getInt(11);
								
								
								k++;
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                        <%out.println(k);%>
                      </span></div></td>
                      <td width="172" rowspan="1" align="center" valign="middle" ><div class="style5 style37 style54 style55 style22" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
                      </a> </div></td>
          <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style2">
                      <b> <%out.println(s1);%> </b>	                 </span></div></td>
                      <td width="69" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">
                        <b><%out.println(s5);%></b>
                      </div></td>
                    </tr>
                    <%
						}
						
					

				
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table> 
	<p>&nbsp;</p>
				
							
				
		  
		  <p>&nbsp;</p>
		  
		  <p>&nbsp;</p>
		  <h2 align="center"><span class="style3">Non Trusted Users..</span></h2>
		  <div class="clr"></div>
		  <p>&nbsp;</p>
		 
		  
							
			<table width="522" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="55"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="172" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57"><b>User Image</b></div></td>
                      <td  width="215" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>User Name</b></div></td>
                      <td  width="70"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Vote</b></div></td>
                    </tr>
                    
                    <%
					  
					  	
						String s7="",s8="",s9="",s10="";
						int j=0,l=0,s11=0;
						try 
						{
						   	String query="select * from user where vote="+0+" and status='"+"Authorized"+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s7=rs.getString(2);
								s8=rs.getString(4);
								s9=rs.getString(6);
								s11=rs.getInt(11);
								
								
								l++;
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                        <%out.println(l);%>
                      </span></div></td>
                      <td width="172" rowspan="1" align="center" valign="middle" ><div class="style5 style37 style54 style55 style22" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" style="width:90px; height:90px;" />
                      </a> </div></td>
          <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style2">
                      <b> <%out.println(s7);%> </b>	                 </span></div></td>
                      <td width="70" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">
                        <b><%out.println(s11);%></b>
                      </div></td>
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
					
				
				
				
				<p>&nbsp;</p>
		<div align="right" class="style22"><a href="AdminMain.jsp" class="style25">Back</a></div>
            
			
			
			
			
			
			
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
