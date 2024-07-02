<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Vote Friend Page</title>
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
.style7 {color:#000000}
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
          <h2 align="left"><a href="index.html"><span class="style3">Vote Your Friends..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            
            <table width="329" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="35"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style2"><b>Si No. </b></div></td>
                        <td  width="139" valign="middle" style="color: #660000;"><div align="center" class="style2"><b>Friend Name</b></div></td>
                        <td  width="90" valign="middle" style="color: #2c83b0;">&nbsp;</td>
                      </tr>
                      
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
		
						   	String query="select *  from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									i=rs.getInt(1);
									s2=rs.getString(2);

									Statement stmt9=connection.createStatement();
									String strQuery9 = "select requestfrom,requestto from frequest where ((requestfrom ='"+user+"' and requestto='"+s2+"') ||(requestfrom ='"+s2+"' and requestto='"+user+"'))and  status ='Accepted' ";
									ResultSet rs9 = stmt9.executeQuery(strQuery9);
									if(rs9.next()==true)
									{
								
										
												%>
                      <tr>
                        <td height="50" align="center"  valign="middle"><div align="center" class="style7"><b>
                            <%out.println(j);%>
                        </b></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style7" style="color:#CC0033">
                           
                              <b><%out.println(s2);%></b>

                        </div></td>
                        <td height="50" align="center"  valign="middle"><label>
						 <form id="form1" name="form1" method="post" action="User_VoteFriend1.jsp">
                          <input type="hidden" value="<%=s2%>" name="friendname"/>
                         
                          <input type="submit" style="width:80px; height:25px; background-color:#006633; color:#FFFFFF;" name="Submit3" value="Vote Friend" />
                          </label>  
						  </form>					    </td>
                      </tr>
                      <%
												j+=1;	
						
							}
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
