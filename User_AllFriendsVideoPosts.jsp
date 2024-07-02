<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>>User All Friends Video Posts Page</title>
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
.style6 {color: #E0801F}
.style7 {
	color: #660000;
	font-weight: bold;
}
.style8 {color:#000000}
.style9 {color:#CC0033}	
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
          <h2 align="left"><a href="index.html"><span class="style3">View all Friends Video Posts..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <table width="313" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="40" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style7" >SI NO</div></td>
                 <td  width="128" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style7" > Friend Name </div></td>
                 <td  width="137" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;">&nbsp;</td>
               </tr>
               <%@ include file="connect.jsp" %>
               <%
					  
					  String uname=(String)application.getAttribute("uname");
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0;
					
						try 
						{
							
						   	String query="select distinct(uname) from video_posts where uname!='"+uname+"' and pshare='"+"Shared"+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s3=rs.getString(1);
								
								
								
		String str1="select * from frequest where ((requestfrom='"+s3+"'&&requestto='"+uname+"') || (requestfrom='"+uname+"'&&requestto='"+s3+"'))&& status='Accepted'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(str1);
						if ( rs1.next() )
	   					{
								
								
								count++;
					%>
               <tr>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style8" >
                     <div align="center">
                       <%out.println(i);%>
                     </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9" >
                     <div align="center"> 
                       <b><%out.println(s3);%></b>
                      </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" title="Click to View <%=s3%>'s Video Post"   class="style9" ><strong> <a href="User_ViewFriendsVideoPost.jsp?fname=<%=s3%>" style="color:#006633">View Posts</a> </strong></div></td>
               </tr>
               <%
					i=i+1;	
						
						}}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
             </table>
             <p>&nbsp;</p>
		<div align="center" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>
			
			
			
			
			
			
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
