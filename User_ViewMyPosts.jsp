<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Posts Page</title>
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
.style7 {
	color: #FF6600;
	font-weight: bold;
}
.style8 {
	color: #006600;
	font-weight: bold;
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
          <h2 align="left"><a href="index.html"><span class="style3">User <%=(String)application.getAttribute("uname") %>'s All Posts..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="600" border="1" align="center">
  <tr>
   <td width="19" height="32"><div align="center" style="color:#660000"><b>Id</b> </div></td>
    <td width="33"><div align="center" style="color:#660000"><b>Post Name</b></div></td>
   <td width="100" height="32"><div align="center" style="color:#660000"><b>Image</b></div></td>
      <td width="31"><div align="center" style="color:#660000"><b>Post Uses</b> </div></td>
    <td width="66"><div align="center" style="color:#660000"><b>Post Description</b></div></td>
	  <td width="56"><div align="center" style="color:#660000"><b>Post Speciality</b></div></td>
	  <td width="53"><div align="center" style="color:#660000"><b>Post Sensitive</b></div></td>
	  <td width="30"><div align="center" style="color:#660000"><b>Post Vote</b></div></td>
	  <td width="30"><div align="center" style="color:#660000"><b>Post Date</b></div></td>
	  	  <td width="49"><div align="center" style="color:#660000"><b>Post Reviews</b></div></td>
		  <td width="40"><div align="center" style="color:#660000"><b>Post Share</b></div></td>
  </tr>

            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<%

	String user= (String)application.getAttribute("uname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,v=0;

      	try 
	{
        
          
      		
      		
      		String query="select * from posts where uname='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s7=rs.getString(8);
		s9=rs.getString(11);
				
		v=rs.getInt(10);
		
					String decryptedDes= new String(Base64.decode(s3.getBytes()));
					String decryptedSpl= new String(Base64.decode(s4.getBytes()));
		j++;
		%>



  <tr>
      <td><div align="center" style="color:#660000"><%=j%></div></td>
    <td><div align="center" style="color:#CC0033"><b><%=s1%></b></div></td>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>
	 </td>
    <td><div align="center" style="color:#000000"><%=s2%></div></td>
     <td><div align="center" style="color:#000000"><%=decryptedDes%></div></td>
		  	   <td><div align="center" style="color:#006666"><b><%=decryptedSpl%></b></div></td>
			   <td><div align="center" style="color:#000000"><%=s5%></div></td>
			   <td><div align="center" style="color:#000000"><b><%=v%></b></div></td>
			   <td><div align="center" style="color:#000000"><%=s7%></div></td>
		  	   <td><div align="center"><a href="User_Viewreviews.jsp?pname=<%= s1%>" class="style8">Reviews</a></div></td>
			   <%if(s9.equalsIgnoreCase("Share")){%>
			   <td><div align="center"><a href="User_pShare.jsp?pname=<%= s1%>" title="Click to Share with Friends" class="style7">Share</a></div></td>
			   <%}else{%>
		      <td width="17"><div align="center" style="color:#000000"><b><%=s9%></b></div></td>
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
		          <p align="right"><a href="UserMain.jsp" class="style16">Back</a></p>
            
			
			
			
			
			
			
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
