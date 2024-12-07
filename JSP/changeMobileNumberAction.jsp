<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>

<%
String email = (String)session.getAttribute("email");
String mobileNumber = request.getParameter("mobileNumber");
String Password = request.getParameter("Password");
int check=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select*from users  where email='"+email+"'and Password='"+Password+"'");
	while(rs.next())
	{
		check=1;
		
		st.executeUpdate("update users set mobileNumber='"+mobileNumber+"'where email ='"+email+"'");
	     response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(check==0)
	{
	     response.sendRedirect("changeMobileNumber.jsp?msg=wrong");

	}
	
	
}catch(Exception e)
{
	
}

%>