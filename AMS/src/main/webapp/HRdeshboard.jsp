<%-- 
    Document   : HRdeshboard
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
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>HR Dashboard</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <style>

            .alert {
                width:15%;


            }
        </style>
    </head>



    <body>
        <!--preloader-->
        <link href="css/style_2.css" rel="stylesheet">
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
                <%@include file="header2.jsp" %>

                <nav class="navbar-default navbar-side" role="navigation">
                    <div class="sidebar-collapse">
                        <div id="mySidebar" class="sidebar">
                            <ul class="nav" id="main-menu">

                                <li>
                                    <a class="active-menu" href="#"><i class="fa fa-dashboard"></i> Dashboard</a>
                                </li>
                                <li>
                                    <a href="manage_employee2.jsp"><i class="fa fa-edit"></i>  Employee</a>

                                </li> 

                                <li>
                                    <a href="live_activity_table2.jsp"><i class="fa fa-table"></i> Live Activity  </a>

                                </li> 		 
                                <li>
                                    <a href="reports2.jsp"><i class="glyphicon glyphicon-list-alt"></i> Reports </a>

                                </li> 	
                            </ul>   
                        </div>
                    </div>
                </nav>


                <div id="page-wrapper" >
                    <div class="header"> 
                        <h1 class="page-header">
                            Dashboard <small>Welcome HR  </small>
                        </h1>

                        <div class="row">
                            <div class="col-12">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Today Summary
                                    </div>
                                    <div class="panel-body ">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="today_present.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #dff0d8" class="card-body">
                                                            <h5 class="card-title">Present</h5>
                                                            <p class="card-text">250 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div  class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="today_absent.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #f2dede" class="card-body">
                                                            <h5 class="card-title">Absent</h5>
                                                            <p class="card-text">20 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="today_late_coming.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #d9edf7" class="card-body" >
                                                            <h5 class="card-title">Late Coming</h5>
                                                            <p class="card-text">10 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="today_early_leaving.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #d9edf7" class="card-body" >
                                                            <h5 class="card-title">Early Leaving</h5>
                                                            <p class="card-text">10 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>  
                        <div class="row">
                            <div class="col-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Yesterday Summary
                                    </div>
                                    <div class="panel-body ">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_present.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #dff0d8" class="card-body">
                                                            <h5 class="card-title">Present</h5>
                                                            <p class="card-text">250 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div  class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_absent.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #f2dede" class="card-body">
                                                            <h5 class="card-title">Absent</h5>
                                                            <p class="card-text">20 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_late_coming.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #d9edf7" class="card-body" >
                                                            <h5 class="card-title">Late Coming</h5>
                                                            <p class="card-text">10 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_late_staying.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #d9edf7" class="card-body" >
                                                            <h5 class="card-title">Late Staying</h5>
                                                            <p class="card-text">25 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_missed_punch.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #f2dede" class="card-body" >
                                                            <h5 class="card-title">Missed Punch</h5>
                                                            <p class="card-text">5 </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-6 col-lg-3">
                                                <a style="color: black;text-decoration: none;" href="yesterday_early_leaving.jsp">
                                                    <div class="card">
                                                        <div style="background-color: #d9edf7" class="card-body" >
                                                            <h5 class="card-title">Early Leaving</h5>
                                                            <p class="card-text">5 </p>
                                                        </div>
                                                    </div>
                                                </a>
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

    </body>
</html>