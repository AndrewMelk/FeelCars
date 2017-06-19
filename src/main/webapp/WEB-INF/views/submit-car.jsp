<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/submit-car.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:38 GMT -->
<head>
    <sec:csrfMetaTags/>

    <title>Car World - Car Dealer HTML Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-submenu.css">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="resources/fonts/linearicons/style.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="resources/css/skins/orange.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPlayfair+Display:400,700%7CRoboto:100,300,400,400i,500,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="resources/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script type="text/javascript" src="resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script type="text/javascript" src="resources/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="resources/js/html5shiv.min.js"></script>
    <script type="text/javascript" src="resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="page_loader"><img src="resources/img/loader.gif" alt="Loader"></div>

<!-- Option Panel -->
<div class="option-panel option-panel-collased">
    <h2>Change Color</h2>
    <div class="color-plate orange-plate " data-color="orange"></div>
    <div class="color-plate default-plate" data-color="red"></div>
    <div class="color-plate blue-plate" data-color="blue"></div>
    <div class="color-plate blue-light-plate" data-color="blue-light"></div>
    <div class="color-plate green-light-plate" data-color="green-light"></div>
    <div class="color-plate green-plate" data-color="green"></div>
    <div class="color-plate yellow-light-plate" data-color="yellow-light"></div>
    <div class="color-plate green-light-2-plate" data-color="green-light-2"></div>
    <div class="color-plate olive-plate" data-color="olive"></div>
    <div class="color-plate purple-plate" data-color="purple"></div>
    <div class="color-plate midnight-blue-plate" data-color="midnight-blue"></div>
    <div class="color-plate brown-plate" data-color="brown"></div>
    <div class="setting-button">
        <i class="fa fa-gear"></i>
    </div>
</div>
<!-- /Option Panel -->

<!-- Top header start -->
<%@include file="jspf/header.jspf"%>
<!-- Top header end -->

<!-- Main header start -->
<header class="main-header">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navigation" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.html" class="logo">
                    <img src="img/logos/logo.png" alt="logo">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="navbar-collapse collapse" role="navigation" aria-expanded="true" id="app-navigation">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
                            Home<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="index.html">Home </a></li>
                            <li><a href="index-2.html">Home 2 (With Video)</a></li>
                            <li><a href="index-3.html">Home 3</a></li>
                            <li><a href="index-4.html">Home 4</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
                            Car Listing<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" data-animation="wow fadeInUp delay-01s">
                            <li class="dropdown-submenu">
                                <a tabindex="0">List Layout</a>
                                <ul class="dropdown-menu">
                                    <li><a href="car-list-rightside.html">Right sidebar </a></li>
                                    <li><a href="../car-list-leftsidebar.jsp">Left Sidebar</a></li>
                                    <li><a href="car-list-fullwidth.html">Full Width</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">Grid Layout</a>
                                <ul class="dropdown-menu">
                                    <li><a href="car-grid-rightside.html">Right Sidebar</a></li>
                                    <li><a href="car-grid-leftside.html">Left Sidebar</a></li>
                                    <li><a href="car-grid-fullwidth.html">Full Width</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">Car Details</a>
                                <ul class="dropdown-menu">
                                    <li><a href="car-details.html">Car Details</a></li>
                                    <li><a href="car-details-2.html">Car Details 2</a></li>
                                    <li><a href="car-details-3.html">Car Details 3</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
                            Featured<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" data-animation="wow fadeInUp delay-01s">
                            <li class="dropdown-submenu">
                                <a tabindex="0">My Profile</a>
                                <ul class="dropdown-menu">
                                    <li><a href="my-profile.html">My Profile</a></li>
                                    <li><a href="my-bookmarks.html">My Bookmark</a></li>
                                    <li><a href="my-car.html">My Car</a></li>
                                    <li><a href="change-password.html">Change Password</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">Agents</a>
                                <ul class="dropdown-menu">
                                    <li><a href="agent-list.html">Agent List</a></li>
                                    <li><a href="agent-detail.html">Agent Details</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">Blog</a>
                                <ul class="dropdown-menu">
                                    <li><a href="with-right-sidebar.html">With sidebar</a></li>
                                    <li><a href="fullwidth.html">Fullwidth</a></li>
                                    <li><a href="blog-single-sidebar.html">Single Sidebar</a></li>
                                    <li><a href="blog-single.html">Blog Single</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
                            Pages<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" data-animation="wow fadeInUp delay-01s">
                            <li class="dropdown-submenu">
                                <a tabindex="0">Extras</a>
                                <ul class="dropdown-menu">
                                    <li><a href="submit-car.jsp">Submit Car</a></li>
                                    <li><a href="typography.html">Typography</a></li>
                                    <li><a href="pricing-tables.html">Pricing Tables</a></li>
                                    <li><a href="elements.html">Elements</a></li>
                                    <li><a href="icon.html">icon</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">Services</a>
                                <ul class="dropdown-menu">
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="services-2.html">Services 2</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a tabindex="0">contact</a>
                                <ul class="dropdown-menu">
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="contact-2.html">Contact 2</a></li>
                                </ul>
                            </li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="faq.html">Faq</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="signup.html">Signup</a></li>
                            <li><a href="forgot-password.html">Forgot Password</a></li>
                            <li><a href="404.html">404</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right rightside-navbar">
                    <li>
                        <a href="submit-car.jsp" class="button">
                            Submit Car
                        </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <!-- /.container -->
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Sub banner start -->
<div class="sub-banner">
    <div class="overlay">
        <div class="container">
            <div class="breadcrumb-area">
                <h1>Submit Car</h1>
                <ul class="breadcrumbs">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Submit Car</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Submit Car start -->
