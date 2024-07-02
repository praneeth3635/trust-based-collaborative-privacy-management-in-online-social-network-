<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Video Post Status Page</title>
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
	color: #000000;
	font-size: 16px;
}
.style8 {color: #000000}
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
          <h2 align="left"><a href="index.html"><span class="style3">Video Post Upload Status..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  
		  <h2>
     <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
      <%@ page import="java.io.*"%>
      <%@ page import="java.sql.*"%>
      <%@ include file="connect.jsp"%>
      <%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
      <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
      <%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
      <%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
      <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
      <%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
    
    
      <script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
    </script>
    
       <%
	String contentType = request.getContentType();
	if ((contentType != null)
			&& (contentType.indexOf("multipart/form-data") >= 0)) {
		DataInputStream in = new DataInputStream(request
				.getInputStream());
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead,
					formDataLength);
			totalBytesRead += byteRead;
		}
		String file = new String(dataBytes);
		String saveFile = file
				.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,
				saveFile.indexOf("\""));

		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,
				contentType.length());
		int pos;
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
		FileOutputStream fileOut = new FileOutputStream(
				"C:\\Tomcat 6.0\\webapps\\Trust based Collaborative Privacy Management in Online Social Networks\\" + saveFile);
				
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();

		ResultSet rs = null;
		PreparedStatement psmnt = null;
		PreparedStatement psmnt2 = null, psmnt3 = null;
		FileInputStream fis;
		

		try {
    
            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
				 
				 
			String pname = (String)application.getAttribute("pname");
			String puses = (String)application.getAttribute("puses");
			String desc = (String)application.getAttribute("desc");
			String pspl  = (String)application.getAttribute("pspl");
			String psens  = (String)application.getAttribute("psens");
            String encrypteddDesc= new String(Base64.encode(desc.getBytes()));
			String pspl1= new String(Base64.encode(pspl.getBytes()));
				 
			
			String user=(String)application.getAttribute("uname");
		    int vote=0;
				 
				    String sql3="select * from video_posts where pname='"+pname+"'  ";
					Statement st3=connection.createStatement();
			  		ResultSet rs3=st3.executeQuery(sql3);
					if ( rs3.next() )
			   			{ 
						%>
						  <p align="left" class="style7">Video Post Already Exist</p>
	    </h2> 
  <a href="User_CreateVideoPost.jsp" class="style47">Back</a>
  <h2>
    <% }
						else
						{
			String psr="Share";			
				 
			PreparedStatement pst=connection.prepareStatement("insert into video_posts(pname,puses,pdesc,pspl,psens,uname,date,video,vote,pshare) values(?,?,?,?,?,?,?,?,?,?)");
            
			pst.setString(1,pname);
			pst.setString(2,puses);
            pst.setString(3,encrypteddDesc);
			pst.setString(4,pspl1);
            pst.setString(5,psens);
            pst.setString(6,user);
			pst.setString(7,dt);
            pst.setString(8,saveFile);			
			pst.setInt(9,vote);
			pst.setString(10,psr);
			
           int x=pst.executeUpdate();
					
					
					if(x>0)
			{
					


                          %> 

    <p align="left" class="style7">Video Post Upload Successfull</p>
    </h2>
  <a href="User_CreateVideoPost.jsp" class="style47">Back</a>
  <h2>
    <%
			
								
								
			}
			else
			{
						%> 
  </h2>
  <p align="left" class="style8">Video Post Creation Not Successfull, Please try agian!!!</p>
      </div>
						  <p align="center"><a href="UserMain.jsp" class="style47">Back</a></p>
						<div align="center">
						  <%
			}
		
		}			
	} catch (Exception e) {
			e.printStackTrace();
		
	}}%>
			
			
			
			
			
			
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
