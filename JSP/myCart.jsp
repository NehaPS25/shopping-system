<%@page import="project.ConnectionProvider"%>
<%@page import ="java.sql.* " %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html style="background-color:green">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
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
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>
<%
String msg = request.getParameter("msg");
if("notPossible".equals(msg))
		{
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>
<%
if("removed".equals(msg))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
<table>
<thead>
<%
int total =0;
int sno=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs1= st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
    while(rs1.next()){
    	total =rs1.getInt(1);
    }

%>
          <tr>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </th>
            <th scope="col" style="color:white"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove</th>
            
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs = st.executeQuery("SELECT * FROM Productss INNER JOIN cart ON Productss.id = cart.product_id AND cart.email = '" + email + "' AND cart.address IS NULL");
      while(rs.next())
      {
      %>
          <tr>
    <% sno = sno + 1; %>
    <td><%= sno %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><i class="fa fa-inr"></i> <%= rs.getString(4) %></td>
    <td>
        <a href="incDecQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=inc">
            <i class='fas fa-plus-circle'></i>
        </a>
        <%= rs.getString(8) %>
        <a href="incDecQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=dec">
            <i class='fas fa-minus-circle'></i>
        </a>
    </td>
    <td><i class="fa fa-inr"></i><%= rs.getString(10) %> </td>
    <td><a href="removeFromCart.jsp?id=<%= rs.getString(1) %>">Remove</a></td>
</tr>
          
<%
      }
      }
      catch(Exception e)
      { 
      }%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>