<div class="submit-car content-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- notification-box start -->
                <div class="notification-box">
                    <h3>Don't Have an Account?</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. Semper ac dolor vitae accumsan.</p>
                </div>
                <!-- notification-box end -->
            </div>
            <div class="col-md-12">
                <!-- Submit address start -->
                <div class="submit-address">
                    <form:form method="post" action="${contextPath}/insert?${_csrf.parameterName}=${_csrf.token}" modelAttribute="car" enctype="multipart/form-data">
                        <h1>Основная информация</h1>
                        <div class="search-contents-sidebar">
                            <form:input type="text" class="input-text" path="uuid" readonly="true" value="${uuid}"></form:input>
                            <div class="form-group">
                                <label>Текс объвления</label>
                                <form:input cssClass="input-text" id="title" path="title" required="required"></form:input>                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="selectpicker search-fields">
                                            <option>For Sale</option>
                                            <option>For Rent</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Type Of Car</label>
                                        <select class="selectpicker search-fields">
                                            <option>Type Of Car</option>
                                            <option>New Car</option>
                                            <option>User Car</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Цена</label>
                                        <form:input title="USD" cssclass="input-text" path="carPrice" required="required"/>                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Location</label>
                                        <form:input cssClass="input-text" path="city" required="required"/>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Марка</label>
                                        <form:select cssClass="selectpicker search-fields" id="first-choice" path="mark">
                                            <option selected value="All">Mark</option>
                                            <c:forEach var="carMarksTop" items="${carMarksList}">
                                                <option value="${carMarksTop.id}">${carMarksTop.title}</option>
                                            </c:forEach>
                                            <%--<option disabled>----------</option>--%>
                                            <%--<c:forEach var="carMarksTop" items="${carMarksList}">--%>
                                            <%--<option value="${carMarksTop.carMark}">${carMarksTop.carMark}</option>--%>
                                            <%--</c:forEach>--%>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Модель</label>
                                        <form:select cssClass="selectpicker search-fields" id="second-choice" path="model">
                                            <option selected value="NULL">Model</option>
                                        </form:select>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <h1>Car Gallery</h1>
                        <div id="myDropZone" class="dropzone dropzone-design">
                            <div class="dz-default dz-message"><span>Drop files here to upload</span></div>
                        </div>

                        <h1>Location</h1>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" class="input-text" name="address"  placeholder="Address">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <select class="selectpicker search-fields" data-live-search="true" data-live-search-placeholder="Search value">
                                        <option>Choose City</option>
                                        <option>New York</option>
                                        <option>Los Angeles</option>
                                        <option>Chicago</option>
                                        <option>Brooklyn</option>
                                        <option>Queens</option>
                                        <option>Houston</option>
                                        <option>Manhattan</option>
                                        <option>Philadelphia</option>
                                        <option>Phoenix</option>
                                        <option>San Antonio</option>
                                        <option>Bronx</option>
                                        <option>San Diego</option>
                                        <option>Dallas</option>
                                        <option>San Jose</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>State</label>
                                    <select class="selectpicker search-fields" data-live-search="true" data-live-search-placeholder="Search value">
                                        <option>Choose State</option>
                                        <option>Alabama</option>
                                        <option>Alaska</option>
                                        <option>Arizona</option>
                                        <option>Arkansas</option>
                                        <option>California</option>
                                        <option>Colorado</option>
                                        <option>Connecticut</option>
                                        <option>Delaware</option>
                                        <option>Florida</option>
                                        <option>Georgia</option>
                                        <option>Hawaii</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Postal Code</label>
                                    <input type="text" class="input-text" name="zip"  placeholder="Postal Code">
                                </div>
                            </div>
                        </div>
                        <h1>Detailed Information</h1>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Detailed Information</label>
                                    <textarea class="input-text" name="message" placeholder="Detailed Information"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label>Car Age <span>(optional)</span></label>
                                    <select class="selectpicker search-fields">
                                        <option>0-1 Years</option>
                                        <option>0-5 Years</option>
                                        <option>0-10 Years</option>
                                        <option>0-20 Years</option>
                                        <option>0-40 Years</option>
                                        <option>40+Years</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label>Car Conditions <span>(optional)</span></label>
                                    <select class="selectpicker search-fields">
                                        <option>All Conditions</option>
                                        <option>Brand New</option>
                                        <option>Slightly Used</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label>Your Of Model (optional)</label>
                                    <select class="selectpicker search-fields">
                                        <option>2017</option>
                                        <option>2016</option>
                                        <option>2015</option>
                                        <option>2014</option>
                                        <option>2013</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label class="margin-t-10">Features (optional)</label>
                                <div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox1" type="checkbox">
                                            <label for="checkbox1">
                                                Free Support
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox2" type="checkbox">
                                            <label for="checkbox2">
                                                Air Conditionninds
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox3" type="checkbox">
                                            <label for="checkbox3">
                                                Oll Changes
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4">
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox4" type="checkbox">
                                            <label for="checkbox4">
                                                Tranmission
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox5" type="checkbox">
                                            <label for="checkbox5">
                                                Auto Electric
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox6" type="checkbox">
                                            <label for="checkbox6">
                                                Unlimited Colors
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4">
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox7" type="checkbox">
                                            <label for="checkbox7">
                                                Affordable
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-theme checkbox-circle">
                                            <input id="checkbox8" type="checkbox">
                                            <label for="checkbox8">
                                                Alarm
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h1>Contact Details</h1>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="input-text" name="name" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="input-text" name="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Phone (optional)</label>
                                    <input type="text" class="input-text" name="phone"  placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <input class="btn button-md button-theme" type="submit" value="Upload" >
                                <%--<a href="#" class="btn button-md button-theme">Preview</a>--%>
                            </div>
                        </div>
                    </form:form>
                </div>
                <!-- Submit address end -->
            </div>
        </div>
    </div>
