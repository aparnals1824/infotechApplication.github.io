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
    height: 160vh;
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
                                <li ><a href="<%= request.getContextPath()%>/customer"><i class="fa fa-user-plus"></i> Register Customer</a></li> 
                                <li class="active"><a href="<%= request.getContextPath()%>/company"><i class="fa fa-user-plus"></i> Company Details</a></li> 
                                 <li><a href="<%= request.getContextPath()%>/order_details"><i class="fa fa-area-chart"></i> Order Details</a></li> 
                            
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <c:if test="${user_id == null}">
                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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

            <div id="comp" class="student_form col-md-4" style="margin-left: 1%;width: 26%;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 align="center"><i class="fa fa-user-plus"></i> Register Company</h3>
                    </div>
                    <div class="panel-body">
                        <c:if test="${company.compid != null}">
                            <form action="<%= request.getContextPath()%>/updateCompany" method="post">
                            </c:if>
                            <c:if test="${company.compid == null}">
                                <form action="<%= request.getContextPath()%>/addCompany" method="post">
                                </c:if>
                                <div class="form-group">
                                    <label for="compid">Company ID: </label>
                                    <input value="${company.compid}" name="compid" type="text" class="form-control" id="compid" <c:if test="${company.compid== null}">disabled="1"</c:if>" readonly="1">
                                    </div>

                                    <div class="form-group">
                                        <label for="compname">Company Name:</label>
                                        <input value="${company.compname}" name="compname" type="text" class="form-control" id="compname">
                                </div>
                                
                                <div class="form-group">
                                        <label for="compadd">Company Address:</label>
                                        <textarea  name="compadd" id="compadd" class="form-control">
                                ${company.compadd}
                                 </textarea>
<!--                                         <input value="" name="compadd" type="text" class="form-control" id="compadd">
 -->                                </div>
                                <div class="form-group">
                                        <label for="compmail">E-mail:</label>
                                        <input value="${company.compmail}" name="compmail" type="text" class="form-control" id="compmail">
                                </div>

                                <div class="form-group">
                                    <label for="compphone">Phone:</label>
                                    <input value="${company.compphone}" name="compphone" type="text" class="form-control" id="compphone">
                                </div>
                                <div class="form-group">
                                        <label for="compaccount">Company Account Details:</label>
<%--                                         <input value="${company.compaccount}" name="compaccount" type="text" class="form-control" id="compaccount">
 --%>                                
 								<textarea  name="compaccount" id="compaccount" class="form-control">
                                ${company.compaccount}
                                 </textarea>
								 </div>
								 
                                <c:if test="${company.compid != null}">
                                    <button type="submit" class="btn btn-warning"><i class="fa fa-edit"></i> Update</button>
                                    <a href="<%= request.getContextPath()%>/company" class="btn btn-primary pull-right"><i class="fa fa-user-plus"></i> New</a>
                                </c:if>

                                <c:if test="${company.compid == null}">
                                    <button type="submit" class="btn btn-success"><i class="fa fa-send"></i> Submit</button>
                                </c:if>


                            </form>

                    </div>
                    <div class="panel-footer">

                    </div>
                </div>
            </div>

            <div class="header col-md-8" style="background-color: white; width:71%;">
                <table class="table table-bordered table-responsive table-striped">
                    <thead>
                        <tr>
                            <th colspan="5" style="text-align: center;"><h2><i class="fa fa-users"></i> Company Details</h2></th>
                        </tr>
                        <tr>
                            <th>Id</th>
                            <th>Company Name</th>
                            <th>Company Address</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Account Details</th>
                            
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${companys}">
                            <tr>
                                <td>${row.compid}</td>
                                <td>${row.compname}</td>
                                <td>${row.compadd}</td>
                                <td>${row.compmail}</td>
                                <td>${row.compphone}</td>
                                 <td>${row.compaccount}</td>
                                
                                <td>
                                    <a href="<%= request.getContextPath()%>/editCompany/${row.compid}" class="btn btn-warning"><i class="fa fa-edit"></i> Edit</a>
                                </td>
                                <td>
                                    <a onclick="return confirm('Are you want to delete this item?')" href="<%= request.getContextPath()%>/deleteCompany/${row.compid}" class="btn btn-danger"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            

        </div>


    </body>
</html>
