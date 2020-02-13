<%-- 
    Document   : reports2
    Created on : 14 Jan, 2020, 11:02:19 AM
    Author     : rumit
--%>

<%@page import="java.util.*"%>
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
        <link rel="stylesheet" href="css/data-table/bootstrap-table.css"/>
        <link rel="stylesheet" href="css/data-table/bootstrap-editable.css"/>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
        <script src="js/chosen.jquery.js"></script>
        <link href="css/chosen.css" rel="stylesheet"/>
    </head>

    <body >
        <!--preloader-->
        <link href="css/style_1.css" rel="stylesheet">
        <!--<script src="js/common.min.js"></script>-->
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
                                <a href="live_activity_table2.jsp"><i class="fa fa-table"></i> Live Activity </a>
                            </li> 		 
                            <li>
                                <a class="active-menu" href="#"><i class="glyphicon glyphicon-list-alt"></i> Reports </a>
                            </li> 	
                        </ul>
                    </div>
                </div>
            </nav>

            <div id="page-wrapper">
                <div class="header"> 
                    <center>    
                        <h3 class="page-header center-block"><center>Reports</center></h3>
                        <br>
                        <select  class="form-control" style="width: 30%">
                            <option value="0">--Select Report--</option>
                            <option value="1">All Employee Working Hour Report</option>
                            <option value="2">Late Coming Report</option>
                            <option value="3">Late Staying Report</option>
                        </select> 
                    </center>

                    <!--report 1-->
                    <div class="1 GFG"  > 
                        <%@include file="Report1.jsp" %>
                    </div>

                    <!--report 2-->
                    <div class="2 GFG"> 
                        <%@include file="Report2.jsp" %>
                    </div>

                    <!--report 3-->
                    <div class="3 GFG"> 
                        <%@include file="Report3.jsp" %>
                    </div> 

                </div> 

                <div id="page-inner">
                    <%@include file="footer.jsp" %>
                </div>		
            </div>
        </div>
        <script src="assets/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("select").on('change', function () {
                    $(this).find("option:selected").each(function () {
                        var geeks = $(this).attr("value");
                        if (geeks == 0) {
                            $(".GFG").hide();
                        } else if (geeks == "1" || geeks == "2" || geeks == "3") {
                            $(".GFG").not("." + geeks).hide();
                            reportrange1();
                            reportrange2();
                            reportrange3();

                            $("." + geeks).show();
                        }

                    });
                }).change();
            });
        </script> 

        <script src="js/data-table/tableExport.js"></script>
        <script src="js/data-table/bootstrap-table.js"></script>
        <script src="js/data-table/data-table-active.js"></script>
        <script src="js/data-table/bootstrap-table-resizable.js"></script>
        <script src="js/data-table/colResizable-1.5.source.js"></script>
        <script src="js/data-table/bootstrap-table-export.js"></script>

    </body>
</html>