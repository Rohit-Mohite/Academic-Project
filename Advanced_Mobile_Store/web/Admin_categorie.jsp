<%-- 
    Document   : Admin_categorie
    Created on : 7 Jan, 2024, 4:13:05 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin categorie</title>
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
                background-color: #ede8e9;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                min-height: 380px;
                position: relative;
                margin: 20px;
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
            <form action="Admin_categorie" method="post">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <br><br>
                        <h1 style="text-align: center;box-shadow: 2px 2px 15px #b4b6ee inset;border-radius:30px;">Product Categorie</h1>
                        <br>                 
                        <label for="image-input" style="text-align: center;font-size:19px;">Product Image: </label>  <br><br>                     
                        <input type="file" id="image-input" name="cat_image" accept="image/*" onchange="readURL(this);" required=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img id="preview-image" src="#" alt="your image" />
                        <br><br>
                        <div class="row">
                            <div class="col-sm-12">
                                <input type="text" name="Cat_ProductName" placeholder="Product Name" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:19px;">Discription</label>
                                <input style=" border: solid;box-shadow: 2px 2px 15px #c4ebf3 inset;height: 65px;" name="Cat_ProductDescription"  class="form-control"  required="">
                                
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <input type="text" name="Cat_ProductAmount" placeholder="Amount" class="form-control" required="">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <br><br>
                        <input type="submit" value="Submit" name="AddProductSubmit" class="form-control" style="background-color:#3dcc5f;">
                    </div>
                    <div class="col-sm-3"></div>
        </div>
            </form>
    </body>
</html>
