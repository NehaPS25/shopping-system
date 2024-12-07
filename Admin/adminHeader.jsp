<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <%String email=session.getAttribute("email").toString(); %>
            <center><h2>Online shopping (Nesp)</h2></center>
            <a href="addNewProduct.jsp" style="color:green">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp" style="color:green">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp" style="color:green">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp" style="color:green">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp" style="color:green">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp" style="color:green">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp" style="color:green">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
