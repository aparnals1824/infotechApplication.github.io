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
    height: 410vh;
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
    <body >

        <div class="container">
            <c:if test="${user_id == null}">
            <% response.sendRedirect("http://localhost:8081/BillingSoftware/home");%>
            </c:if>
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
                                <li class="active"><a href="<%= request.getContextPath()%>/product"><i class="fa fa-paypal"></i> New Product</a></li>
                                <li><a href="<%= request.getContextPath()%>/customer"><i class="fa fa-user-plus"></i> Register Customer</a></li> 
                                 <li><a href="<%= request.getContextPath()%>/company"><i class="fa fa-user-plus"></i> Company Details</a></li> 
                                 <li><a href="<%= request.getContextPath()%>/order_details"><i class="fa fa-area-chart"></i> Order Details</a></li> 
                            
 
                             </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <c:if test="${user_id == null}">
                                    <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
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

            <div class="student_form col-md-4" style="margin-left: 11%;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 align="center"><i class="fa fa-product-hunt"></i> New Product</h3>
                    </div>
                    <div class="panel-body">
                        <c:if test="${product.pid != null}">
                            <form action="<%= request.getContextPath()%>/updateProduct" method="post">
                            </c:if>
                            <c:if test="${product.pid == null}">
                                <form action="<%= request.getContextPath()%>/addProduct" method="post">
                                </c:if>
                                <div class="form-group">
                                    <label for="pid">Product ID: </label>
                                    <input value="${product.pid}" name="pid" type="text" class="form-control" id="pid" <c:if test="${product.pid == null}">disabled="1"</c:if>" readonly="1">
                                    </div>

                                <div class="form-group">
                                        <label for="pname">Product Name:</label>
                                        <input value="${product.pname}" name="pname" type="text" class="form-control" id="pname">
                                </div> 
                                <div class="form-group">
                                        <label for="pdesc">Description:</label>                      
                                 <textarea  name="pdesc" id="pdesc" class="form-control">
                                 ${product.pdesc}
                                 </textarea>
                                </div>
                                <div class="form-group">
                                        <label for="hsn">HSN/SAC:</label>
                                        <input value="${product.hsn}" name="hsn" type="text" class="form-control" id="hsn">
                                </div>

                                <div class="form-group">
                                    <label for="price">Price:</label>
                                    <input value="${product.price}" name="price" type="text" class="form-control" id="price">
                                </div>
                                <div class="form-group">
                                    <label for="qty">Quantity:</label>
                                    <input value="${product.qty}" name="qty" type="text" class="form-control" id="qty">
                                </div>
                                <div class="form-group">
                                    <label for="unit">Unit:</label>
                                    <input value="${product.unit}" name="unit" type="text" class="form-control" id="unit">
                                </div>
                                <div class="form-group">
                                    <label for="tax">Tax %:</label>
                                    <select  class="form-control" name="tax" id="tax" value="${product.tax}" >
                                    </select>
                               </div>
                               
                               <div class="form-group">
                                    <label for="cess">GST Cess %:</label>
