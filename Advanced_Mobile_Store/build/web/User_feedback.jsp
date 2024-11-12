<%-- 
    Document   : User_feedback
    Created on : 9 Jan, 2024, 2:27:42 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Feedback</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <%@include file="User_header.jsp"%>
        <style>
            input[type=text],[type=text-area],[type=email]{
                border: solid;
                box-shadow: 2px 2px 15px #58e4e2 inset;
                border-radius:10px;
            }
            .container{
                background-color:  #e1dbdb;
                margin-left: auto;
                margin-right: auto;
                margin-top:30px;
                padding-top:20px;
                padding-bottom:15px;
                border-radius:25px;
            }
            .center-radio {
                text-align: center;
            }
            .header{
                padding:10px;
            }
        </style>


    </head>
    <body>
        <div class="container">
            <form action="user_feedback" method="post">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <h1 style="text-align: center;">Feedback Form</h1>
                        <br>
                        <label style="font-size:15px"><b>Name</b></label>
                        <br>
                        <input type="text" onkeypress="javascript :return isString(event)" name="feed_name" placeholder="Enter your full name" class="form-control" required>
                        <br>
                        <label style="font-size:15px" ><b>Email<span>*</span></b></label>
                        <br>
                        <input type="email" value="<%=session.getAttribute("email")%>" placeholder="Enter your emial address" name="feed_email" class="form-control" required="">
                        <br>
                        <label style="font-size:15px"><b>Contact</b></label>
                        <br>
                        <input type="text" onkeypress="javascript:return isContactno(event)" name="feed_contact" placeholder="Enter your contact" class="form-control" maxlength="10" minlength="10" required="">
                        <br>
                        <p>What is your overall impression?<span>*</span></p>                                  
                        <table>
                            <tbody>
                                <tr>
                                    <th class="first-col"></th>
                                    <th class="header">Very Satisfied</th>
                                    <th class="header">Satisfied</th>
                                    <th class="header">Unsatisfied</th>
                                    <th class="header">Very Unsatisfied</th>
                                </tr>
                                <tr>
                                    <td class="first-col">Professional</td>
                                    <td class="center-radio"><input name="Professional" value="Very Satisfied" type="radio" required></td>
                                    <td class="center-radio"><input name="Professional" value="Satisfied" type="radio" required></td>
                                    <td class="center-radio"><input name="Professional" value="Unsatisfied" type="radio" required></td>
                                    <td class="center-radio"><input name="Professional" value="Very Unsatisfied" type="radio" required></td>
                                </tr>
                                <!-- Add more rows as needed, each with a unique name attribute -->
                            </tbody>
                        </table>

                        <br>
                        <label style="font-size:15px">Feel free to add any other comments or suggestions:</label>
                        <input style="height:80px" type="text-area" name="feed_desc" placeholder="" class="form-control" >
                        <br>
                        <button type="submit" name="feedback" value="submit" class="rainbow-hover" style="display: block; margin: auto;">
                            <span class="sp">Send feedback</span>
                        </button>

                    </div>                   
                </div>
                <div class="col-sm-3"></div>
                 </form>
        </div>
   
</div>
</body>
</html>
