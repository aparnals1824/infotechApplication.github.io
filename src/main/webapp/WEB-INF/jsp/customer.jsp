<%-- 
    Document   : index
    Created on : Sep 13, 2017, 11:08:17 AM
    Author     : cyclingbd007
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Infotech Associates</title>
        <spring:url value="/resources/css/bootstrap.css" var="bootstrapCSS"/>
        <spring:url value="/resources/css/font-awesome.css" var="fontawesomeCSS"/>
        <spring:url value="/resources/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resources/js/bootstrap.js" var="bootstrapJS"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapCSS}"/>
        <link rel="stylesheet" type="text/css" href="${fontawesomeCSS}"/>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <style type="text/css">
            .header, .message{
                margin-bottom: 20px;
            }
            th, td{
                text-align: center;
            }
                       .banner {
    background: url(resources/img/itimages.jpg) no-repeat center top;
    background-attachment: fixed;
    background-size: cover;
    height: 126vh;
    min-height: 100%;
    margin-left: -10%;
    width: 121%;
}
.navbar-collapse .navbar-nav > li > a {
    color: white;
}
a {
    color: #e75b1e;
    text-decoration: none;
}
.table-responsive {
    margin-top: 4%;
    min-height: .01%;
    overflow-x: auto;
}
.btn-warning {
    color: #fff;
    background-color: #56d287;
    border-color: #47d27e;
}
.btn-danger {
    color: #fff;
    background-color: #d8605c;
    border-color: #d43f3a;
}
        </style>
    </head>
    <body>
        <c:if test="${user_id == null}">
            <% response.sendRedirect("http://localhost:8081/BillingSoftware/home");%>
        </c:if>

        <div class="container">

            <div class="col-md-12 header">
                <h1 align="center" style="color: #e75b1e;margin-top: 3%;"><a href="<%= request.getContextPath()%>/">INFOTECH ASSOCIATES</a></h1>
            </div>

            <div class="col-md-12 menu">
                <nav class="navbar-collapse collapse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span> 
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav" style="background-color:rgba(19, 18, 16, 0.66); width: 106%; margin-left: -3%; color: white;">
                                <li><a href="<%= request.getContextPath()%>/"><i class="fa fa-home"></i> Home</a></li>
                                <li><a href="<%= request.getContextPath()%>/product"><i class="fa fa-paypal"></i> New Product</a></li>
                                <li class="active"><a href="<%= request.getContextPath()%>/customer"><i class="fa fa-user-plus"></i> Register Customer</a></li> 
                                <li><a href="<%= request.getContextPath()%>/company"><i class="fa fa-user-plus"></i> Company Details</a></li> 
                                <li><a href="<%= request.getContextPath()%>/order_details"><i class="fa fa-area-chart"></i> Order Details</a></li> 
                          
 
                              </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <c:if test="${user_id == null}">
                                   <!--  <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
                                    </c:if>
                                    <c:if test="${user_id != null}">
                                    <li style="margin-top:-50px;"><a href="<%= request.getContextPath()%>/logout"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="col-md-12 message" style="font-weight: bold; width: 95%;margin-left: 3%; margin-top: 2%;">
                <c:if test="${sm != null}">
                    <div class="alert alert-success alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> ${sm}
                    </div>

                </c:if>
                <c:if test="${em != null}">
                    <div class="alert alert-danger alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Error!</strong> ${em}
                    </div>
                </c:if>


            </div>

               <div id="banner" class="banner full-screen-mode parallax">

            <div class="student_form col-md-4" style="margin-left: 6%;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 align="center"><i class="fa fa-user-plus"></i> Register Customer</h3>
                    </div>
                    <div class="panel-body">
                        <c:if test="${customer.cid != null}">
                            <form action="<%= request.getContextPath()%>/updateCustomer" method="post">
                            </c:if>
                            <c:if test="${customer.cid == null}">
                                <form action="<%= request.getContextPath()%>/addCustomer" method="post">
                                </c:if>
                                <div class="form-group">
                                    <label for="cid">Customer ID: </label>
                                    <input value="${customer.cid}" name="cid" type="text" class="form-control" id="cid" <c:if test="${customer.cid == null}">disabled="1"</c:if>" readonly="1">
                                    </div>

                                    <div class="form-group">
                                        <label for="cname">Customer Name:</label>
                                        <input value="${customer.cname}" name="cname" type="text" class="form-control" id="cname">
                                </div>
                                
                                <div class="form-group">
                                        <label for="cname">Customer Address:</label>
                                        <input value="${customer.cadd}" name="cadd" type="text" class="form-control" id="cadd">
                                </div>

                                <div class="form-group">
                                    <label for="phone">Phone:</label>
                                    <input value="${customer.phone}" name="phone" type="text" class="form-control" id="phone">
                                </div>

                                <c:if test="${customer.cid != null}">
                                    <button type="submit" class="btn btn-warning"><i class="fa fa-edit"></i> Update</button>
                                    <a href="<%= request.getContextPath()%>/customer" class="btn btn-primary pull-right"><i class="fa fa-user-plus"></i> New</a>
                                </c:if>

                                <c:if test="${customer.cid == null}">
                                    <button type="submit" class="btn btn-success"><i class="fa fa-send"></i> Submit</button>
                                </c:if>


                            </form>

                    </div>
                    <div class="panel-footer">

                    </div>
                </div>
            </div>

            <div class="header col-md-8" style="background-color: white; width: 52%; margin-left: 1%;">
                <table class="table table-bordered table-responsive table-striped">
                    <thead>
                        <tr>
                            <th colspan="5" style="text-align: center;"><h2><i class="fa fa-users"></i> Customer List</h2></th>
                        </tr>
                        <tr>
                            <th>Id</th>
                            <th>Customer Name</th>
                            <th>Customer Address</th>
                            <th>Phone</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${customers}">
                            <tr>
                                <td>${row.cid}</td>
                                <td>${row.cname}</td>
                                <td>${row.cadd}</td>
                                <td>${row.phone}</td>
                                <td>
                                    <a href="<%= request.getContextPath()%>/editCustomer/${row.cid}" class="btn btn-warning"><i class="fa fa-edit"></i> Edit</a>
                                </td>
                                <td>
                                    <a onclick="return confirm('Are you want to delete this item?')" href="<%= request.getContextPath()%>/deleteCustomer/${row.cid}" class="btn btn-danger"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            

        </div>


        

    </body>
</html>
