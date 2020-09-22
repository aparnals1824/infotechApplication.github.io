<%-- 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Infotech Associates</title>
        <spring:url value="/resources/css/bootstrap.css" var="bootstrapCSS"/>
        <spring:url value="/resources/css/font-awesome.css" var="fontawesomeCSS"/>
        <spring:url value="/resources/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resources/js/bootstrap.js" var="bootstrapJS"/>
        <spring:url value="/resources/js/angular.min.js" var="angularJS"/>
        <spring:url value="/resources/js/my_app.js" var="myAppJS"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapCSS}"/>
        <link rel="stylesheet" type="text/css" href="${fontawesomeCSS}"/>
        <!-- Site Icons -->
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="resources/css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="resources/js/modernizer.js"></script>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <script src="${angularJS}"></script>
        <script src="${myAppJS}"></script>
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
    height: 230vh;
    min-height: 100%;
    margin-left: -4%;
    width: 110%;
}
.form-group {
    margin-bottom: 1px;
}
.navbar-collapse .navbar-nav > li > a {
    color: white;
}
a {
    color: #e75b1e;
    text-decoration: none;
}


#invoice{
    padding: 30px;
}

.invoice {
    position: relative;
    background-color: #FFF;
    min-height: 680px;
    padding: 15px
}

.invoice header {
    padding: 10px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #3989c6
}

.invoice .company-details {
    text-align: right
}

