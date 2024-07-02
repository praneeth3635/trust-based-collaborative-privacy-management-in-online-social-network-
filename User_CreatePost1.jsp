<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1"%>
	  <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Post Status Page</title>
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
          <h2 align="left"><a href="index.html"><span class="style3">Create Post..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <p>
                    <%
			
			int j=0;
		String uname=(String)application.getAttribute("uname");
		
		
		try {
								
		
					 ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,file="",pname="",puses="",pdesc="",pspl="",psens="",psr="Share",mac="",image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("pname"))
							{
								pname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("puses"))
							{
								puses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("text"))
							{
								pdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pspl"))
							{
								pspl=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("psens"))
							{
								psens=multi.getParameter(paramname);
							}
							
							
							
							
						}

						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
		
						FileInputStream fs1 = null;
		
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		String descr1 = new String(Base64.encode(pdesc.getBytes()));
		String pspl1 = new String(Base64.encode(pspl.getBytes()));
		
	    int vote=0;
		
				String query1="select * from posts  where pname='"+pname+"' and uname='"+uname+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next() )
					   {
					   		%>
        <p align="center" class="style7 style9" >This Post is Already Uploaded By You..</p>
              <%
					   }
					   else
					   {		
						
					 
					 
  PreparedStatement ps=connection.prepareStatement("insert into  posts(pname,puses,pdesc,pspl,psens,uname,date,image,vote,pshare) values (?,?,?,?,?,?,?,?,?,?)"); 
				
						ps.setString(1,pname);
						ps.setString(2,puses);	
						ps.setString(3,descr1);
						ps.setString(4,pspl1);
						ps.setString(5,psens);
						ps.setString(6,uname);
						ps.setString(7,dt);						
						ps.setBinaryStream(8, (InputStream)fs, (int)(file1.length()));	
						ps.setInt(9,vote);
						ps.setString(10,psr);
						
						
						if(f == 0)
							ps.setObject(8,null);
						else if(f == 16)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(8,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
					
					
									
						
						
		%>
</p>
                  <h3 >&nbsp;</h3>
                  <h3 align="center" class="style8 style7" >Post Created Sucessfully!</h3>
                  <p class="style30">&nbsp;</p>
                  </p>
                  <%
		}
		connection.close();
		}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
            <p>&nbsp;</p>
            <div align="center" class="style22">
              <div align="right"><a href="UserMain.jsp" class="style11">Back</a></div>
            </div>
			
			
			
			
			
			
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
