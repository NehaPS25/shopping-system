<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html style="background-color:green">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="background-color:green">
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%String msg = request.getParameter("msg");
  if("added".equals(msg))
  {
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>

<%
  if("exist".equals(msg))
  {
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
  if("invalid".equals(msg))
  {
%>
<h3 class="alert">Something went wrong try again !</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try{
	
          Connection con = ConnectionProvider.getCon();
		  Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select*from Productss where active='Yes'");
		while(rs.next())
		{
%>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
       <%
        }
		}catch(Exception e)
		{ 
			System.out.println(e);
		}%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>