<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %><html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{

%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp">
 <input class="input-style" type="text" name="subject" placeholder="Enter the subject" required>
 <hr>
 <textarea class="input-style" name="body"  placeholder="Enter the message" required></textarea>
 <hr>
 <button class="button" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>

</form>
<br><br><br>
</body>
</html>