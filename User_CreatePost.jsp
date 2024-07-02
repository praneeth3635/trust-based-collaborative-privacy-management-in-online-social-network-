<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Post Page</title>
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
            
             <form action="User_CreatePost1.jsp" method="post" enctype="multipart/form-data" name="s" target="_top" id="s" onsubmit="return valid()"  ons="ons">
              
              <table width="553" border="0" align="center">
                <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Post Name :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="pname" id="pname" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Post Uses :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="puses" id="puses" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Post Description :</strong></span></td>
                  <td width="386"><textarea name="text" id="textarea" cols="25" rows="4"></textarea></td>
                </tr>
				<tr>
                  <td height="42" ><span class="style7"> <strong>Post Speciality :</strong> </span></td>
                  <td><input required="required" type="text" name="pspl" id="pspl" /></td>
                </tr>	
				<tr>
                  <td height="42" ><span class="style7"> <strong>Post Sensitive :</strong> </span></td>
                  <td><select id="s1" name="psens" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Yes</option>
                        <option>No</option>
                      </select></td>
                </tr>				
				<tr>
            	   <td height="42" ><span class="style7"> <strong>Select Image :</strong> </span></td>
            		    <td><input name="pic" type="file" class="file " id="pic" required />                </td>
              		</tr>
				 <tr>
                <tr>
                  <td><div align="right"><span class="style8"></span></div></td>
                  <td><input type="submit" name="Submit" value="Upload Post" /></td>
                </tr>
              </table>
             
            </form>
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
