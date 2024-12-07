<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Change Security Question</title>
</head>
<body>
<%
String msg =request.getParameter("msg");
if("done".equals(msg))
{

%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>

<%
if("wrong".equals(msg))
{

%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityQuestion">
  <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of your first pet ?">What is the name of your first pet ?</option>
  <option value="What elementary school did you attend?">What elementary school did you attend?</option>
    <option value="What is the name of the town where you were born ?">What is the name of the town where you were born ?</option>
  
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input  class="input-style" type="text" name="newAnswer" placeholder="Enter your new Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
   <input  class="input-style" type="password" name="password" placeholder="Enter password(For security)" required>

<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>