<%-- 
    Document   : yesterday_missed_punch
    Created on : 20 Jan, 2020, 2:30:59 PM
    Author     : rumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>Primavera Systems</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/data-table/bootstrap-table.css"/>
        <link rel="stylesheet" href="css/data-table/bootstrap-editable.css"/>
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <link href="plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet"/>
        <style>
            .modal-body {
                max-height: calc(100vh - 210px);
                overflow-y: auto;
            }
            textarea {
                resize: vertical;
            }
        </style>
    </head>

    <body>
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
                                <a href="HRdeshboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
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

            <div id="page-wrapper">
                <div class="header"> 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="data-table-area mg-tb-15">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                <div class="sparkline13-hd">
                                                    <center>
                                                        <div class="main-sparkline13-hd">
                                                            <h1><b>Yesterday Missed Punch Data</b></h1>
                                                            <br>
                                                        </div>
                                                    </center>
                                                </div>
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                               data-cookie-id-table="saveId" data-click-to-select="true" data-toolbar="#toolbar">
                                                            <thead>
                                                                <tr>
                                                                    <th data-field="id">NO</th>
                                                                    <th data-field="name" data-editable="true">Name</th>
                                                                    <th data-field="email" data-editable="true">Email</th>
                                                                    <th data-field="phone" data-editable="true">Phone</th>
                                                                    <th data-field="fix" data-editable="true">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <%
                                                                    int count1 = 1;
                                                                    for (int i = 0; i <= 5; i++) {
                                                                %>
                                                                <tr>
                                                                    <td><%=count1%></td>
                                                                    <td>Rumit</td>
                                                                    <td>shah.rumit57@gmail.com</td>
                                                                    <td>8848438823</td>
                                                                    <td><button style="width: 80%" class="btn btn-success " data-toggle="modal" data-target="#myModal" href="#">Fix</button></td>
                                                                </tr>
                                                                <%
                                                                        count1++;
                                                                    }
                                                                %>          
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
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

        <!--modal-->
        <div id="myModal" role="dialog" tabindex="-1" aria-hidden="true" class="modal" data-backdrop="static">
            <div role="document" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 style="width:100%"><center>Missed Punch Details</center></h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="#">
                            <div class="form-group">
                                <label >Time</label>
                                <div class="input-group date" >          
                                    <input class="form-control" id="timepicker" placeholder="Select time" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time" ></span>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Reason</label> 
                                <textarea class="form-control" rows="4" cols="50" placeholder="Write a Reason.."></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-secondary">Close</button>
                        <button type="button" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>
        <!--Modal End-->

        <script src="assets/js/jquery-1.10.2.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="js/data-table/bootstrap-table.js"></script>
        <script src="js/data-table/data-table-active.js"></script>
        <script src="js/data-table/bootstrap-table-resizable.js"></script>
        <script src="js/data-table/colResizable-1.5.source.js"></script>
        <script src="plugins/moment/moment.js"></script>
        <script src="plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
        <script src="plugins/form-pickers-init.js"></script>

    </body>
</html>