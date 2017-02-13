<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Mobile Shop</title>
    
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css"  type="text/css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="static/css/style.css">
    
    
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="static/font-awesome/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="static/fonts/font-slider.css" type="text/css">
    
    <!-- jQuery and Modernizr-->
    <script src="static/js/jquery-2.1.1.js"></script>
    
    <!-- Core JavaScript Files -->       
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/kendo.ui.core.min.js"></script>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <a href="contact.html"><span class="glyphicon glyphicon-envelope"></span> &nbsp;&nbsp;联系我们</a>
                </div>
                <div class="col-xs-6">
                    <ul class="top-link">
                        <li><a id="loginBtn" data-toggle="modal">登录</a></li>
                        <li><a id="signinBtn" data-toggle="modal">注册</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <script>
        $('#loginBtn').click(function (e) {
            $('#loginModal').modal('toggle');
            $('#loginTab a[href="#loginDiv"]').tab('show')
        })
        $('#signinBtn').click(function (e) {
            $('#loginModal').modal('toggle');
            $('#loginTab a[href="#signin"]').tab('show')
        })
    </script>
    <!-- loginModal -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body tab-content">
                    <ul id="loginTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#loginDiv" data-toggle="tab">登录
                            </a>
                        </li>
                        <li><a href="#signin" data-toggle="tab">注册</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                    
                        <div class="tab-pane fade in active" id="loginDiv">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-8" style="text-align: center">
                                        <button type="submit" class="btn btn-default">Sign in</button>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> Remember me
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="signin">
                            <form method="post" action="/ebook/register" class="form-horizontal">
                                <div class="form-group">
                                    <div class="dropdown col-sm-4">
                                       <select id="signinMode" class="form-control">
                                            <option value="phone">手机号</option>
                                            <option value="email">邮箱</option>
                                        </select>
                                    </div>
                                    <div id="signUnique" class="col-sm-8">
                                        <input class="form-control" id="phone" placeholder="手机号">
                                    </div>
                                </div>
                                 <script>
                                 $("#signinMode").change(function(){
                                    debugger; 
                                    var signMode = $("#signinMode option:selected").val();
                                    if(signMode == "phone"){
                                        $("#signUnique").remove();
                                        $("#signinMode").parent().parent().append('<div id="signUnique" class="col-sm-8"><input class="form-control" id="phone" placeholder="手机号"></div>')
                                    }else{
                                        $("#signUnique").remove();
                                        $("#signinMode").parent().parent().append('<div id="signUnique" class="col-sm-8"><input type="email" class="form-control" id="email" placeholder="邮箱"></div>')
                                    }
                                 });
                                           
                                            
                                        </script>
                                <div class="form-group">
                                    <label for="userName" class="col-sm-4 control-label">用户名</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userName" placeholder="用户名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-4 control-label">密码</label>
                                    <div class="col-sm-8">
                                        <input type="password" class="form-control" id="inputPassword4" placeholder="密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12" style="text-align: center">
                                        <button type="submit" class="btn btn-default">注册</button>
                                        <button type="reset" class="btn btn-default">重置</button>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                    </div>

                    <div style="clear:both;"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!--Header-->
    <header class="container">
        <div class="row">
            <div class="col-md-4">
                <div id="logo"><img src="images/logo.png" /></div>
            </div>
            <div class="col-md-4">
                <form class="form-search">
                    <input type="text" class="form-control col-md-8" placeholder="Text input">
                    <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
                </form>
            </div>
            <div class="col-md-4">
                <div id="cart"><a class="btn btn-1" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART : 0 ITEM</a></div>
            </div>
        </div>
    </header>
    
    <!--Navigation-->
    <nav id="menu" class="navbar">
        <div class="container">
            <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
              <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PC Computers</a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="category.html">Window</a></li>
                                    <li><a href="category.html">MacBook</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Laptops &amp; Notebooks</a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="category.html">Dell</a></li>
                                    <li><a href="category.html">Asus</a></li>
                                    <li><a href="category.html">Samsung</a></li>
                                    <li><a href="category.html">Lenovo</a></li>
                                    <li><a href="category.html">Acer</a></li>
                                </ul>
                            </div> 
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobiles &amp; Tablet</a>
                        <div class="dropdown-menu" style="margin-left: -203.625px;">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="category.html">Iphone</a></li>
                                    <li><a href="category.html">Samsung</a></li>
                                    <li><a href="category.html">Nokia</a></li>
                                    <li><a href="category.html">Lenovo</a></li>
                                    <li><a href="category.html">Google</a></li>
                                </ul>
                                <ul class="list-unstyled">
                                    <li><a href="category.html">Nexus</a></li>
                                    <li><a href="category.html">Dell</a></li>
                                    <li><a href="category.html">Oppo</a></li>
                                    <li><a href="category.html">Blackberry</a></li>
                                    <li><a href="category.html">HTC</a></li>
                                </ul>
                                <ul class="list-unstyled">
                                    <li><a href="category.html">LG</a></li>
                                    <li><a href="category.html">Q-Mobiles</a></li>
                                    <li><a href="category.html">Sony</a></li>
                                    <li><a href="category.html">Wiko</a></li>
                                    <li><a href="category.html">T&T</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="category.html">Software</a></li>
                </ul>
            </div>
        </div>
    </nav>