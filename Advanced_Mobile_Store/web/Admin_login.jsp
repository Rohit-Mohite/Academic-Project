<%-- 
    Document   : Admin_login.jsp
    Created on : 23 Dec, 2023, 8:53:36 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">
         
        <style>
            body{
                background-image: url("mobile.jpg");
                text-align: center;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                min-height: 380px;
                position: relative;
                margin: 20px;
                opacity: 0.9;
            }
            .container{
                background-color:#d0c6ec;
                max-width: 600px;
                margin-left: auto;
                margin-right: auto;
                margin-top:2cm;
                padding-top:20px;
                padding-bottom:20px;
                border-radius:35px;  
                background-color: rgb(0,0,0); 
                background-color: rgba(0,0,0, 0.8);
                color: white;
                font-weight: bold;
            } 
            input[type=email],[type=password]{
                border: solid;
                box-shadow: 2px 2px 15px #cc33ff inset;
                border-radius:10px;
            }
        </style>
    </head>
    <body>
        <form action="Admin_login" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <header style=" color: #C6F0EC;
                            font-size: 45px;
                            font-weight: 600;
                            margin-bottom: 35px;
                            font-family: 'Montserrat',sans-serif;">login Form </header>                   
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label style="font-size:18px;color:#addde1">What's your email ?</label><br>
                            <input type="email" name="adminlogin" placeholder="Email" class="form-control" required>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label style="font-size:18px;color:#addde1">Your password ?</label><br>
                            <input type="password" name="adminpassword" placeholder="Password" class="form-control" required >
                        </div>
                    </div>
                    <br><br>
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <button type="submit" value="Register" data-label="Register" name="register" class="rainbow-hover" style="text-align:center">
                                <span class="sp">Login</span>
                            </button>
                        </div> 
                        <div class="col-sm-3"></div>
                    </div>
                    <br><br>
                    <div>
                        <p>Create an account ?<a style="color:#7bceea;" href="Admin_signup.jsp"> Signup</a></p>
                    </div>
                    <div >

                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
        </form>
    </body>
</html>