.invoice .company-details .name {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .contacts {
    margin-bottom: 20px
}

.invoice .invoice-to {
    text-align: left
}

.invoice .invoice-to .to {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .invoice-details {
    text-align: right
}

.invoice .invoice-details .invoice-id {
    margin-top: 0;
    color: #3989c6
}

.invoice main {
    padding-bottom: 50px
}

.invoice main .thanks {
    margin-top: 80px;
    font-size: 2em;
    margin-bottom: 50px
}

.invoice main .notices {
    padding-left: 6px;
    border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
    font-size: 1.2em
}

.invoice table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-bottom: 20px
}

.invoice table td,.invoice table th {
    padding: 15px;
    background: #eee;
    border-bottom: 1px solid #fff
}

.invoice table th {
    white-space: nowrap;
    font-weight: 400;
    font-size: 16px
}

.invoice table td h3 {
    margin: 0;
    font-weight: 400;
    color: #3989c6;
    font-size: 1.2em
}

.invoice table .qty,.invoice table .total,.invoice table .unit {
    text-align: right;
    font-size: 1.2em
}

.invoice table .no {
    color: #fff;
    font-size: 1.6em;
    background: #3989c6
}

.invoice table .unit {
    background: #ddd
}

.invoice table .total {
    background: #3989c6;
    color: #fff
}

.invoice table tbody tr:last-child td {
    border: none
}

.invoice table tfoot td {
    background: 0 0;
    border-bottom: none;
    white-space: nowrap;
    text-align: right;
    padding: 10px 20px;
    font-size: 1.2em;
    border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
    border-top: none
}

.invoice table tfoot tr:last-child td {
    color: #3989c6;
    font-size: 1.4em;
    border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
    border: none
}

.invoice footer {
    width: 100%;
    text-align: center;
    color: #777;
    border-top: 1px solid #aaa;
    padding: 8px 0
}

@media print {
    .invoice {
        font-size: 11px!important;
        overflow: hidden!important
    }

    .invoice footer {
        position: absolute;
        bottom: 10px;
        page-break-after: always
    }

    .invoice>div:last-child {
        page-break-before: always
    }
}

        </style>

    </head>
    <body ng-controller="appCtrl">



        <div class="container" style="width: 94%;margin-left: 2%;">

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
                            <ul class="nav navbar-nav" style="background-color:rgba(19, 18, 16, 0.66); width: 104%; color: white;">

                                <c:if test="${user_id != null}">
                                    <li class="active"><a href="<%= request.getContextPath()%>/"><i class="fa fa-home"></i> Home</a></li>
                                    <li><a href="<%= request.getContextPath()%>/product"><i class="fa fa-paypal"></i> New Product</a></li>
                                    <li><a href="<%= request.getContextPath()%>/customer"><i class="fa fa-user-plus"></i> Register Customer</a></li> 
                                    <li><a href="<%= request.getContextPath()%>/company"><i class="fa fa-user-plus"></i> Company Details</a></li> 
                                    <li><a href="<%= request.getContextPath()%>/order_details"><i class="fa fa-area-chart"></i> Order Details</a></li> 
                                    </c:if>

                            </ul>
                            <ul class="nav navbar-nav navbar-right" style="margin-top: -4%;font-weight: bold;">
                                <c:if test="${user_id == null}">
                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                    </c:if>
                                    <c:if test="${user_id != null}">
                                    <li style=" margin-top: -10%;"><a href="<%= request.getContextPath()%>/logout"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>
                
            </div> 
            
            
               <div id="banner" class="banner full-screen-mode parallax">
                <c:if test="${user_id == null}"> 
        <div class="container pr">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="banner-static">
                    <div class="banner-text">
                        <div class="banner-cell">
               <!-- Companyname -->           
                           <!--  <h1>INFOTECH <span class="typer" id="some-id" data-delay="200" data-delim=":" data-words="ASSOCIATES" data-colors="red"></span>
                            </h1> --> 
               
                       
           <div class="footer-news pad-top-100 pad-bottom-70 parallax">
            <div class="container">
                <div class="row">
                
                
                <div class="panel-body">
                                
                    <div class="signup-content">
                    <c:if test="${em != null}">
                                    <div class="alert alert-danger alert-dismissable fade in">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Error!</strong> ${em}
                                    </div>
                                </c:if>
                   <form action="<%= request.getContextPath()%>/loginCheck" method="post" id="signup-form" class="signup-form">
                    <h2 style="color:aqua">Login </h2>
                    <div class="form-group">
                        <input type="text" class="form-input" name="userName" id="userName" placeholder="User Name">
                    </div>
                    
                    <div class="form-group">
                        <input type="password" class="form-input" name="password" id="password" placeholder="Password">
                    </div>
                    
                   <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="submit-link submit" value="Sign In"
                        style="width: 30%; color: white;padding: 3px 20px;font-size: 13px; height: 30px;
                        font-weight: bold;border: -1px solid rgba(0, 0, 0, .075);background-color: #c15025;">
                    
                    
                      <input type="button" name="register" id="register" onclick="location.href='/TaxInvoice/AdminRegister'" value="Register" 
                        class="submit-link submit"  style="width: 30%;text-align:center; color: white;padding: 3px 20px;font-size: 13px;
                        margin-left:2%; height: 30px;font-weight: bold;border: -1px solid rgba(0, 0, 0, .075);background-color: #c15025;"> 
                        
                  </div>
                  
     
                </form>
            </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
                            <a href="#login">
                            </a>
                        </div>
                        <!-- end banner-cell -->
                    </div>
                    <!-- end banner-text -->
                </div>
                <!-- end banner-static -->
            </div>
            <!-- end col -->
        </div>
        <!-- end container -->
    </div>




            </c:if>

            <c:if test="${user_id != null}">



                <div class="col-md-12" style="margin-top: 2%;width: 87%; margin-left: 7%;">

                    <div class="panel panel-default">
                        <div class="panel-heading">

                        </div>
                        <div class="panel-body">
                            <div class="col-md-4">
                                Invoice No: <input name="oid" type="text" class="form-control"  value="ITA/1000120/01"/>
                            </div>
                            <div class="col-md-4">
                                Invoice Type: 
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="orderType" ng-model="orderType" value="sell">Sell
                                    </label> &nbsp; &nbsp; &nbsp;
                                    <label>
                                        <input type="radio" name="orderType" ng-model="orderType" value="purchase">Purchase
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                Invoice Date: <input ng-model="orderDate" name="orderDate" type="date" class="form-control"/>
                            </div>
                        </div>
                    </div>

                </div>





                <div id="productdetails" class="col-md-12">
                    <div class="row" style="width: 89%; margin-left: 6%;">
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 135%">
                                <div class="panel-heading">
                                    <i class="fa fa-product-hunt"></i> Select Product
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="Product Name">Product Name:</label>
                                        <select name="pname" class="form-control" ng-model="clickedProduct" ng-options="product.pname for product in products">
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="pid">Product ID: </label>
                                        <input readonly="1" name="pid" type="text" class="form-control" id="pid" value="{{clickedProduct.pid}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="pdesc">Description: </label>
                                        <input readonly="1" name="pdesc" type="text" class="form-control" id="pdesc" value="{{clickedProduct.pdesc}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="hsn">HSN/SAC: </label>
                                        <input readonly="1" name="hsn" type="text" class="form-control" id="hsn" value="{{clickedProduct.hsn}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="price">Price: </label>
                                        <input readonly="1" name="price" type="text" class="form-control" id="price" value="{{clickedProduct.price}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="qty">Quantity: </label>
                                        <input readonly="1" name="qty" type="text" class="form-control" id="qty" value="{{clickedProduct.qty}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="qty">Tax: </label>
                                        <input readonly="1" name="tax" type="text" class="form-control" id="tax" value="GST rate {{clickedProduct.tax}} %">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 135%">
                                <div class="panel-heading">
                                    <i class="fa fa-user-circle"></i> Select Customer
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="Customer Name">Customer Name:</label>
                                        <select name="cname" class="form-control" ng-model="clickedCustomer" ng-options="customer.cname for customer in customers">
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="cid">Customer Address: </label>
                                        <input readonly="1" name="cadd" type="text" class="form-control" id="cadd" value="{{clickedCustomer.cadd}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Phone: </label>
                                        <input readonly="1" name="phone" type="text" class="form-control" id="phone" value="{{clickedCustomer.phone}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 135%">
                                <div class="panel-heading">
                                    <i class="fa fa-sellsy"></i> Order Details
                                </div>
                                <div class="panel-body">
                                    <div class="form-group" ng-show="clickedProduct.pid != null">
                                        <label for="qty">Quantity:</label>
                                        <input readonly="1" name="orderQty" ng-model="qty = 1" type="text" class="form-control" id="qty" placeholder="Enter Quantity">
                                     
<!--                                          <input readonly="1" name="orderQty" value="{{clickedProduct.qty}}" type="text" class="form-control" id="qty" placeholder="Enter Quantity">
 -->
                                    </div>
                                    <div class="form-group" ng-show="qty != 0 && clickedProduct.pid != null">
                                        <label for="total">Total:</label>
                                        <input readonly="1" name="total" value="{{clickedProduct.price * qty}}" type="text" class="form-control" id="total">
                                    </div>
                                    <div class="form-group" ng-show="clickedProduct.pid != null && clickedCustomer.cid != null"> 
                                        <button ng-click="addToCart()" type="submit" class="btn btn-success" style="margin-top: 9%;">
                                        <i class="fa fa-cart-plus"></i> Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="cart" class="col-md-12" style="text-align: center; margin-top:13%;width: 87%; margin-left: 7%;">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 style="color:#5cb85c;font-size: 22px;"><i class="fa fa-cart-plus"></i> Cart <button class="btn btn-sm btn-success"> {{cartProduct.length}} </button></h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Action</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="product in cartProduct">
                                        <td>{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.price}}</td>
                                        <td>
                                            <button type="button" ng-click="decreaseQty(product)" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                            &nbsp; &nbsp; {{product.cartQty}} &nbsp; &nbsp;
                                            <button type="button" ng-click="increaseQty(product)" class="btn btn-success"><i class="fa fa-plus"></i></button>
                                        </td>
                                        <td><button ng-click="removeProduct(product)" class="btn btn-danger"><i class="fa fa-remove"></i> Remove</button></td>
                                        <td>{{product.subTotal * product.cartQty}}</td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="5" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="5" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="5" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="5" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                            <button data-toggle="modal" data-target="#checkoutModal" type="button" ng-show="cartProduct.length != 0" class="btn btn-success"><i class="fa fa-check"></i> Check Out</button>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

            </c:if>         

            



            <!-- checkoutModal -->
            <div id="checkoutModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" align="center"><i class="fa fa-eye"></i> Review Your Order</h4>
                        </div>
                        <div class="modal-body">
                            <table class="table table-bordered table-striped">
                                <tr>
                                    <td>Company Details</td>
                                    <td>
                                    INFOTECH ASSOCIATES 				
									DOOR No.02,EDARATH BUILDING,MUKKOM,KOZHIKODE							
									KERALA 
									GSTIN:32DDAPA7646N1ZI
									
                                    </td>
                                   
                                </tr>
                                 <tr>
                                    <td>Customer Name</td>
                                    <td>{{clickedCustomer.cname}}</td>
                                </tr>
                                <tr>
                                    <td>Customer Address</td>
                                    <td>{{clickedCustomer.cadd}}
                                    {{clickedCustomer.phone}}</td>
                                </tr>
                                <tr>
                                    <td>Order Type</td>
                                    <td>{{orderType}}</td>
                                </tr>
                                <tr>
                                    <td>Invoice Date</td>
                                    <td>{{orderDate| date}}</td>
                                </tr>
                               
                            </table>
                            <br/>
                            <br/>
                            <br/>
                            Order Details: <br/>
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>Product Name</th>
                                         <th>Description</th>
                                         <th>HSN/SAC</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Grand Total</th>
                                        
                                    </tr>
                                    
                                </thead>
                                <tbody>
                                    <tr ng-repeat="product in cartProduct">
                                        <td>{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.pdesc}}</td>
                                         <td>{{product.hsn}}</td>
                                        <td>{{product.price}}</td>
                                        <td>{{product.cartQty}}</td>
                                         <td>{{product.price * product.cartQty}}</td>
                                       
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="6" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button  type="button" onclick="Invoice()" class="btn btn-warning" ><i class="fa fa-print"></i> Print</button>
                            <button data-toggle="modal" data-target="#messageModal" ng-click="checkOut()" type="button" class="btn btn-success" data-dismiss="modal"><i class="fa fa-check"></i> Confirm</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                        </div>
                    </div>

                </div>
            </div>


            <!-- Modal -->
            <div id="messageModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" align="center">Congratulation</h4>
                        </div>
                        <div class="modal-body">
                            <h1 style="color: green; text-align: center">
                                Order Complete Successfully
                            </h1>
                        </div>
                        <div class="modal-footer">
                            <a href="<%= request.getContextPath()%>" class="btn btn-default">Close</a>
                        </div>
                    </div>

                </div>
            </div>


        </div>


