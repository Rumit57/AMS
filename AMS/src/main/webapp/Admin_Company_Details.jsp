<%-- 
    Document   : Admin_Company_Details
    Created on : 17 Dec, 2019, 9:59:25 AM
    Author     : rumit
--%>

<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>


<!DOCTYPE html>
<html >

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>Admin Dashboard</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <link href="assets/css/custom-styles.css" rel="stylesheet" />

        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    </head>
    <body>
        <!--preloader-->
        <link href="css/style_1.css" rel="stylesheet">
        <script src="js/common.min.js"></script>
        <script src="js/custom.min.js"></script>
        <div id="preloader">
            <div class="loader">
                <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
                </svg>
            </div>
        </div>
        <div id="wrapper">
            <%@include file="header1.jsp" %>

            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <div id="mySidebar" class="sidebar">
                        <ul class="nav" id="main-menu">

                            <li>
                                <a href="index.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="manageHR.jsp"><i class="fa fa-edit"></i> HR </a>
                            </li> 		 
                        </ul>
                    </div>
                </div>
            </nav>



            <div id="page-wrapper">
                <div class="header"> 
                    <br>

                    <div class="row">

                        <div class="col-md-12">
                            <div class="sparkline13-list">

                                <div class="row">
                                    <center><div class="col-sm-10"><h1>Company Details</h1></div></center>
                                </div>
                                <br>

                                <div class="row">
                                    <div class="col-sm-3">


                                        <div style="border-style: solid">
                                            <img src="images.png" class="img-thumbnail" max-width="-webkit-fill-available" max-height="-webkit-fill-available" alt=""/>

                                        </div>
                                        <br>
                                        <br>
                                        <input type="file" class="text-center center-block file-upload">

                                    </div>

                                    <input style="margin-right: 15px;visibility: visible" onclick="edit()" id="edit" type="submit" class="btn btn-primary pull-right" value="Edit Details"/>
                                    <br>
                                    <div class="col-sm-9">



                                        <div class="tab-content">

                                            <div class="tab-pane active" id="home">
                                                <hr>
                                                <form class="form" action="#" method="post" id="registrationForm">
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="company_name"><h4>Company name</h4></label>
                                                            <input type="text" readonly class="form-control" name="company_name" id="company_name" placeholder="company name" value="Primavera System">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                    </div>
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="GST"><h4>GSTIN NO</h4></label>
                                                            <input type="text" readonly class="form-control" name="GST" id="GST"  value="35AABCS1429B1ZX">
                                                        </div>
                                                    </div>



                                                    <div class="form-group">
                                                        <div class="col-xs-6">
                                                            <label for="mobile"><h4>Mobile</h4></label>
                                                            <input type="text" class="form-control" readonly name="mobile" id="mobile" placeholder="enter mobile number" value="0235-220160">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="email"><h4>Email</h4></label>
                                                            <input type="email" class="form-control" readonly name="email" id="email" value="Primavera-system25@gmail.com">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="Address"><h4>Address</h4></label>
                                                            <input type="text" class="form-control" readonly name="Address" id="address" value="301,Alkananda Complax,Akota Road">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="City"><h4>City</h4></label>
                                                            <input type="text" class="form-control" readonly id="city" name="City" value="Vodadra">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="State"><h4>State</h4></label>
                                                            <input type="text" class="form-control" readonly name="State" id="state" value="Gujarat">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="pin"><h4>PIN CODE</h4></label>
                                                            <input type="text" class="form-control" readonly name="pin" id="pin" value="396445">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">

                                                        <div class="col-xs-6">
                                                            <label for="Conutry"><h4>Conutry</h4></label>
                                                            <input type="text" class="form-control" readonly name="Conutry" id="conutry" value="India">
                                                        </div>
                                                    </div>


                                                    <div class="form-group">

                                                        <div class="col-xs-12">
                                                            <br>
                                                            <center>
                                                                <button type="submit" style="width: 20%;visibility: hidden" class="btn btn-primary"  name="update" id="update" value="8866291338">Update</button>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="page-inner">

                    <%@include file="footer.jsp" %>
                </div>
            </div>
        </div>
        <script src="assets/js/jquery-1.10.2.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <script>
            function edit()
            {
                document.getElementById("company_name").readOnly = false;
                document.getElementById("mobile").readOnly = false;
                document.getElementById("email").readOnly = false;
                document.getElementById("address").readOnly = false;
                document.getElementById("city").readOnly = false;
                document.getElementById("state").readOnly = false;
                document.getElementById("pin").readOnly = false;
                document.getElementById("conutry").readOnly = false;
                document.getElementById("update").style.visibility = "visible";
                document.getElementById("edit").style.visibility = "hidden";

            }
        </script>

</html>