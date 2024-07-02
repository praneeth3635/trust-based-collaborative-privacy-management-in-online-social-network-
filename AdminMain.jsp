<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main Page</title>
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
          <h2 align="center"><a href="index.html"><span class="style3">Welcome OSN Admin..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p><img src="images/Hom1.png" width="622" height="300" /></p>
		  <p>&nbsp;</p>
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
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="AdminMain.jsp">Home</a></strong></li>
			<li><strong><a href="Admin_AuthorizeUsers.jsp">View all Users and Authorize</a></strong></li>
			<li><strong><a href="Admin_ViewFriendRequests.jsp">View all Friend Request and Response</a></strong></li>
			<li><strong><a href="Admin_ViewUserAccessControl.jsp">View all Users and View Post Access controls to their friends</a></strong></li>
			<li><strong><a href="Admin_ViewWtUser.jsp">View All users with weighted by trust value(vote) and view non trusted users(vote is 0)</a></strong></li>
			<li><strong><a href="Admin_ViewTrustedNonTrustedPosts.jsp">View All trusted and non trusted user's post (vote is 0)</a></strong></li>
			<li><strong><a href="Admin_ViewSharedNonSharedPosts.jsp">View All shared and not shared Posts and video posts with Votes and Openions </a></strong></li>
			<li><strong><a href="Admin_ViewPostVoteInChart.jsp">View All posts with Vote in chart</a></strong></li>
			<li><strong><a href="Admin_ViewVideoPostVoteInChart.jsp">View All Video posts with Vote in chart</a></strong></li>
			<li><strong><a href="Admin_ViewUserVoteInChart.jsp">View All users with weighted by trust value(vote) in chart</a></strong></li>
			<li><strong><a href="AdminLogin.jsp">Logout</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
    

</html>