</div>

<div id="invoice">

    <div class="toolbar hidden-print">
        <div class="text-right">
            <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
            <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
        </div>
        <hr>
    </div>
    <div class="invoice overflow-auto">
        <div style="min-width: 600px">
            <header>
                <div class="row">
                    <div class="col">
                        <a target="_blank" href="https://lobianijs.com">
                            <img src="http://lobianijs.com/lobiadmin/version/1.0/ajax/img/logo/lobiadmin-logo-text-64.png" data-holder-rendered="true" />
                            </a>
                    </div>
                    <div class="col company-details">
                        <h2 class="name">
                            <a target="_blank" href="https://lobianijs.com">
                            INFOTECH ASSOCIATES
                            </a>
                        </h2>
                        <div>INFOTECH ASSOCIATES  </div>				
                        <div> DOOR No.02,EDARATH BUILDING,MUKKOM </div>
                        <div>KOZHIKODE, KERALA	</div>						
                         <div>GSTIN:32DDAPA7646N1ZI</div>
                        <div>(123) 456-789</div>
                        <div>infotech@gmail.com</div>
                    </div>
                </div>
            </header>
            <main>
                <div class="row contacts">
                    <div class="col invoice-to">
                        <div class="text-gray-light"  ng-model="clickedCustomer">INVOICE TO:</div>
                        <h2 class="to">{{clickedCustomer.cname}}</h2>
                        <div class="address">{{clickedCustomer.cadd}}
                        {{clickedCustomer.phone}}
                        </div>
