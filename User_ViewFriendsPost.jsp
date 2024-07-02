<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friends Post Page</title>
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
.style7 {color:#000000}
.style3 {font-size: 24px; color:#E0801F; }
.style8 {color: #333333}
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
          <h2 align="left"><a href="index.html"><span class="style3"> Friend <%=request.getParameter("fname") %>'s Posts..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <%
		  
		  
							String uname=(String)application.getAttribute("uname");
							String fname=request.getParameter("fname");
							
							
			try
			{		
								
		 					String query1="select images,content,acall from acs_control where username='"+fname+"' and acuname='"+uname+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
								
							String	images=rs1.getString(1);
							String	content=rs1.getString(2);
							String	acall=rs1.getString(3);
								
						
						
						if (images.equals("Yes"))
								{ %>
								
            <table width="511" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="27" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>SI NO</b></div></td>
                 <td  width="96" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" > <b>Post Image</b> </div></td>
                 <td  width="102" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Name</b></div></td>
                 <td  width="160" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Uses</b> </div></td>
                 <td  width="114" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Reviews</b></div></td>
				 <td  width="114" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"></td>
               </tr>
               
               <%
					  
					  
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0;
					
						try 
						{
							
						   	String query="select * from posts where uname='"+fname+"' and pshare='"+"Shared"+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(7);
								s2=rs.getString(3);
								s3=rs.getString(6);
								
								
								
		
								
								
								count++;
					%>
               <tr>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <div align="center">
                       <%out.println(i);%>
                     </div>
                 </div></td>
                 <td width="96" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                     <input  name="image" type="image" src="images.jsp?value=<%="post"%>&amp;id=<%=j%>" style="width:50px; height:50px;" />
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7"  >
                     <div align="center" style="color:#006633" > 
                       <b><%out.println(s0);%></b>
                     </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(s2);%>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9" ><strong> <a href="User_Review.jsp?id=<%=j%>&amp;pname=<%=s0%>&fname=<%=fname%>&upname=<%=s1%>">Review</a> </strong></div></td>
				 <td height="0"  valign="middle" bgcolor="#FFFFFF">
			   <a href="User_PostVote.jsp?pname=<%=s0%>&uname=<%=s1%>"><input name="vote" type="button" value="Vote" /></a></td>
               </tr>
               <%
					i=i+1;	
						
						} 
						}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
            </table>
			
						
						
				<%}else if(content.equals("Yes"))
				{%>
				<table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="23" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>SI NO</b></div></td>
                 <td  width="75" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" > <b>Published By</b> </div></td>
                 <td  width="76" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" > <b>Post Image</b> </div></td>
                 <td  width="54" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Name</b></div></td>
                 <td  width="50" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Uses</b> </div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Published Date & Time</b> </div></td>
                 <td  width="231" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Reviews</b></div></td>
				 <td  width="114" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"></td>
               </tr>
               
               <%
					  
					  
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0;
					
						try 
						{
						
						   	String query="select * from posts where uname='"+fname+"' and pshare='"+"Shared"+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(7);
								s2=rs.getString(3);
								s3=rs.getString(8);
								
								
								
		
								
								
								count++;
					%>
               <tr>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <div align="center">
                       <%out.println(i);%>
                     </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <div align="center" style="color:#CC0033"> 
                       <b><%out.println(s1);%></b>
                   </div>
                 </div></td>
                 <td width="76" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                     <input  name="image" type="image" src="images.jsp?value=<%="post"%>&amp;id=<%=j%>" style="width:50px; height:50px;" />
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7"  >
                     <div align="center" style="color:#006633"> 
                       <b><%out.println(s0);%></b>
                   </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(s2);%>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(s3);%>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9" ><strong> <a href="User_Review.jsp?id=<%=j%>&amp;pname=<%=s0%>&fname=<%=fname%>&upname=<%=s1%>">Review</a> </strong></div></td>
				 <td height="0"  valign="middle" bgcolor="#FFFFFF">
			   <a href="User_PostVote.jsp?pname=<%=s0%>&uname=<%=s1%>"><input name="vote" type="button" value="Vote" /></a></td>
               </tr>
			   
               <%
					i=i+1;	
						
						} 
						}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
             </table>
			 
								
				<%}else if(acall.equals("Yes"))
				{%>
				<table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="23" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>SI NO</b></div></td>
                 <td  width="75" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" > <b>Published By</b> </div></td>
                 <td  width="76" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" > <b>Post Image</b> </div></td>
                 <td  width="54" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Name</b></div></td>
                 <td  width="50" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Uses</b> </div></td>
				 <td  width="50" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Description</b> </div></td>
				 <td  width="50" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Post Speciality</b> </div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Published Date & Time</b> </div></td>
                 <td  width="231" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style2" ><b>Reviews</b></div></td>
				 <td  width="231" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"></td>
               </tr>
              
               <%
					  
					  
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0;
					
						try 
						{
							
						   	String query="select * from posts where uname='"+fname+"' and pshare='"+"Shared"+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(7);
								s2=rs.getString(3);
								s3=rs.getString(8);
								s4=rs.getString(4);
								s5=rs.getString(5);
								
								String descr1=new String(Base64.decode(s4.getBytes()));
								String spl1=new String(Base64.decode(s5.getBytes()));
								
		
								
								
								count++;
					%>
               <tr>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <div align="center">
                       <%out.println(i);%>
                     </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <div align="center" style="color:#CC0033"> 
                       <b><%out.println(s1);%></b>
                     </div>
                 </div></td>
                 <td width="76" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                     <input  name="image" type="image" src="images.jsp?value=<%="post"%>&amp;id=<%=j%>" style="width:50px; height:50px;" />
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7"  >
                     <div align="center" style="color:#006633">
                       <b><%out.println(s0);%></b>
                   </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(s2);%>
                 </div></td>
				 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(descr1);%>
                 </div></td>
				 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
				  <div align="center" style="color:#FF6600">
                    <b> <%out.println(spl1);%> </b>
				   </div>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style7" >
                     <%out.println(s3);%>
                 </div></td>
                 <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9" ><strong> <a href="User_Review.jsp?id=<%=j%>&amp;pname=<%=s0%>&fname=<%=fname%>&upname=<%=s1%>">Review</a> </strong></div></td>
				 <td height="0"  valign="middle" bgcolor="#FFFFFF"><a href="User_PostVote.jsp?pname=<%=s0%>&uname=<%=s1%>"><input name="vote" type="button" value="Vote" /></a></td>
               </tr>
               <%
					i=i+1;	
						
						} 
						}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
             </table>
			 
			 
				<%}else
				{ out.println("<h3>Access Permission Not Given</h3>");%>
				
			 <%
			 			}
			 		connection.close();
			 }
			 else
				{ out.println("<h3>Post Access Control is Not Set By Your Friend</h3>");
				
				%> <br/>
			 <span class="style8"><b>Request</b> Friend for </span><a href="User_Access_Request.jsp?fname=<%=fname%>&rquser=<%=uname%>" title="Click to Send Post Access Request"><b>Post Access </b></a> 
			 <%}
			 }
					catch(Exception e)
					{
						e.printStackTrace();
					}
					
			%>
					
             <p>&nbsp;</p>
		<div align="right" class="style22"><a href="User_AllFriendsPosts.jsp" class="style11">Back</a></div>
            
			
			
			
			
			
			
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