</div>
<!-- Submit Car end -->

<!-- Partners block start -->
<div class="partners-block">
    <div class="container">
        <h3>Brands & Partners</h3>
        <div class="container">
            <div class="col-md-12">
                <div class="carousel our-partners slide" id="ourPartners">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <a href="#">
                                    <img src="resources/img/brand/brand-1.png" alt="brand-1">
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <a href="#">
                                    <img src="resources/img/brand/brand-2.png" alt="/brand-2">
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <a href="#">
                                    <img src="resources/img/brand/brand-3.png" alt="brand-3">
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <a href="#">
                                    <img src="resources/img/brand/brand-4.png" alt="brand-4">
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <a href="#">
                                    <img src="resources/img/brand/brand-5.png" alt="brand-5">
                                </a>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#ourPartners" data-slide="prev"><i class="fa fa-chevron-left icon-prev"></i></a>
                    <a class="right carousel-control" href="#ourPartners" data-slide="next"><i class="fa fa-chevron-right icon-next"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Partners block end -->

<!-- Footer start -->
<footer class="main-footer clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 footer-item clearfix">
                <div class="footer-item-content">
                    <a href="index.html" class="footer-logo">
                        <img src="resources/img/white-logo.png" alt="white-logo">
                    </a>
                    <div class="clearfix"></div>
                    <!-- paragraph -->
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 footer-item clearfix">
                <div class="footer-item-content">
                    <h2 class="title">Address</h2>
                    <!-- Contact Info -->
                    <ul class="contact-info">
                        <li>
                            <i class="fa fa-map-marker"></i>
                            44 New Design Street, Melbourne
                        </li>
                        <li>
                            <i class="fa fa-phone"></i>
                            <a href="tel:+55-417-634-7071">+55 417-634-7071</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope-o"></i>
                            <a href="mailto:sales@carworld.com">sales@carworld.com</a>
                        </li>
                        <li>
                            <i class="fa fa-fax"></i>
                            Fax: +55 417-634-7071
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 footer-item clearfix">
                <div class="footer-item-content">
                    <h2 class="title">Helpful Links</h2>
                    <ul class="links">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About Us</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact Us</a>
                        </li>
                        <li>
                            <a href="services.html">Services</a>
                        </li>
                        <li>
                            <a href="car-list-rightside.html">Car Listing</a>
                        </li>
                        <li>
                            <a href="with-right-sidebar.html">Blog</a>
                        </li>
                        <li>
                            <a href="car-details.html">Car Details</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 footer-item clearfix">
                <div class="footer-item-content">
                    <div class="newsletter">
                        <h2 class="title">Newsletter</h2>
                        <div class="f-text">
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </div>

                        <form action="#" method="post">
                            <p>
                                <input class="nsu-field btn-block" id="nsu-email-0" type="text" name="email" placeholder="Enter your Email Address" required="">
                            </p>

                            <p>
                                <button type="submit" class="button-sm button-theme btn-block">Signup</button>

                            </p>
                        </form>
                        <!-- / Newsletter Sign-Up -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end-->