<!--                         <div class="email"><a href="mailto:john@example.com">john@example.com</a></div>
 -->                    </div>
                    <div class="col invoice-details">
                        <h1 class="invoice-id">INVOICE 3-2-1</h1>
                        <div class="date">Date of Invoice: {{orderDate| date}}</div>
<!--                         <div class="date">Due Date: 30/10/2018</div>
 -->                    </div>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                        
                                         <th>Sl NO</th>
                                        <th>Product Name</th>
                                         <th>Description</th>
                                         <th>HSN/SAC</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Grand Total</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                       <tr ng-repeat="product in cartProduct">
                                        <td class="no">{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.pdesc}}</td>
                                         <td>{{product.hsn}}</td>
                                        <td class="unit">{{product.price}}</td>
                                        <td >{{product.cartQty}}</td>
                                         <td class="total">{{product.price * product.cartQty}}</td>
                                       
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="6" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td class="total"> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    </tr>
                    </tbody>
                    
                </table>
                <div>
                Account Details</div>                                                                    
              <div>Account No: 10190000128183</div> 
              <div>IFSC : ESMF0001128
              <div> ESAF SMALL FINANCE BANK</div>
              <div>MUKKOM Branch</div>
                
                </div>
                <div class="thanks">Thank you!</div>
                <div class="notices">
                    <div>Declaration -</div>
                    <div class="notice">			
              We declare that this invoice shows actual price of the goods described
               and that all particulars are true and correct. 							
		</div>
                </div>
            </main>
            <footer>
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>




<!--  <script>
	
$(document).ready(function(){
	
	$("#invoice").hide();
	$("#checkoutModal").show();
	$("#productdetails").show();
	$("#cart").show();
	$("#banner").show();	
});

</script> -->

<script>
$(document).ready(function(){

	$("#invoice").show();
	

});

</script>


<script>
$('#printInvoice').click(function(){
    Popup($('.invoice')[0].outerHTML);
    function Popup(data) 
    {
        window.print();
        return true;
    }
});
</script>
           
 </body>
</html>



<%-- 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Infotech Associates</title>
        <spring:url value="/resources/css/bootstrap.css" var="bootstrapCSS"/>
        <spring:url value="/resources/css/font-awesome.css" var="fontawesomeCSS"/>
        <spring:url value="/resources/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resources/js/bootstrap.js" var="bootstrapJS"/>
        <spring:url value="/resources/js/angular.min.js" var="angularJS"/>
        <spring:url value="/resources/js/my_app.js" var="myAppJS"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapCSS}"/>
        <link rel="stylesheet" type="text/css" href="${fontawesomeCSS}"/>
        <!-- Site Icons -->
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="resources/css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="resources/js/modernizer.js"></script>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <script src="${angularJS}"></script>
        <script src="${myAppJS}"></script>
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
    height: 230vh;
    min-height: 100%;
    margin-left: -4%;
    width: 110%;
}
h1 {
    font-size: 35px
}
table {
    border-spacing: 0;
    }
.form-group {
    margin-bottom: 15px;
}
.navbar-collapse .navbar-nav > li > a {
    color: white;
}
a {
    color: #e75b1e;
    text-decoration: none;
}


