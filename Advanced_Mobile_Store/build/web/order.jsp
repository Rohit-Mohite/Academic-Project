<%-- 
    Document   : order
    Created on : 20 Feb, 2024, 8:12:44 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="User_header.jsp"%>
        <style>
            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }

            .horizontal-timeline .items {
                border-top: 2px solid #ddd;
            }

            .horizontal-timeline .items .items-list {
                position: relative;
                margin-right: 0;
            }

            .horizontal-timeline .items .items-list:before {
                content: "";
                position: absolute;
                height: 8px;
                width: 8px;
                border-radius: 50%;
                background-color: #ddd;
                top: 0;
                margin-top: -5px;
            }

            .horizontal-timeline .items .items-list {
                padding-top: 15px;
            }
        </style>
    </head>
    <body>
        <section class="h-100 h-custom" style="background-color: #eee;">
            <form action="user_booking" method="post">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-8 col-xl-6">
                            <div class="card border-top border-bottom border-3" style="border-color: #f37a27 !important;">
                                <div class="card-body p-5">

                                    <p class="lead fw-bold mb-5" style="color: #f37a27;">Purchase Reciept</p>

                                    <div class="row">
                                        <div class="col mb-3">
                                            <p class="small text-muted mb-1">Date</p>
                                            <p><%=session.getAttribute("date")%></p>
                                        </div>
                                        <div class="col mb-3">
                                            <p class="small text-muted mb-1">Email</p>
                                            <p><%=session.getAttribute("email")%></p>
                                        </div>

                                    </div>

                                    <div class="mx-n5 px-5 py-4" style="background-color: #f2f2f2;">
                                        <div class="row">
                                            <div class="col mb-3">
                                                <p class="small text-muted mb-1">Product name</p>
                                                <p><%=session.getAttribute("bname")%></p>
                                            </div>

                                            <div class="col-md-4 col-lg-3">
                                                <p><%=session.getAttribute("price")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-8 col-lg-9">
                                                <p class="mb-0">Shipping</p>
                                            </div>
                                            <div class="col-md-4 col-lg-3">
                                                <p><%=session.getAttribute("address")%></p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row my-4">
                                        <div class="col-md-4 offset-md-8 col-lg-3 offset-lg-9">
                                            <p class="lead fw-bold mb-0" style="color: #f37a27;"><%=session.getAttribute("price")%></p>
                                        </div>
                                    </div>

                                    <p class="lead fw-bold mb-4 pb-2" style="color: #f37a27;">Tracking Order</p>

                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="horizontal-timeline">

                                                <ul class="list-inline items d-flex justify-content-between">
                                                    <li class="list-inline-item items-list">
                                                        <p class="py-1 px-2 rounded text-white" style="background-color: #f37a27;">Ordered</p
                                                        class="py-1 px-2 rounded text-white" style="background-color: #f37a27;">
                                                    </li>
                                                    <li class="list-inline-item items-list">
                                                        <p class="py-1 px-2 rounded text-white" style="background-color: #f37a27;">Shipped</p
                                                        class="py-1 px-2 rounded text-white" style="background-color: #f37a27;">
                                                    </li>
                                                    <li class="list-inline-item items-list">
                                                        <p class="py-1 px-2 rounded text-white" style="background-color: #f37a27;">On the way
                                                        </p>
                                                    </li>
                                                    <li class="list-inline-item items-list text-end" style="margin-right: 8px;">
                                                        <p style="margin-right: -8px;">Delivered</p>
                                                    </li>
                                                </ul>

                                            </div>

                                        </div>
                                    </div>

                                    <p class="mt-4 pt-2 mb-0">Your insights matter to us! Please take a moment to share your thoughts on our products or services  <a href="User_feedback.jsp" style="color: #f37a27;">Please share your feedback
                                            </a></p>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
        </section>
    </body>
</html>