<!--                                      <input value="0" name="cess" type="text" class="form-control" id="cess">
 -->                      
                        <select  value="${product.cess}" name="cess" type="text" class="form-control" id="cess" >
                        </select> 
                               </div>
                               <div class="student_form col-md-4" style="width: 135%; margin-top: -177%; margin-left: 110%;">
                <div class="panel panel-primary" style="margin-top: -15%; margin-left: 18%;">
                    <div class="panel-heading">
                        <h3 align="center"><i class="fa fa-product-hunt"></i> Additional Details</h3>
                    </div>
                         <div class="panel-body">      
                               <div class="form-group">
                                        <label for="dnote">Delivery Note :</label>
                                        <input value="${product.dnote}" name="dnote" type="text" class="form-control" id="dnote">
                                </div> 
                                <div class="form-group">
                                        <label for="modepay">Mode of Payment :</label>                      
                                  <input  value= "${product.modepay}" name="modepay" id="modepay" type="text" class="form-control">
                                
                                </div>
                                <div class="form-group">
                                        <label for="suppliers">Suppliers Ref :</label>
                                        <input value="${product.suppliers}" name="suppliers" type="text" class="form-control" id="suppliers">
                                </div>

                                <div class="form-group">
                                    <label for="otherref">Other Ref :</label>
                                    <input value="${product.otherref}" name="otherref" type="text" class="form-control" id="otherref">
                                </div>
                                <div class="form-group">
                                    <label for="adate">Dated :</label>
                                    <input value="${product.adate}" type="date" name="adate" type="text" class="form-control" id="adate">
                                </div>
                                
                               <div class="form-group">
                                    <label for="desdoc">Despatch Doc No :</label>
                                     <input value="${product.desdoc }" name="desdoc" type="text" class="form-control" id="desdoc">
                      
                               </div>
                               
                               <div class="form-group">
                                    <label for="deliverydate">Delivery Note Date :</label>
                                     <input value="${product.deliverydate }" type="date" name="deliverydate" type="text" class="form-control" id="deliverydate">
                      
                               </div>
                               <div class="form-group">
                                    <label for="desthrough">Despatched Through :</label>
                                     <input value="${product.desthrough }" name="desthrough" type="text" class="form-control" id="desthrough">
                      
                               </div>
                               <div class="form-group">
                                    <label for="delivery">Terms of Delivery :</label>
                                     <input value="${product.delivery }" name="delivery" type="text" class="form-control" id="delivery">
                      
                               </div>
                               <div class="form-group">
                                    <label for="dest">Destination :</label>
                                     <input value="${product.dest }" name="dest" type="text" class="form-control" id="dest">
                      
                               </div>
                 
                               <c:if test="${product.pid != null}">
                                    <button type="submit" class="btn btn-warning"><i class="fa fa-edit"></i> Update</button>
                                    <a href="<%= request.getContextPath()%>/product" class="btn btn-primary pull-right"><i class="fa fa-user-plus"></i> New</a>
                                </c:if>

                                <c:if test="${product.pid == null}">
                                    <button type="submit" class="btn btn-success"><i class="fa fa-send"></i> Submit</button>
                                </c:if>


                            </form>

                    </div>
                    <div class="panel-footer">

                    </div>
                    </div></div></div>
                </div>
            </div>


            <div class="header col-md-8" style="margin-left: 10%;background-color: white; width: 80%; margin-top: 1%;">
                <table class="table table-bordered table-responsive table-striped">
                    <thead>
                        <tr>
                            <th colspan="6" style="text-align: center;"><h2><i class="fa fa-product-hunt"></i> Product List</h2></th>
                        </tr>
                        <tr>
                            <th>Id</th>
                            <th>Product Name</th>
                            <th>Description</th>
                            <th>HSN/SAC</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                             <th>Tax</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${products}">
                            <tr>
                                <td>${row.pid}</td>
                                <td>${row.pname}</td>
                                <td>${row.pdesc}</td>
                                <td>${row.hsn}</td>
                                <td>${row.price}</td>
                                <td>${row.qty}</td>
                                 <td>${row.unit}</td>
                                <td>GST rate ${row.tax} %</td>
                                
                                <td>
                                    <a href="<%= request.getContextPath()%>/editProduct/${row.pid}" class="btn btn-warning"><i class="fa fa-edit"></i> Edit</a>
                                </td>
                                <td>
                                    <a onclick="return confirm('Are you want to delete this item?')" href="<%= request.getContextPath()%>/deleteProduct/${row.pid}" class="btn btn-danger"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


        </div>

        </div>
<script>
	
$(document).ready(function(){
	
	var select='';
	for(i=0;i<=50;i++){
		select += '<option val=' + i + '>' + i + '</option>';
	}
	$("#tax").html(select);
	$("#cess").html(select);
		
});

</script> 
    </body>
</html>
