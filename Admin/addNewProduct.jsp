<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html style="background-color:green">
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body style="background-color:green">


<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3  class="alert">Product Added Successfully!</h3>
<%} %>
<% 
if("wrong".equals(msg))
{ %>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>
<%
int id = 1;


try
{
  Connection con = ConnectionProvider.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select max(id) from Productss");
  while(rs.next())
  {
	  id = rs.getInt(1);
	  id=id+1;
  }

}catch(Exception e )
{
	
}



%>
<form action="addNewProductAction.jsp" method="post">




<h3  style="color:black">Product ID: <%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %> ">

<div class="left-div"  style="color:black">
 <h3 style="color:black">Enter Name</h3>
 <input  class="input-style" type="text" placeholder="Enter name" required name="name">
<hr>
</div>

<div class="right-div">
<h3 style="color:black">Enter Category</h3>
  <input  class="input-style" type="text" placeholder="Enter category" required name="category">
 
<hr>
</div>

<div class="left-div">
<h3 style="color:black">Enter Price</h3>
  <input  class="input-style" type="number" placeholder="Enter Price" required name="Price">
 
<hr>
</div>

<div class="right-div">
<h3 style="color:black">Active</h3>
   <select class="input-style" name="active">
   <option value="Yes" >Yes</option>
      <option value="No" >No</option>
   
   </select>
<hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>