<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
          <h2 align="left"><a href="index.html"><span class="style3">Welcome User <%=(String)application.getAttribute("uname") %>..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
            <p>&nbsp;</p>
		  <p><img src="images/Home.png" width="642" height="466" /></p>
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
          <h2 class="star"><span>User </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="UserMain.jsp">Home</a></strong></li>
			<li><strong><a href="User_Profile.jsp">View Profile</a></strong></li>
			<li><strong><a href="User_SearchFriends.jsp">Search Friends</a></strong></li>
			<li><strong><a href="User_FriendReqRes.jsp">View Friend Request and Response</a></strong></li>
			<li><strong><a href="User_MyFriends.jsp">View My Friends</a></strong></li>
			<li><strong><a href="User_CreatePost.jsp">Create Post Data</a></strong></li>
			<li><strong><a href="User_CreateVideoPost.jsp">Create Video Clip Post</a></strong></li>
			<li><strong><a href="User_PostAccessRequests.jsp">View Post Access Requests</a></strong></li>
			<li><strong><a href="User_FriendsAccessControl.jsp">View all Your Friends and Set Access Control</a></strong></li>
			<li><strong><a href="User_ViewMyPosts.jsp">View all your Posts with votes and reviews and share to friends</a></strong></li>
			<li><strong><a href="User_ViewMyVideoPosts.jsp">View all your Video Posts with votes and reviews and share to friends</a></strong></li>
			<li><strong><a href="User_AllFriendsPosts.jsp">View all your friends post and give reviews and Vote</a></strong></li>
			<li><strong><a href="User_AllFriendsVideoPosts.jsp">View all your friends Video post and give reviews and Vote</a></strong></li>
			<li><strong><a href="User_VoteFriend.jsp">View all your Friends(stakeholder) and give Vote to Trust</a></strong></li>
			<li><strong><a href="UserLogin.jsp">Logout</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
    

</html>