#invoice{
    padding: 30px;
}

.invoice {
    position: relative;
    background-color: #FFF;
    min-height: 680px;
    padding: 15px
}

.invoice header {
    padding: 10px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #3989c6
}

.invoice .company-details {
    text-align: right
}

.invoice .company-details .name {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .contacts {
    margin-bottom: 20px
}

.invoice .invoice-to {
    text-align: left
    padding-left: 2%;
}

.invoice .invoice-to .to {
    margin-top: 0;
    margin-bottom: 0
    font-size: 18px;
    
}

.invoice .invoice-details {
    text-align: right
}

.invoice .invoice-details .invoice-id {
    margin-top: 0;
    color: #3989c6
}

.invoice main {
    padding-bottom: 50px
}

.invoice main .thanks {
    margin-top: 80px;
    font-size: 2em;
    margin-bottom: 50px
}

.invoice main .notices {
    padding-left: 6px;
    border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
    font-size: 1.2em
}

.invoice table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-bottom: 20px
}

.invoice table td,.invoice table th {
    padding: 15px;
    background: #eee;
    border-bottom: 1px solid #fff
}

.invoice table th {
    white-space: nowrap;
    font-weight: 400;
    font-size: 16px
}

.invoice table td h3 {
    margin: 0;
    font-weight: 400;
    color: #3989c6;
    font-size: 1.2em
}

.invoice table .qty,.invoice table .total,.invoice table .unit {
    text-align: right;
    font-size: 1.2em
}

.invoice table .no {
    color: #fff;
    font-size: 1.6em;
    background: #3989c6
}

.invoice table .unit {
    background: #ddd
}

.invoice table .total {
    background: #3989c6;
    color: #fff
}

.invoice table tbody tr:last-child td {
    border: none
}

.invoice table tfoot td {
    background: 0 0;
    border-bottom: none;
    white-space: nowrap;
    text-align: right;
    padding: 10px 20px;
    font-size: 1.2em;
    border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
    border-top: none
}

.invoice table tfoot tr:last-child td {
    color: #3989c6;
    font-size: 1.4em;
    border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
    border: none
}

.invoice footer {
    width: 100%;
    text-align: center;
    color: #777;
    border-top: 1px solid #aaa;
    padding: 8px 0
}

@media print {
    .invoice {
        font-size: 11px!important;
        overflow: hidden!important
    }

    .invoice footer {
        position: absolute;
        bottom: 10px;
        page-break-after: always
    }

    .invoice>div:last-child {
        page-break-before: always
    }
}
 
        </style>

    </head>
    <body ng-controller="appCtrl">



        <div class="container" style="width: 94%;margin-left: 2%;">

            <div class="col-md-12 header">
                <h1 align="center" style="color: #e75b1e;margin-top: 3%;">INFOTECH ASSOCIATES</h1>
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
                            <ul class="nav navbar-nav" style="background-color:rgba(19, 18, 16, 0.66); width: 104%; color: white;">

                                <c:if test="${user_id != null}">
                                    <li class="active"><a href="<%= request.getContextPath()%>/"><i class="fa fa-home"></i> Home</a></li>
                                    <li><a href="<%= request.getContextPath()%>/product"><i class="fa fa-paypal"></i> New Product</a></li>
                                    <li><a href="<%= request.getContextPath()%>/customer"><i class="fa fa-user-plus"></i> Register Customer</a></li> 
                                    <li><a href="<%= request.getContextPath()%>/company"><i class="fa fa-user-plus"></i> Company Details</a></li> 
                                     <li><a href="<%= request.getContextPath()%>/order_details"><i class="fa fa-area-chart"></i> Order Details</a></li> 
                                     
                                  </c:if>

                            </ul>
                            <ul class="nav navbar-nav navbar-right" style="margin-top: -4%;font-weight: bold;">
                                <c:if test="${user_id == null}">
                                    <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
                                    </c:if>
                                    <c:if test="${user_id != null}">
                                    <li style=" margin-top: -10%;"><a href="<%= request.getContextPath()%>/logout"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>
                
            </div> 
            
            
               <div id="banner" class="banner full-screen-mode parallax">
                <c:if test="${user_id == null}"> 
        <div class="container pr">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="banner-static">
                    <div class="banner-text">
                        <div class="banner-cell">
               <!-- Companyname -->           
                           <!--  <h1>INFOTECH <span class="typer" id="some-id" data-delay="200" data-delim=":" data-words="ASSOCIATES" data-colors="red"></span>
                            </h1> --> 
               
                       
           <div class="footer-news pad-top-100 pad-bottom-70 parallax">
            <div class="container">
                <div class="row">
                
                
                <div class="panel-body">
                                
                    <div class="signup-content">
                    <c:if test="${em != null}">
                                    <div class="alert alert-danger alert-dismissable fade in">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Error!</strong> ${em}
                                    </div>
                                </c:if>
                   <form action="<%= request.getContextPath()%>/loginCheck" method="post" id="signup-form" class="signup-form">
                    <h2 style="color:aqua">Login </h2>
                    <div class="form-group">
                        <input type="text" class="form-input" name="userName" id="userName" placeholder="User Name">
                    </div>
                    
                    <div class="form-group">
                        <input type="password" class="form-input" name="password" id="password" placeholder="Password">
                    </div>
                    
                   <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="submit-link submit" value="Sign In"
                        style="width: 30%; color: white;padding: 3px 20px;font-size: 13px; height: 30px;
                        font-weight: bold;border: -1px solid rgba(0, 0, 0, .075);background-color: #c15025;">
                    
                    
                      <!-- <input type="button" name="register" id="register" onclick="location.href='/TaxInvoice/AdminRegister'" value="Register" 
                        class="submit-link submit"  style="width: 30%;text-align:center; color: white;padding: 3px 20px;font-size: 13px;
                        margin-left:2%; height: 30px;font-weight: bold;border: -1px solid rgba(0, 0, 0, .075);background-color: #c15025;"> 
                         -->
                  </div>
                  
     
                </form>
            </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
                            <a href="#login">
                            </a>
                        </div>
                        <!-- end banner-cell -->
                    </div>
                    <!-- end banner-text -->
                </div>
                <!-- end banner-static -->
            </div>
            <!-- end col -->
        </div>
        <!-- end container -->
    </div>




            </c:if>

            <c:if test="${user_id != null}">



                <div class="col-md-12" style="margin-top: 2%;width: 87%; margin-left: 7%;">

                    <div class="panel panel-default">
                        <div class="panel-heading">

                        </div>
                        <div class="panel-body">
                            <div class="col-md-4">
                                 Invoice No: <input name="oid" type="text" class="form-control" ng-model="oid = ${orderNo}" value="${orderNo}" />
                           
