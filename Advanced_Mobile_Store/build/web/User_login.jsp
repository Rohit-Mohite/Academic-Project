<%-- 
    Document   : User_login
    Created on : 1 Jan, 2024, 5:16:14 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        
        <style>
            body{
                background-image: url("user_login1.jpg");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                min-height: 500px;
                position: relative;

            }
            .login {
                color: #000;
                text-transform: uppercase;
                letter-spacing: 2px;
                display: block;
                font-weight: bold;
                font-size: x-large;
                text-align: center;
            }
            .card {
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 0 auto;
                width: 40%;
                flex-direction: column;
                gap: 35px;
                border-radius: 17px;              
                background: linear-gradient(145deg, #abd7d2, #cbfff9);
                box-shadow:  37px 37px 60px #8db1ac,
                    -37px -37px 60px #efffff;
                margin-top:160px;
            }
            .inputBox {
                position: relative;
                width: 250px;
            }
            .inputBox input {
                height: 50px;
                width: 100%;
                padding: 10px;
                outline: none;
                border: none;
                color: #000;
                font-size: 1em;
                background: transparent;
                border-left: 2px solid #000;
                border-bottom: 2px solid #000;
                transition: 0.1s;
                border-bottom-left-radius: 8px;
            }
            .inputBox span {
                margin-top: 5px;
                position: absolute;
                left: 0;
                transform: translateY(-4px);
                margin-left: 10px;
                padding: 10px;
                pointer-events: none;
                font-size: 12px;
                color: #000;
                text-transform: uppercase;
                transition: 0.5s;
                letter-spacing: 3px;
                border-radius: 8px;
            }
            .inputBox input:valid~span,
            .inputBox input:focus~span {
                transform: translateX(113px) translateY(-15px);
                font-size: 0.8em;
                padding: 5px 10px;
                background: #000;
                letter-spacing: 0.2em;
                color: #fff;
                border: 2px;
            }
            .inputBox input:valid,
            .inputBox input:focus {
                border: 2px solid #000;
                border-radius: 8px;
            }
            .enter {
                height: 45px;
                width: 100px;
                border-radius: 5px;
                border: 2px solid #000;
                cursor: pointer;
                background-color: transparent;
                transition: 0.5s;
                text-transform: uppercase;
                font-size: 10px;
                letter-spacing: 2px;
                margin-bottom: 1em;
            }
            .enter:hover {
                background-color: rgb(0, 0, 0);
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form action="user_login" method="post">
            <div class="row card">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <a class="login">Log in</a>
                    <br><br>
                    <div class="inputBox">
                        <input type="email" name="user_email" required>
                        <span class="user">&nbsp;&nbsp;&nbsp;&nbsp; Email</span>
                    </div>
                    <br><br>
                    <div class="inputBox">
                        <input type="password" name="user_password" required>
                        <span>Password</span>
                    </div>
                    <br><br>
                    <div style="text-align: center;">
                        <button class="enter" type="submit" value="submit" name="confirm">Submit</button>
                    </div>
                </div> 
                <div class="col-sm-3"></div>
            </div>
            </form>
        </div>
    </body>
</html>
