<%-- 
    Document   : Admin_signup
    Created on : 20 Dec, 2023, 3:57:30 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin signup</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        
        <style>
            body{
                background:url("triangle_background2.jpg");
                background-repeat: no-repeat;
                background-size: 1920px 1080px;
            }
            .container{
                background-color:#cdeeee;
                max-width:600px;
                margin-left: auto;
                margin-right: auto;
                margin-top:30px;
                padding-top:20px;
                padding-bottom:15px;
                border-radius:25px;
            }
            h1{
                border-radius: 68px;
                background: linear-gradient(145deg, #75a5ff, #628bdb);
                box-shadow:  27px 26px 54px #7979d2,
                    -27px -26px 54px #7979d2;
                width:auto;
                text-align: center;
            }
            .rainbow-hover{
                font-size: 16px;
                font-weight: 700;
                color: #ff7576;
                background-color: #2B3044;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 12px 24px;
                position: relative;
                line-height: 24px;
                border-radius: 9px;
                box-shadow: 0px 1px 2px #2B3044,
                    0px 4px 16px #2B3044;
                transform-style: preserve-3d;
                transition: transform 0.1s;
            }

            .sp {
                background: linear-gradient(
                    90deg,
                    #866ee7,
                    #ea60da,
                    #ed8f57,
                    #fbd41d,
                    #2cca91
                    );
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
                display: block;
            }
            .rainbow-hover:active {
                transition: 0.3s;
                transform: scale(0.93);
            }
            input[type=text],[type=password],[type=text-area],[type=email]{
                border: solid;
                box-shadow: 2px 2px 15px #58e4e2 inset;
                border-radius:10px;
            }
            button {
                position: relative;
                top: 10px;
                left: 20px;
            }      
        </style>
    </head>
    <body>
        <div class="container">
            <form action="admin_signup" method="post">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <h1 style="form-control">𝓢𝓲𝓰𝓷 𝓾𝓹</h1>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:20px"><b>Name</b></label>
                                <br>
                                <input type="text" name="userName" onkeypress="javascript :return isString(event)" placeholder="Enter your full name" class="form-control" required>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:20px"><b>Address</b></label>
                                <br>
                                <input type="text-area" name="userAddress" placeholder="Enter your address" class="form-control" required>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:20px"><b>Contact</b></label>
                                <br>
                                <input type="text" name="userContact" onkeypress="javascript:return isContactno(event)" placeholder="Enter your contact" class="form-control" maxlength="10" minlength="10" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:20px"><b>Email</b></label>
                                <br>
                                <input type="email" name="userEmail" placeholder="Enter your emial address" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <label style="font-size:20px"><b>Password</b></label>
                                <br>
                                <input type="password" name="adminsignuppassword" placeholder="Enter your password" class="form-control" required="">
                            </div>
                        </div>
                        <br>
                    </div>  
                    <div class="col-sm-2"></div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <button type="submit" value="Register" data-label="Register" name="register" class="rainbow-hover" >
                            <span class="sp">Register</span>
                        </button>
                    </div>
                    <div class="col-sm-2"></div> 
                    <div class="col-sm-6"><br>
                        <p>Already have an account? <a style="color: orange;" href="Admin_login.jsp"> Login</a></p>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