<%--                             Order No: <input name="oid" type="text" class="form-control" ng-model="oid = ${orderNo}" value="${orderNo}"/>
 --%>      
             <%--                </div>
                            <div class="col-md-4">
                                Invoice Type: 
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="orderType" ng-model="orderType" value="sell">Sell
                                    </label> &nbsp; &nbsp; &nbsp;
                                    <label>
                                        <input type="radio" name="orderType" ng-model="orderType" value="purchase">Purchase
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                Invoice Date: <input ng-model="orderDate" name="orderDate" type="date" class="form-control"/>
                            </div>
                           
                        </div>
                    </div>

                </div>





                <div  class="col-md-12">
                    <div class="row" style="width: 89%; margin-left: 6%;">
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 158%">
                                <div class="panel-heading">
                                    <i class="fa fa-product-hunt"></i> Select Product
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="Product Name">Product Name:</label>
                                        <select name="pname" class="form-control" ng-model="clickedProduct" ng-options="product.pname for product in products">
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="pid">Product ID: </label>
                                        <input readonly="1" name="pid" type="text" class="form-control" id="pid" value="{{clickedProduct.pid}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="pdesc">Description: </label>
                                        <input readonly="1" name="pdesc" type="text" class="form-control" id="pdesc" value="{{clickedProduct.pdesc}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="hsn">HSN/SAC: </label>
                                        <input readonly="1" name="hsn" type="text" class="form-control" id="hsn" value="{{clickedProduct.hsn}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="price">Price: </label>
                                        <input readonly="1" name="price" type="text" class="form-control" id="price" value="{{clickedProduct.price}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="qty">Quantity: </label>
                                        <input readonly="1" name="qty" type="text" class="form-control" id="qty" value="{{clickedProduct.qty}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="qty">Tax: </label>
                                        <input readonly="1" name="tax" type="text" class="form-control" id="tax" value="GST rate {{clickedProduct.tax}} %">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 158%">
                                <div class="panel-heading">
                                    <i class="fa fa-user-circle"></i> Select Customer
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="Customer Name">Customer Name:</label>
                                        <select name="cname" class="form-control" ng-model="clickedCustomer" ng-options="customer.cname for customer in customers">
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="cid">Customer Address: </label>
                                        <input readonly="1" name="cadd" type="text" class="form-control" id="cadd" value="{{clickedCustomer.cadd}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Phone: </label>
                                        <input readonly="1" name="phone" type="text" class="form-control" id="phone" value="{{clickedCustomer.phone}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="height: 360px;">
                            <div class="panel panel-primary" style="height: 158%">
                                <div class="panel-heading">
                                    <i class="fa fa-sellsy"></i> Order Details
                                </div>
                                <div class="panel-body">
                                    <div class="form-group" ng-show="clickedProduct.pid != null">
                                        <label for="qty">Quantity:</label>
                                        <input readonly="1" name="orderQty" ng-model="qty = 1" type="text" class="form-control" id="qty" placeholder="Enter Quantity">
                                     
