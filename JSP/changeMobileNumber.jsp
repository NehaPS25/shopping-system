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
if("done".equals(msg))
{
	

%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
	

%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action ="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name ="mobileNumber" placeholder="Enter the number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name ="Password" placeholder="Enter password" required>

<hr>
 <button class="button" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>


</body>
<br><br><br>
</html>