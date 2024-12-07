<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<% 
String email = (String)session.getAttribute("email");
String oldPassword = request.getParameter("oldPassword");
String newPassword = request.getParameter("newPassword");
String confirmPassword = request.getParameter("confirmPassword");

if (!confirmPassword.equals(newPassword)) {
	
	response.sendRedirect("changePassword.jsp?msg=notMatch");
	}
else{
	int check =0;
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
     	ResultSet rs = st.executeQuery("select*from users where email ='"+email+"' and password='"+oldPassword+"'");
     	while(rs.next())
     	{
     		check =1;
     		st.executeUpdate("update users  set password='"+newPassword+"' where email='"+email+"'");
     		response.sendRedirect("changePassword.jsp?msg=done");
     	}
		if(check==0)
		{
			response.sendRedirect("changePassword.jsp?msg=wrong");
		}
	}catch(Exception e)
	{
		System.out.println(e);
	}
}
%>
</body>
</html>