<!--                                          <input readonly="1" name="orderQty" value="{{clickedProduct.qty}}" type="text" class="form-control" id="qty" placeholder="Enter Quantity">
 -->
                                    </div>
                                    <div class="form-group" ng-show="qty != 0 && clickedProduct.pid != null">
                                        <label for="total">Total:</label>
                                        <input readonly="1" name="total" value="{{clickedProduct.price * qty}}" type="text" class="form-control" id="total">
                                    </div>
                                    <div class="form-group" ng-show="clickedProduct.pid != null && clickedCustomer.cid != null"> 
                                        <button ng-click="addToCart()" type="submit" class="btn btn-success" style="margin-top: 9%;">
                                        <i class="fa fa-cart-plus"></i> Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="cart" class="col-md-12" style="text-align: center; margin-top:19%;width: 87%; margin-left: 7%;">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 style="color:#5cb85c;font-size: 22px;"><i class="fa fa-cart-plus"></i> Cart <button class="btn btn-sm btn-success"> {{cartProduct.length}} </button></h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Action</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="product in cartProduct">
                                        <td>{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.price}}</td>
                                        <td>
                                            <button type="button" ng-click="decreaseQty(product)" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                            &nbsp; &nbsp; {{product.cartQty}} &nbsp; &nbsp;
                                            <button type="button" ng-click="increaseQty(product)" class="btn btn-success"><i class="fa fa-plus"></i></button>
                                        </td>
                                        <td><button ng-click="removeProduct(product)" class="btn btn-danger"><i class="fa fa-remove"></i> Remove</button></td>
                                        <td>{{product.subTotal * product.cartQty}}</td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="5" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="5" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="5" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="5" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                            <button data-toggle="modal" data-target="#checkoutModal" type="button" ng-show="cartProduct.length != 0" class="btn btn-success"><i class="fa fa-check"></i> Check Out</button>
                                         </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

                 

            



            <!-- checkoutModal -->
            <div id="checkoutModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" align="center"><i class="fa fa-eye"></i> Review Your Order</h4>
                        </div>
                        <div class="modal-body">
                            <table class="table table-bordered table-striped">
                                <tr ng-repeat="company in companys">
                                    <td>Company Details</td>
                                    <td>
									{{company.compname}}
							        {{company.compadd}}
									{{company.compmail}},{{company.compphone}}
									
                                    </td>
                                   
                                </tr>
                                 <tr>
                                    <td>Customer Name</td>
                                    <td>{{clickedCustomer.cname}}</td>
                                </tr>
                                <tr>
                                    <td>Customer Address</td>
                                    <td>{{clickedCustomer.cadd}}
                                    {{clickedCustomer.phone}}</td>
                                </tr>
                                <tr>
                                    <td>Order Type</td>
                                    <td>{{orderType}}</td>
                                </tr>
                                <tr>
                                    <td>Invoice Date</td>
                                    <td>{{orderDate| date}}</td>
                                </tr>
                               
                            </table>
                           
                            Order Details: <br/>
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>Product Name</th>
                                         <th>Description</th>
                                         <th>HSN/SAC</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Grand Total</th>
                                        
                                    </tr>
                                    
                                </thead>
                                <tbody>
                                    <tr ng-repeat="product in cartProduct">
                                        <td>{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.pdesc}}</td>
                                         <td>{{product.hsn}}</td>
                                        <td>{{product.price}}</td>
                                        <td>{{product.cartQty}}</td>
                                         <td>{{product.price * product.cartQty}}</td>
                                       
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="6" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button  type="button" onclick="printDiv('invoice')" class="btn btn-warning" ><i class="fa fa-print"></i> Print</button>
                             <button data-toggle="modal" data-target="#invoice" type="button" ng-show="cartProduct.length != 0" class="btn btn-success"><i class="fa fa-check"></i> Preview</button>
                            <button data-toggle="modal" data-target="#messageModal" ng-click="checkOut()" type="button" class="btn btn-success" data-dismiss="modal"><i class="fa fa-check"></i> Confirm</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                        </div>
                    </div>

                </div>
            </div>


            <!-- Modal -->
            <div id="messageModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" align="center">Congratulation</h4>
                        </div>
                        <div class="modal-body">
                            <h1 style="color: green; text-align: center">
                                Order Complete Successfully
                            </h1>
                        </div>
                        <div class="modal-footer">
                            <a href="<%= request.getContextPath()%>" class="btn btn-default">Close</a>
                        </div>
                    </div>

                </div>
            </div>


        </div>


</div>

<div id="invoice" class="modal fade" role="dialog">

    <div class="toolbar hidden-print">
    
        <div class="text-right">
