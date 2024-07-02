
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
				String adminname=request.getParameter("adminid");      
         		String Password=request.getParameter("pass");
			
			application.setAttribute("admin",adminname);
			
			String sql="SELECT * FROM admin where name='"+adminname+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
					response.sendRedirect("AdminRe-Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>