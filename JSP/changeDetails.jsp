<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
 Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select *from users where email = '"+email+"'");
while(rs.next())
{

%>

<h3>Name: <%=rs.getString(1) %> </h3>
<hr>
 <h3>Email: <%=rs.getString(2) %>  </h3>
 <hr>
 <h3>Mobile Number: <%=rs.getString(3) %>  </h3>
 <hr>
<h3>Security Question: <%=rs.getString(4) %>  </h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>