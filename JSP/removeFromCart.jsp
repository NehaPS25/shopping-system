<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%
 String email = (String)session.getAttribute("email");
String Product_id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete  from cart where email ='"+email+"' and Product_id ='"+Product_id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=removed");
	
}catch(Exception e)
{
	 System.out.println(e);
}

%>