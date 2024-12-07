<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.* " import="project.ConnectionProvider"%>
<% 
 String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String Price = request.getParameter("Price");
String active = request.getParameter("active");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into Productss values(?,?,?,?,?)");
	
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setString(4,Price);
	ps.setString(5,active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	

}catch(Exception e)
{
	
	response.sendRedirect("addNewProduct.jsp?msg=wrong");

}



%>    