<!-- Sub footer start -->
<div class="sub-footer">
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="copy-right">
                © 2017 <a href="#">Car World  </a>‐ All Rights Reserved
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="social-list">
                <ul class="clearfix">
                    <li class="twitter">
                        <a href="http://twitter.com/mabuc" target="_blank">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li class="facebook">
                        <a href="http://facebook.com/mabuc" target="_blank">
                            <i class="fa fa-facebook"></i></a>
                    </li>
                    <li class="youtube">
                        <a href="http://youtube.com/" target="_blank">
                            <i class="fa fa-youtube"></i>
                        </a>
                    </li>
                    <li class="linkedin">
                        <a href="http://linkedin.com/" target="_blank">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li class="pinterest">
                        <a href="http://pinterest.com/mabuc" target="_blank">
                            <i class="fa fa-pinterest"></i>
                        </a>
                    </li>
                    <li class="dribbble">
                        <a href="http://dribbble.com/mabuc" target="_blank">
                            <i class="fa fa-dribbble"></i>
                        </a>
                    </li>
                    <li class="gplus">
                        <a href="http://google.com/" target="_blank">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li class="instagram">
                        <a href="http://instagram.com/envato" target="_blank">
                            <i class="fa fa-instagram"></i>
                        </a>
                    </li>
                    <li class="rss">
                        <a href="http://feedburner.com/" target="_blank">
                            <i class="fa fa-rss"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Sub footer end -->

<script type="text/javascript" src="resources/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-submenu.js"></script>
<script type="text/javascript" src="resources/js/rangeslider.js"></script>
<script type="text/javascript" src="resources/js/jquery.mb.YTPlayer.js"></script>
<script type="text/javascript" src="resources/js/wow.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/jquery.scrollUp.js"></script>
<script type="text/javascript" src="resources/js/dropzone.js"></script>
<script type="text/javascript" src="resources/js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script type="text/javascript" src="resources/js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-89110077-5', 'auto');
    ga('send', 'pageview');

</script>
</body>

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/submit-car.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:39 GMT -->
</html>