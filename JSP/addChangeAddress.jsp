<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Message Us</title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	if("valid".equals(msg))
	{
	%>
<h3 class="alert">Address Successfully Updated !</h3>
<% } %>
<% 
if("invalid".equals(msg))
	{
	%>

<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select*from users where email ='"+email+"'");
while(rs.next())
{

%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address</h3>
 <input  class="input-style" type="text"  name="address"  value="<%=rs.getString(7)%>" placeholder="enter the address" required>
 <hr>
 <h3>Enter city</h3>
  <input  class="input-style" type="text"  name="city"  value="<%=rs.getString(8)%>" placeholder="enter the city" required>
 
<hr>
<h3>Enter State</h3>
 <input  class="input-style" type="text"  name="state"  value="<%=rs.getString(9)%>" placeholder="enter the state" required>

<hr>
<h3>Enter country</h3>
 <input  class="input-style" type="text"  name="country"  value="<%=rs.getString(10)%>" placeholder="enter the country" required>

<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
<br><br><br>
<br>
</html>