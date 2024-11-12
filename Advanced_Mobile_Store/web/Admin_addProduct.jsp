<%-- 
    Document   : Admin_addProduct
    Created on : 7 Jan, 2024, 10:03:41 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add product</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="Admin_header.jsp"%>
        <style>
            #preview-image {
                width: 150px; 
                height: 150px;
            }
            input[type=text],[type=file],[type=submit]
            {              
                border-color: black; 
                border: solid;
                box-shadow: 2px 2px 15px #c4ebf3 inset;
            }
            body{
                background: linear-gradient(rgba(255, 255, 255, 0.6), rgba(255, 255, 255, 0.6)), url("AddProductBackground.jpg");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                min-height: 380px;
                position: relative;
                margin: 20px;
            }
            .form-control {
                padding: 8px;
                margin-bottom: 10px;
            }
        </style>
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        document.getElementById('preview-image').src = e.target.result;
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <form action="Admin_addproduct" method="post">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <br><br>
                        <h1 style="text-align: center;box-shadow: 2px 2px 15px #93c7e1 inset;border-radius:30px;">Add Product</h1>
                        <br>                 
                        <label for="image-input" style="text-align: center;font-size:18px;">Product Image: </label>  <br><br>                     
                        <input type="file" id="image-input" name="Productimage" accept="image/*" onchange="readURL(this);" required=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img id="preview-image" src="#" alt="your image" />  
                        <br><br>
                        <div class="row">
                            <div class="col-sm-6"> 
                                <input type="text" name="ProductName" placeholder="Product Name" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="ProductModelName" placeholder="Model name" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <input type="text" name="ProductColour" placeholder="Colour" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="Product_RAM" placeholder="RAM" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductInbuiltStorage" placeholder="Inbuilt Storage" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <input type="text" name="ProductCamera" placeholder="Camera" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="Product_OS" placeholder="Operating System" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductCellularTechnology" placeholder="Cellular Technology" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <input type="text" name="ProductBattery" placeholder="Battery" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductProcessor" placeholder="Processor" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductDisplayType" placeholder="Display Type" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <input type="text" name="ProductDisplaySize" placeholder="Display Size" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductWeight" placeholder="Weight" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <input type="text" name="ProductQuantity" placeholder="Quantity" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-6"> 
                                <input type="text" name="ProductPrice" placeholder="Product Price" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="ProductSpecification" placeholder="Product Specification" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <input type="submit" value="Submit" name="AddProductSubmit" class="form-control" style="background-color:#3dcc5f">
                    </div>  
                    <div class="col-sm-3"></div>
                </div>
            </form>             
        </div>
    </body>
</html>
