<%-- 
    Document   : User_header
    Created on : 3 Jan, 2024, 1:10:26 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user header</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="validation.js"></script>
        <style>
            .custom-navbar {
                background-color: #3366ff;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg custom-navbar bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Mobile Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product_category_view.jsp">view category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product_list_view.jsp">view product</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="booking.jsp">Booking</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="user_payment.jsp">Payment</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="order.jsp">View order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="User_feedback.jsp">Feedback</a>
                        </li>
                        
                    </ul>
                    <form class="d-flex" role="logout">
            <a class="btn btn-outline-danger"
               href="index.html">Logout</a>
        </form>
                </div>
            </div>
        </nav>
    </body>
</html>
