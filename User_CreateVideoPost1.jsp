<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Video Post Page</title>
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
.style6 {
	font-size: 14px;
	color: #CC6600;
}

.style7 {color: #000000}
.style8 {color: #CC0033}
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
          <h2 align="left"><a href="index.html"><span class="style3">Select Video..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <%
            String pname=request.getParameter("pname");
			String puses=request.getParameter("puses");
			String desc=request.getParameter("text");
			String pspl=request.getParameter("pspl");
			String psens=request.getParameter("psens");
			
			
			application.setAttribute("pname",pname);
			application.setAttribute("puses",puses);
			application.setAttribute("desc",desc);
			application.setAttribute("pspl",pspl);
			application.setAttribute("psens",psens);
			
%>

<style type="text/css">
<!--
.style1 {color: #666666}
-->
</style>


           <form name="s" action="User_CreateVideoPost2.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">	
	  
             <table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Name</span></div></td>
						<td height="57"><div align="center" class="style8"><%=application.getAttribute("pname")%></td>
					</tr>
					<tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Uses</span></div></td>
						<td height="57"><div align="center" class="style8"><%=application.getAttribute("puses")%></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Description</span></div></td>
						<td height="57"><div align="center" class="style8"><%=application.getAttribute("desc")%></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Speciality</div></td>
						<td height="57"><div align="center" class="style8"><%=application.getAttribute("pspl")%></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Sensitive</div></td>
						<td height="57"><div align="center" class="style8"><%=application.getAttribute("psens")%></td>
					</tr>
									

					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Select Video </div></td>
						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input type="file" name="file" style="height:40px" size="30"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Upload" style="width:100px; height:35px; background-color:#333333; color:#FF8000;"/>
					<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#333333; color:#FF8000;"/></td></tr></div>
					
					
	         </table>
          </form>





		              
            <p>&nbsp;</p>
            <div align="center" class="style22"><a href="User_CreateVideoPost.jsp" class="style11">Back</a></div>
			
			
			
			
			
			
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
