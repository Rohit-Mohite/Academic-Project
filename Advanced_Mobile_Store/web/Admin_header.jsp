<%-- 
    Document   : Admin_header
    Created on : 29 Dec, 2023, 8:17:13 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_header</title>
         <link rel="stylesheet" href="bootstrap.min.css">
         <script src="validation.js"></script>
         <style>
            .custom-navbar {
                background-color: #51daec;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg custom-navbar">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Mobile Store</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admin_supplier.jsp">Supplier</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admin_addProduct.jsp">Add Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admin_categorie.jsp">Product Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product_list.jsp">Product List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="bookinglist.jsp">Booking List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="feedback_list.jsp">Feedback's</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_signuplist.jsp">Signup_list</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="category_list.jsp">Category_list</a>
        </li>
        
<!--        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>-->
       
      </ul>
        <form class="d-flex" role="logout">
            <a class="btn btn-outline-danger"
               href="index.html">Logout</a>
        </form>
<!--      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-primary" type="submit">Search</button>
      </form>-->
    </div>
  </div>
</nav>
    </body>
</html>
