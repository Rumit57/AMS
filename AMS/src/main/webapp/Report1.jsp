<%-- 
    Document   : Report1
    Created on : 29 Jan, 2020, 4:52:50 PM
    Author     : rumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >

        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body ">    
                    <form action="#"> 
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Employee Name</label>
                                    <br>
                                    <select style="width:100%" data-placeholder="Search" multiple class="chosen-select" name="test">
                                        <option>Rumit</option>
                                        <option>Karan</option>
                                        <option>Raj</option>
                                        <option>Brijesh</option>
                                    </select>
                                    <script>
                                        $(".chosen-select").chosen({
                                            no_results_text: "Oops, nothing found!"
                                        });
                                    </script>
                                </div>
                            </div>

                            <div  class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Date</label>
                                    <i class="fa fa-calendar" ></i>&nbsp;
                                    <i class="fa fa-caret-down"></i><input id="reportrange1"  style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%"/>
                                </div>
                            </div>
                            <div  class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Filter Option</label>
                                    <select id="filter" name="filter"  class="form-control" style="width: 100%">
                                        <option  value="filter">--Select--</option>
                                        <option value="monthly">Monthly</option>
                                        <option value="yearly">Yearly</option>
                                    </select> 
                                </div>
                            </div>
                            <div  class="col-md-6 col-lg-3">
                                <div class="card" > 
                                    <div  id="hideDropdown">
                                        <label>Select Month</label>
                                        <select id="month" style="width:50%" class="form-control" disabled>
                                            <option value="01">Jan</option>
                                            <option value="02">Feb</option>
                                            <option value="03">Mar</option>
                                            <option value="04">Apr</option>
                                            <option value="05">May</option>
                                            <option value="06">Jun</option>
                                            <option value="07">Jul</option>
                                            <option value="08">Aug</option>
                                            <option value="09">Sep</option>
                                            <option value="10">Oct</option>
                                            <option value="11">Nov</option>
                                            <option value="12">Dec</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div  class="col-md-6 col-lg-3">
                                <div class="card"> 
                                    <div  id="hideDropdown1">
                                        <label>Select Year</label>
                                        <select  id="year" style="width:50%" class="form-control" disabled>
                                            <option value="2020">2020</option>
                                            <option value="2019">2019</option>
                                            <option value="2018">2018</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div  class="col-md-12 ">
                                <br>
                                <center>
                                    <button type="button" class="btn btn-primary" name="filterSubmit">Filter</button>
                                </center>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <br>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body ">    
                    <div class="data-table-area mg-tb-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                        <div >
                                            <a onclick="pdf1()" class="btn btn-primary pull-left" role="button" href="pdf/9.pdf"
                                               download="9.pdf">
                                                Download PDF
                                            </a>
                                            <script>
                                                var request = new XMLHttpRequest();
                                                function pdf1() {

                                                    var url = "ITextTest.jsp";
                                                    try
                                                    {
                                                        request.open("GET", url, true);
                                                        request.send();
                                                    } catch (e)
                                                    {
                                                        alert("Unable to connect to server");
                                                    }
                                                }
                                            </script>
                                        </div>
                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true"  data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="id">No</th>
                                                    <th data-field="name" data-editable="true">Name</th>

                                                    <th data-field="PunchIn" data-editable="true">Punch In</th>
                                                    <th data-field="Punchout" data-editable="true">Punch Out</th>
                                                    <th data-field="working_hour" data-editable="true">Working Hour</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int count = 1;
                                                    for (int i = 0; i <= 15; i++) {
                                                %>
                                                <tr>
                                                    <td><%=count%></td>
                                                    <td>XYZ</td>
                                                    <td>2019-12-18 17:15:30.0</td>
                                                    <td>2019-12-18 17:15:30.0</td>
                                                    <td>08:50:00</td>
                                                </tr>
                                                <%
                                                        count++;
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

        <script type="text/javascript">
            function reportrange1() {


                var start1 = moment().subtract(29, 'days');
                var end1 = moment();

                function cb1(start1, end1) {
                    $('#reportrange1').html(start1.format('MMMM D, YYYY') + ' - ' + end1.format('MMMM D, YYYY'));
                }

                $('#reportrange1').daterangepicker({
                    startDate: start1,
                    endDate: end1,
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    }
                }, cb1);

                cb1(start1, end1);

            }
        </script>

        <script>

            function chainSelect(current, target, target1) {
                var value1 = $(current).on('change', function () {
                    if ($(this).find(':selected').val() != 'monthly') {
                        document.getElementById("hideDropdown").style.display = "none";
                        $(target).prop('disabled', 'disabled').val(null);
                        var value = $(this).find(':selected').text();
                    } else {
                        $("#month").val($("#month option:first").val());
                        document.getElementById("hideDropdown").style.display = "block";
                        $(target).removeAttr('disabled');
                    }

                    if ($(this).find(':selected').val() != 'yearly')
                    {
                        document.getElementById("hideDropdown1").style.display = "none";
                        $(target1).prop('disabled', 'disabled').val(null);
                        var value = $(this).find(':selected').text();
                    } else {
                        $("#year").val($("#year option:first").val());
                        document.getElementById("hideDropdown1").style.display = "block";
                        $(target1).removeAttr('disabled');
                    }

                    return value;
                });
                return value1;
            }
            month = chainSelect('select#filter', '#month', '#year');
        </script>                

    </body>
</html>
