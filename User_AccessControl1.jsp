<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Access Control Page</title>
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
	font-size: 12px;
	color: #1e5381;
}
.style6 {font-size: 16px; color: #FF0000; }
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
          <h2 align="left"><a href="index.html"><span class="style3">Access Control Status..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <%			
			
					String	user=(String)application.getAttribute("uname");
					String	acuname=request.getParameter("friendname");	
					String	images=request.getParameter("images");
					//String	content=request.getParameter("content");
					//String	all=request.getParameter("all");
					
					
		try {
								
														
				if(images.equalsIgnoreCase("images"))
				{
				
				String YES="Yes";
				String NO="No";		
		
						
			 			String query1="select * from acs_control  where username='"+user+"' and acuname='"+acuname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style6" style="color:#000000">User Access Already Set..</p>
		          <p align="left"><a href="User_FriendsAccessControl.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into acs_control(username,acuname,images,content,acall) values(?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,acuname);
						ps.setString(3,YES);	
						ps.setString(4,NO);
						ps.setString(5,NO);
										
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style6" style="color:#000000">Access Control Set Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="User_FriendsAccessControl.jsp" class="style16">Back</a></p>
		          <%
			
					}}
					
				}else if(images.equalsIgnoreCase("content"))
				{	
				
				String YES="Yes";
				String NO="No";		
		
						
			 			String query1="select * from acs_control  where username='"+user+"' and acuname='"+acuname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style6" style="color:#000000">User Access Already Set..</p>
		          <p align="left"><a href="User_FriendsAccessControl.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into acs_control(username,acuname,images,content,acall) values(?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,acuname);
						ps.setString(3,NO);	
						ps.setString(4,YES);
						ps.setString(5,NO);
										
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style6" style="color:#000000">Access Control Set Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="User_FriendsAccessControl.jsp" class="style16">Back</a></p>
		          <%
			
					}}
					
				}else if(images.equalsIgnoreCase("all"))
				{	
				
				String YES="Yes";
				String NO="No";		
		
						
			 			String query1="select * from acs_control  where username='"+user+"' and acuname='"+acuname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style6" style="color:#000000">User Access Already Set..</p>
		          <p align="left"><a href="User_FriendsAccessControl.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into acs_control(username,acuname,images,content,acall) values(?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,acuname);
						ps.setString(3,NO);	
						ps.setString(4,NO);
						ps.setString(5,YES);
										
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style6" style="color:#000000">Access Control Set Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="User_FriendsAccessControl.jsp" class="style16">Back</a></p>
		          <%
			
					}}
					
				}else{
				
				}
				
						
		}
		catch (Exception e) 
		{
		out.println(e.getMessage());
		}
			%>
			
					
					
					
					
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