<!--             <button  onclick="history.back();" class="btn btn-info"> Close</button>
 -->            <button id="printInvoice" onclick="printDiv('invoice')"  class="btn btn-info"><i class="fa fa-print"></i> Print</button>
            <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
        </div>
        <hr>
    </div>
    <div class="invoice overflow-auto">
        <div style="min-width: 600px">
            <header>
                <div class="row">
                    <!-- <div class="col">
                        <a target="_blank" href="https://lobianijs.com">
                            <img src="http://lobianijs.com/lobiadmin/version/1.0/ajax/img/logo/lobiadmin-logo-text-64.png" data-holder-rendered="true" />
                            </a>
                    </div> -->
                    <div ng-repeat="company in companys" class="col company-details" style="margin-right: 2%;">
                        <h2 class="name">
                            <a target="_blank" href="https://lobianijs.com">
                         {{company.compname}}      
                             </a>
                        </h2>
                        <div>{{company.compname}} </div>				
                        <div>{{company.compadd}} </div>
                        <div>{{company.compphone}}</div>
                        <div>{{company.compmail}}</div>
                    </div>
                </div>
            </header>
            <main>
                <div class="row contacts">
                    <div class="col invoice-to" style="margin-left: 2%;">
                        <div class="text-gray-light"  ng-model="clickedCustomer">INVOICE TO:</div>
                        <h2 class="to">{{clickedCustomer.cname}}</h2>
                        <div class="address">{{clickedCustomer.cadd}}
                        {{clickedCustomer.phone}}
                        </div>
<!--                         <div class="email"><a href="mailto:john@example.com">john@example.com</a></div>
 -->                    </div>
                    <div class="col invoice-details" style="margin-right: 2%;">
                        <h1 class="invoice-id" style="font-size:16px;">INVOICE ITA/1000120/01</h1>
                        <div class="date">Date of Invoice: {{orderDate| date}}</div>
<!--                         <div class="date">Due Date: 30/10/2018</div>
 -->                    </div>
                </div>
                <table id="example" class="table table-striped table-bordered" style="width:100%; border: 2px solid #c3d4e0; padding: 8px 0px 1px 3px;">
                    <thead>
                        <tr style="background-color: #b8ccdc;">
                        
                                         <th>Sl NO</th>
                                        <th>Product Name</th>
                                         <th>Description</th>
                                         <th>HSN/SAC</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Grand Total</th>
                            
                        </tr>
                    </thead>
                    <tbody style="color: #111;">
                       <tr ng-repeat="product in cartProduct">
                                        <td class="no">{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.pdesc}}</td>
                                         <td>{{product.hsn}}</td>
                                        <td class="unit">{{product.price}}</td>
                                        <td >{{product.cartQty}}</td>
                                         <td class="total">{{product.price * product.cartQty}}</td>
                                       
                                    <tr ng-show="cartProduct.length != 0">
                                        <td colspan="6" style="text-align: right">
                                        
                                        Final Total:</td>
                                        <td>
                                        {{finalTotal}}</td>
                                    </tr>
                           
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                             CGST IN {{clickedProduct.tax}} % 
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                           <tr ng-show="cartProduct.length != 0">
                            <td colspan="6" style="text-align: right">
                            IGST IN {{clickedProduct.tax}} %
                            </td>
                           <td>
                           {{finalGST}}</td>
                           </tr>
                       <tr ng-show="cartProduct.length != 0">
                           <td colspan="6" style="text-align: right">
                           Grand Total including GST
                            </td>
                       <td class="total"> ₹
						{{TotalValue}}                     
 						</td>
                      </tr>
                                    </tr>
                    </tbody>
                    
                </table>
                <div>
                Account Details</div>                                                                    
              <div ng-repeat="company in companys">{{company.compaccount}}</div> 
             
                </div>
                <div class="thanks">Thank you!</div>
                <div class="notices">
                    <div>Declaration -</div>
                    <div class="notice">			
              We declare that this invoice shows actual price of the goods described
               and that all particulars are true and correct. 							
		</div>
                </div>
            </main>
            <footer>
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>




<!--
 
 <script>
	
$(document).ready(function(){
	
	$("#invoice").hide();
		
});

</script>

<script>
function Invoice()
{
	$("#invoice").show();
	
	}

</script> -->

<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
	</script>
	
<script>
function myFunction()
{
	alert("hiii");
	window.history.back();
	
	}

</script>

<script>
$('#printInvoice').click(function(){
    Popup($('.invoice')[0].outerHTML);
    function Popup(data) 
    {
        window.print();
        return true;
    }
});
</script>

<script>
function printDiv(divName){
	var printContents = document.getElementById(divName).innerHTML;
   var originalContents =document.body.innerHTML;
   document.body.innerHTML=printContents;
   window.print();
   document.body.innerHTML= originalContents; 
}
</script>
           
 </body>
</html> --%> 