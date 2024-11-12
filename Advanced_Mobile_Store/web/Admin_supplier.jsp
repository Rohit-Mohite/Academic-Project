<%-- 
    Document   : Admin_supplier
    Created on : 6 Jan, 2024, 10:31:47 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supplier</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="Admin_header.jsp"%>
        <style>
            .form-control {
                padding: 10px;
                margin-bottom: 10px;
            }
            input[type="submit"] {
                background-color: #4CAF50; 
                border:solid;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
            input[type=text],[type=email]
            {              
                border-color: black; 
                border: solid;
            }
            body{
                background: linear-gradient(rgba(255, 255, 255, 0.6), rgba(255, 255, 255, 0.6)), url("Supplier.jpg");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                min-height: 380px;
                position: relative;
                margin: 20px;
            }

        </style>

    </head>
    <body>
        <div class="container">
            <form action="Admin_supplier" method="post">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <h1 style="text-align: center">Supplier</h1>
                        <br>
                        <input type="text" name="SupplierName" placeholder="Fullname" class="form-control" onkeypress="javascript :return isString(event)" required="">
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="email" name="SupplierEmail" placeholder="Email" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="SupplierContact" placeholder="Contact Number" onkeypress="javascript :return isContactno(event)" maxlength="10" minlength="10" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:18px;"><b>Product Details</b></label>
                                <input type="text" name="productdetails"   class="form-control" style="border-color: black;border: solid; height: 65px;" required="">                
                               
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="SupplierBrandName" placeholder="Brand Name" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="SupplierProductPrice" placeholder="Price" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:18px;"><b>Address</b></label>
                                <textarea  name="SupplierAddress" placeholder="Address"  class="form-control" style="border-color: black;border: solid;" required="">                
                                </textarea>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="SupplierTotalOrder" placeholder="Total Order" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="SupplierTotalAmount" placeholder="Total Amount" onkeypress="javascript :return isContactno(event)" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <input type="submit" value="Submit" name="SupplierSignupSubmit" class="form-control">
                    </div>
                    <div class="col-sm-3"> </div>           
                </div>
            </form>
        </div>
    </body>

</html>
