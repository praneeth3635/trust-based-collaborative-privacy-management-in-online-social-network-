<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Video Post Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na11=document.s.pname.value;
if(na11=="")

{
alert("Please Enter Video Post Name");
document.s.pname.focus();
return false;
}
var na1=document.s.puses.value;
if(na1=="")

{
alert("Please Enter Post Uses");
document.s.puses.focus();
return false;
}
var na2=document.s.text.value;
if(na2=="")

{
alert("Please Enter Post Description");
document.s.text.focus();
return false;
}
var na3=document.s.pspl.value;
if(na3=="")

{
alert("Please Enter Post Speciality");
document.s.pspl.focus();
return false;
}
var na4=document.s.psens.value;
if(na4=="--Select--")

{
alert("Please Select Post Sensitive");
document.s.psens.focus();
return false;
}

}
</script>
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
          <h2 align="left"><a href="index.html"><span class="style3">Create Video Post..</span></a></h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <form name="s" action="User_CreateVideoPost1.jsp" method="post"  onSubmit="return valid()"  ons target="_top">	
	  
             <table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Name </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="pname" name="pname" class="text" style="width:175px;" /></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Uses </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="puses" name="puses" class="text" style="width:175px;" /></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Description </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="text" rows="3" cols="23"></textarea></div></td>
					</tr>
					
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Speciality</div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input id="pspl" name="pspl" class="text" style="width:175px;" /></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;">Post Sensitive</div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><select id="s1" name="psens" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Yes</option>
                        <option>No</option>
                      </select></div></td>
					</tr>
					
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Upload" style="width:100px; height:35px; background-color:#333333; color:#FF8000"/>
					<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#333333; color:#FF8000;"/></td></tr></div>

					
					
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
