<%-- 
    Document   : live_activity_table2
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
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>Primavera systems</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="css/data-table/bootstrap-table.css"/>
        <link rel="stylesheet" href="css/data-table/bootstrap-editable.css"/>
    </head>

    <body onpageshow="searchInfo()">
        <!--preloader-->
        <link href="css/style_1.css" rel="stylesheet"/>
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
                                <a  href="HRdeshboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="manage_employee2.jsp"><i class="fa fa-edit"></i> Employee</a>
                            </li> 

                            <li>
                                <a class="active-menu" href="#"><i class="fa fa-table"></i> Live Activity </a>
                            </li> 		 
                            <li>
                                <a href="reports2.jsp"><i class="glyphicon glyphicon-list-alt"></i> Reports </a>
                            </li> 	
                        </ul>
                    </div>
                </div>
            </nav>

            <div id="page-wrapper">
                <div class="header"> 
                    <h1 class="page-header">
                        Live Activity
                    </h1>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="sparkline13-list">
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                        <div id="toolbar">
                                        </div>

                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-click-to-select="true" data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="id">ID</th>
                                                    <th data-field="name" data-editable="true">Name</th>
                                                    <th data-field="time" data-editable="true">Date & Time</th>
                                                    <th data-field="status" data-editable="true">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>XYZ</td>
                                                    <td>09:00</td>
                                                    <td>IN</td>
                                                </tr>   
                                                <tr>
                                                    <td>2</td>
                                                    <td>XYZ</td>
                                                    <td>13:00</td>
                                                    <td>OUT</td>
                                                </tr>   
                                                <tr>
                                                    <td>3</td>
                                                    <td>XYZ</td>
                                                    <td>14:00</td>
                                                    <td>IN</td>
                                                </tr>   
                                                <tr>
                                                    <td>4</td>
                                                    <td>XYZ</td>
                                                    <td>19:00</td>
                                                    <td>OUT</td>
                                                </tr>   
                                            </tbody>
                                        </table>
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
        <script src="js/data-table/bootstrap-table.js"></script>
        <script src="js/data-table/data-table-active.js"></script>
        <script src="js/data-table/bootstrap-table-resizable.js"></script>
        <script src="js/data-table/colResizable-1.5.source.js"></script>

    </body>
</html>
