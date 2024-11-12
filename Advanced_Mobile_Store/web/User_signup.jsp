<%-- 
    Document   : User_signup
    Created on : 30 Dec, 2023, 7:25:00 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user sign up</title>
        <link rel="stylesheet" href="bootstrap.min.css">

        <style>
            .form{
                background-color: black;
                color: white;
                padding: 20px;
                border-bottom-left-radius: 20px;
                border-top-left-radius: 20px;
            }
            h1{
                text-align: center;
            }
            body{
                background-image:url(user_background1.jpg);
                margin: 50px;
                background-repeat:no-repeat;
                background-size: cover;
            }
            input[type=text],[type=email],[type=password],[type=textarea]
            {              
                border-color: black; 
                box-shadow: 2px 2px 15px #cc33ff inset;
            }
            input[type=submit]{
                background-color:springgreen;
                border-radius: 30px;
                border: solid;
                box-shadow: 2px 2px 15px #cc33ff inset;
            }
            .side{
                background-image: url("user_signup_mobile_image1.jpg");
                background-size: cover;
                padding:20px;
                border-bottom-right-radius:20px;
                border-top-right-radius:20px;
                opacity: 1.0;
            }
            .container{
                border: white;
            } 
            textarea{
                background-color: #404040;
            }
        </style>
    </head>
    <body>
        <br>
        <div class="container">
            <form action="user_signup" method="post" onsubmit="return checkPasswords()">
                <div class="row">
                    <div class="col-sm-5 form">
                        <h1 style="text-align: center">Advanced Mobile Store</h1>
                        <br>
                        <input type="text" name="userName" placeholder="Fullname" class="form-control" onkeypress="javascript :return isString(event)" required="">
                        <br>
                        <input type="email" name="userEmail" placeholder="Email" class="form-control" required="">
                        <br>
                        <input type="text" name="userContact" placeholder="Contact Number" onkeypress="javascript :return isContactno(event)" maxlength="10" minlength="10" class="form-control" required="">
                        <br>
                        <label style="color:white;font-size:17px;">Address</label>
                        <textarea  name="userAddress" placeholder="Address"  class="form-control" style=" box-shadow: 2px 2px 15px #cc33ff inset;" required="">
                        </textarea>
                        <br>
                        <div class="row"> 
                            <div class="col-sm-6"> 
                                <input type="password" id="userPassword" name="userPassword" placeholder="Create Password" class="form-control" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="password" id="userConfirmpassword" name="userConfirmpassword" class="form-control" placeholder="Confirm Password" required="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="submit" value="Sign_Up" name="userSignupSubmit" class="form-control">   
                            </div>
                            <div class="col-sm-6">
                                <p>Already have an account? <a style="color: orange;" href="User_login.jsp"> Login</a></p>
                            </div>               
                        </div>
                        <br><br>
                        <p>By clicking on Sign Up, you agree to our <a href="terms.html"> Terms and condition of use</a> </p>
                        <br>
                    </div>
                    <div class="col-sm-7 side">
                    </div>
                </div>
            </form>
        </div>
        <script>
            function checkPasswords() {
                var password = document.getElementById('userPassword').value;
                var confirmPassword = document.getElementById('userConfirmpassword').value;

                if (password != confirmPassword) {
                    alert('Passwords do not match.');
                    return false;  // Prevent form submission
                } else {
                    return true;  // Allow form submission
                }
            }
        </script>
    </body>

</html>
