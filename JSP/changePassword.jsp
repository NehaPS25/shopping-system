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
  if("notMatch".equals(msg))
  {
  %>
  <h1 class="alert" style="text-align:center">New password and confirm password does not Match</h1>
<%} %>

<%

  if("wrong".equals(msg))
  {
  %>
  <h1 class="alert" style="text-align:center">Your old Password is wrong!</h1>
<%} %>


<%
if ("done".equals(msg)) {
%>
  <h1 class="alert" style="text-align:center">    Password change successfully!
</h1>

<% } %>

<%
if ("invalid".equals(msg)) {
%>
    <h1 class="alert" style="text-align:center">Something went wrong! Try again!</h1>
<% } %>





<form action="changePasswordAction.jsp" method="post">

<h3>Enter Old Password</h3>
 <input  class="input-style" type="password" name="oldPassword" placeholder="Enter the oldPassword" required>
  <hr>
 <h3>Enter New Password</h3>
  <input  class="input-style" type="password" name="newPassword" placeholder="Enter the NewPassword" required>
 
 <hr>
<h3>Enter Confirm Password</h3>
 <input  class="input-style" type="password" name="confirmPassword" placeholder="Enter the confirmPassword" required>

<hr>
 <button class="button" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>