<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/car-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:18 GMT -->
<head>
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
                    <li class="dropdown active">
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
                    <li class="dropdown">
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
                <h1>Car Detail</h1>
                <ul class="breadcrumbs">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Car Detail</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Car  details page start -->
<div class=" content-area car-details-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="car-details-section">
                    <!-- Header start -->
                    <div class="heading-car clearfix">
                        <div class="pull-left">
                            <h3>${map.car.mark} ${map.car.model}</h3>
                            <h5>
                                Fully Redesigned Upscale Midsize Car
                            </h5>
                        </div>
                        <div class="pull-right">
                            <h3>${map.car.carPrice}</h3>
                            <p>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </p>
                        </div>
                    </div>
                    <!-- Header end -->

                    <!-- Car detail slider start -->
                    <div class="car-detail-slider  simple-slider mrg-btm-30 ">
                        <div id="carousel-custom" class="carousel slide" data-ride="carousel">
                            <div class="carousel-outer">
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner">
                                    <c:forEach items="${imageList}" var="image">
                                    <div class="item">
                                        <img src="${contextPath}${image}" class="thumb-preview" alt="Chevrolet Impala">
                                    </div>
                                        </c:forEach>
                                    <div class="item active">
                                        <img src="${contextPath}${map.car.generalImage}" class="thumb-preview" alt="Chevrolet Impala">
                                    </div>

                                </div>
                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-custom" role="button" data-slide="prev">
                                    <span class="slider-mover-left no-bg" aria-hidden="true">
                                        <img src="resources/img/chevron-left.png" alt="chevron-left">
                                    </span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-custom" role="button" data-slide="next">
                                    <span class="slider-mover-right no-bg" aria-hidden="true">
                                        <img src="resources/img/chevron-right.png" alt="chevron-right">
                                    </span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <!-- Indicators -->
                            <ol class="carousel-indicators thumbs visible-lg visible-md">
                                <% int count = 0; %>
                                <c:forEach items="${thumbImageList}" var="thumb">
                                    <li data-target="#carousel-custom" data-slide-to="<%=count++%>" class=""><img src="${contextPath}${thumb}" alt="Chevrolet Impala"></li>
                                </c:forEach>

                            </ol>
                        </div>
                    </div>
                    <!-- car detail slider end -->

                    <!-- Specifications start -->
                    <div class="sidebar sidebar-widget car-details-sidebar hidden-lg hidden-md">
                        <!-- Section heading -->
                        <div class="section-heading">
                            <div class="media">
                                <div class="media-left">
                                    <i class="flaticon-car"></i>
                                </div>
                                <div class="media-body">
                                    <h4>Car Specifications</h4>
                                    <p>Check the Real specifications</p>
                                </div>
                            </div>
                        </div>
                        <ul>
                            <li>
                                <span>Body Style:</span>Convertible
                            </li>
                            <li>
                                <span>Engine:</span>6.5L Mid-Engine V6
                            </li>
                            <li>
                                <span>Transmission:</span>8-speed Manual
                            </li>
                            <li>
                                <span>Drivetrain:</span>Rear Wheel Drive
                            </li>
                            <li>
                                <span>Exaterion:</span>Lime Gold Metallic
                            </li>
                            <li>
                                <span>Miles:</span>17
                            </li>
                            <li>
                                <span>Interior:</span>Agate Grey
                            </li>
                            <li>
                                <span>Miles:</span>17
                            </li>
                            <li>
                                <span>Passengers:</span>5
                            </li>
                            <li>
                                <span>Doors:</span>3
                            </li>
                            <li>
                                <span>Passengers:</span>5
                            </li>
                            <li>
                                <span>Vin #:</span>WP0AB2E81EK190171
                            </li>
                            <li>
                                <span>Fuel Mileage:</span>22 City / 29 Hwy
                            </li>
                            <li>
                                <span>Fuel Type:</span>Gasoline
                            </li>
                            <li>
                                <span>Vin #:</span>WP0AB2E81EK190171
                            </li>

                            <li>
                                <span>Condition:</span>Brand New
                            </li>
                            <li>
                                <span>Waeeanty:</span>6 Years Limited
                            </li>
                            <li>
                                <span>Owners:</span>N/A
                            </li>
                        </ul>
                    </div>
                    <!-- Specifications start -->

                    <!-- Panel box start -->
                    <div class="panel-box">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab" aria-expanded="true">General Information</a></li>
                            <li class=""><a href="#tab2default" data-toggle="tab" aria-expanded="false">Extra feature</a></li>
                            <li class=""><a href="#tab3default" data-toggle="tab" aria-expanded="false">Other Comments</a></li>
                            <li class=""><a href="#tab4default" data-toggle="tab" aria-expanded="false">video</a></li>
                        </ul>
                        <div class="panel with-nav-tabs panel-default">
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="tab1default">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam
                                            gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel,
                                            dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum.
                                            Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.</p>
                                        <p>Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut,
                                            lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis
                                            diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor,
                                            ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                        <p>Aliquam ultricies nunc porta metus interdum mollis. Donec porttitor libero augue, vehicula tincidunt lectus placerat
                                            a. Sed tincidunt dolor non sem dictum dignissim. Nulla vulputate orci felis, ac ornare purus ultricies a. Fusce euismod
                                            magna orci, sit amet aliquam turpis dignissim ac. In at tortor at ligula pharetra sollicitudin. Sed tincidunt, purus eget
                                            laoreet elementum, felis est pharetra ante, tincidunt feugiat libero enim sed risus.</p>
                                        <p>Sed at leo sit amet mi bibendum aliquam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent cursus varius
                                            odio, non faucibus dui. Nunc vehicula lectus sed velit suscipit aliquam vitae eu ipsum.
                                            adipiscing elit.</p>
                                    </div>
                                    <div class="tab-pane fade features" id="tab2default">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                                <ul class="extra-feature">
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Security System
                                                    </li>

                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Air Conditioning
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Alloy Wheels
                                                    </li>

                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Anti-Lock Brakes (ABS)
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Anti-Starter
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Dual Airbag
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                                <ul class="extra-feature">
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Intermittent Wipers
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Keyless Entry
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        power Mirrors
                                                    </li>

                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Power Seat
                                                    </li>

                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Power Steering
                                                    </li>

                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        CD Player
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                                <ul class="extra-feature">
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Driver Side Airbag
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Power Windows
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Remote Start
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        CD/DVD Autochanger
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>
                                                        Anti-theft Protection
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade technical" id="tab3default">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at
                                            sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel
                                            nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta.
                                            Morbi tincidunt viverra pharetra.

                                            Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna.
                                            Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam
                                        </p>
                                        <img src="img/car-engine.png" class="img-responsive" alt="car-engine">
                                    </div>
                                    <div class="tab-pane fade" id="tab4default">
                                        <div class="inside-car mrg-btm-30 ">
                                            <%--<iframe src="https://www.youtube.com/embed/m5_AKjDdqaU" style="height: 431.88px;"></iframe>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Panel box end -->

                    <!-- Car condition start -->
                    <div class="car-condition mrg-btm-30">
                        <h3 class="heading">
                            Specifications
                        </h3>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                <ul>
                                    <li>
                                        <i class="flaticon-car"></i>
                                        <span>Body Style:</span> Sedan
                                    </li>
                                    <li>
                                        <i class="flaticon-gas-pump"></i>
                                        <span>Fuel Type:</span> Diesel
                                    </li>
                                    <li>
                                        <i class="flaticon-road-with-broken-line"></i>
                                        <span>Mileage:</span> 40,200 KM
                                    </li>
                                    <li>
                                        <i class="flaticon-engine"></i>
                                        <span>Engine:</span> 3701
                                    </li>
                                    <li>
                                        <i class="flaticon-car-settings"></i>
                                        <span>Gear:</span> 6
                                    </li>
                                    <li>
                                        <i class="flaticon-dollar-symbol"></i>
                                        <span>CO2-Emissions:</span> Dollar 4
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                <ul>
                                    <li>
                                        <i class="flaticon-speedometer"></i>
                                        <span>Top Speed:</span> 260
                                    </li>
                                    <li>
                                        <i class="flaticon-automatic-flash-symbol"></i>
                                        <span>Transmission:</span> Automatic
                                    </li>
                                    <li>
                                        <i class="flaticon-transport"></i>
                                        <span>Drive Train:</span> Front Wheel
                                    </li>
                                    <li>
                                        <i class="flaticon-road-with-broken-line"></i>
                                        <span>Mileage:</span> 50,200 KM
                                    </li>
                                    <li>
                                        <i class="flaticon-annual"></i>
                                        <span>Year:</span>2017
                                    </li>
                                    <li>
                                        <i class="flaticon-paint-brush"></i>
                                        <span>Interior Color:</span> Black
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 amenities-box">
                                <ul>

                                    <li>
                                        <i class="flaticon-car-door"></i>
                                        <span>Doors:</span> 4
                                    </li>
                                    <li>
                                        <i class="flaticon-eco-energy-power"></i>
                                        <span>Horse Power:</span> 310
                                    </li>
                                    <li>

                                    </li>
                                    <li>
                                        <i class="flaticon-annual"></i>
                                        <span>Expire:</span> Jun 23, 2017
                                    </li>
                                    <li>
                                        <i class="flaticon-placeholder"></i>
                                        <span>Location:</span> Florisa, USA
                                    </li>
                                    <li>
                                        <i class="flaticon-paint-brush"></i>
                                        <span>Interior Color:</span> White
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Car condition end -->

                    <div class="clearfix"></div>

                    <!-- Similar Vehicles start -->
                    <div class="similar-vehicles">
                        <h3 class="heading">
                            Similar Vehicles
                        </h3>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 wow fadeInUp delay-03s">
                                <!-- Recent car box start -->
                                <div class="thumbnail car-box">
                                    <img src="img/car/car-6.jpg" alt="car-6" class="img-responsive">
                                    <!-- Detail -->
                                    <div class="caption detail">
                                        <!-- Header -->
                                        <header class="clearfix">
                                            <div class="pull-left">
                                                <h1 class="title">
                                                    <a href="car-details.html">Lexus GS F</a>
                                                </h1>
                                            </div>
                                            <!-- Price -->
                                            <div class="price">
                                                $49.000
                                            </div>
                                        </header>
                                        <!-- Ratings -->
                                        <div class="ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <!-- Location -->
                                        <h3 class="location">
                                            <a href="#">
                                                <i class="fa fa-map-marker"></i>20-21 Kathal St. Tampa City, FL
                                            </a>
                                        </h3>
                                        <!-- paragraph  -->
                                        <p>Lorem ipsum dolor sit amet, consectetu radipisi cing elitBeatae autem aperiam nequ quaera molestias voluptatibus harum ametipsa. molestias
                                            voluptatibus harum ametipsa.</p>
                                        <!-- btn -->
                                        <a href="car-details.html" class="btn button-sm button-theme">Details</a>
                                    </div>
                                    <!-- Tag -->
                                    <span class="tag-f">
                        <a href="car-details.html">Featured</a>
                    </span>
                                    <span class="tag-s">
                        <a href="car-details.html">For Sale</a>
                    </span>
                                </div>
                                <!-- Recent car box end -->
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 wow fadeInUp delay-03s">
                                <!-- car box start -->
                                <div class="thumbnail car-box">
                                    <img src="img/car/car-4.jpg" alt="car-4" class="img-responsive">
                                    <!-- Detail -->
                                    <div class="caption detail">
                                        <!-- Header -->
                                        <header class="clearfix">
                                            <div class="pull-left">
                                                <h1 class="title">
                                                    <a href="car-details.html">Audi q7 2017</a>
                                                </h1>
                                            </div>
                                            <!-- Price -->
                                            <div class="price">
                                                $49.000
                                            </div>
                                        </header>
                                        <!-- Ratings -->
                                        <div class="ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <!-- Location -->
                                        <h3 class="location">
                                            <a href="#">
                                                <i class="fa fa-map-marker"></i>20-21 Kathal St. Tampa City, FL
                                            </a>
                                        </h3>
                                        <!-- paragraph  -->
                                        <p>Lorem ipsum dolor sit amet, consectetu radipisi cing elitBeatae autem aperiam nequ quaera molestias voluptatibus harum ametipsa. molestias
                                            voluptatibus harum ametipsa.</p>
                                        <!-- btn -->
                                        <a href="car-details.html" class="btn button-sm button-theme">Details</a>
                                    </div>
                                    <!-- Tag -->
                                    <span class="tag-f">
                        <a href="car-details.html">Featured</a>
                    </span>
                                    <span class="tag-s">
                        <a href="car-details.html">For Sale</a>
                    </span>
                                </div>
                                <!-- car box end -->
                            </div>
                        </div>
                    </div>
                    <!-- Similar Vehicles end -->
                </div>

                <div class="clearfix">
                    <!-- comments start -->
                    <div class="car-comments mrg-btm-40">
                        <h3 class="heading">
                            Comments Section
                        </h3>
                        <ul class="comments">
                            <li>
                                <div class="comment">
                                    <div class="comment-author">
                                        <a href="#">
                                            <img src="img/avatar/avatar-5.png" alt="avatar-5">
                                        </a>
                                    </div>
                                    <div class="comment-content">
                                        <div class="comment-meta">
                                            <div class="comment-meta-author">
                                                Posted by <a href="#">admin</a>
                                            </div>
                                            <div class="comment-meta-reply">
                                                <a href="#">Reply</a>
                                            </div>
                                            <div class="comment-meta-date">
                                                <span class="hidden-xs">8:42 PM 3/3/2017</span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="comment-body">
                                            <div class="comment-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem
                                                vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla
                                                dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. </p>
                                        </div>
                                    </div>
                                </div>
                                <ul>
                                    <li>
                                        <div class="comment">
                                            <div class="comment-author">
                                                <a href="#">
                                                    <img src="img/avatar/avatar-5.png" alt="avatar-5">
                                                </a>
                                            </div>

                                            <div class="comment-content">
                                                <div class="comment-meta">
                                                    <div class="comment-meta-author">
                                                        Posted by <a href="#">admin</a>
                                                    </div>
                                                    <div class="comment-meta-reply">
                                                        <a href="#">Reply</a>
                                                    </div>
                                                    <div class="comment-meta-date">
                                                        <span class="hidden-xs">8:42 PM 3/3/2017</span>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="comment-body">
                                                    <div class="comment-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-half-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem
                                                        vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla
                                                        dui. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <div class="comment border-none">
                                    <div class="comment-author">
                                        <a href="#">
                                            <img src="img/avatar/avatar-5.png" alt="avatar-5">
                                        </a>
                                    </div>
                                    <div class="comment-content">
                                        <div class="comment-meta">
                                            <div class="comment-meta-author">
                                                Posted by <a href="#">admin</a>
                                            </div>
                                            <div class="comment-meta-reply">
                                                <a href="#">Reply</a>
                                            </div>
                                            <div class="comment-meta-date">
                                                <span class="hidden-xs">8:42 PM 3/3/2017</span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="comment-body">
                                            <div class="comment-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem
                                                vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla
                                                dui.<p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- comments end -->

                    <!-- Contact form start -->
                    <div class="contact-form">
                        <h2 class="heading">Contact with us</h2>
                        <form id="contact_form" action="https://storage.googleapis.com/themeforest-car-world/index.html" method="POST" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group fullname">
                                        <input type="text" name="full-name" class="input-text" placeholder="Full Name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group enter-email">
                                        <input type="email" name="email" class="input-text"  placeholder="Enter email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group subject">
                                        <input type="text" name="subject" class="input-text" placeholder="Subject">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group number">
                                        <input type="text" name="phone" class="input-text" placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group message">
                                        <textarea class="input-text" name="message" placeholder="Write message"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="form-group send-btn mrg-btn-0">
                                        <button type="submit" class="button-md button-theme">Send Message</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Contact form end -->
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="sidebar-right">
                    <!-- Specifications start -->
                    <div class="sidebar sidebar-widget car-details-sidebar hidden-xs hidden-sm">
                        <!-- Section heading -->
                        <div class="section-heading">
                            <div class="media">
                                <div class="media-left">
                                    <i class="flaticon-car"></i>
                                </div>
                                <div class="media-body">
                                    <h4>Car Specifications</h4>
                                    <p>Check the Real specifications</p>
                                </div>
                            </div>
                        </div>
                        <ul>
                            <li>
                                <span>Body Style:</span>Convertible
                            </li>
                            <li>
                                <span>Engine:</span>6.5L Mid-Engine V6
                            </li>
                            <li>
                                <span>Transmission:</span>8-speed Manual
                            </li>
                            <li>
                                <span>Drivetrain:</span>Rear Wheel Drive
                            </li>
                            <li>
                                <span>Exaterion:</span>Lime Gold Metallic
                            </li>
                            <li>
                                <span>Miles:</span>17
                            </li>
                            <li>
                                <span>Interior:</span>Agate Grey
                            </li>
                            <li>
                                <span>Miles:</span>17
                            </li>
                            <li>
                                <span>Passengers:</span>5
                            </li>
                            <li>
                                <span>Doors:</span>3
                            </li>
                            <li>
                                <span>Passengers:</span>5
                            </li>
                            <li>
                                <span>Vin #:</span>WP0AB2E81EK190171
                            </li>
                            <li>
                                <span>Fuel Mileage:</span>22 City / 29 Hwy
                            </li>
                            <li>
                                <span>Fuel Type:</span>Gasoline
                            </li>
                            <li>
                                <span>Vin #:</span>WP0AB2E81EK190171
                            </li>

                            <li>
                                <span>Condition:</span>Brand New
                            </li>
                            <li>
                                <span>Waeeanty:</span>6 Years Limited
                            </li>
                            <li>
                                <span>Owners:</span>N/A
                            </li>
                        </ul>
                    </div>
                    <!-- Specifications start -->

                    <!-- show more options box start -->
                    <div class="sidebar show-more-options-box sidebar-widget">
                        <a class="show-more-options" data-toggle="collapse" data-target="#options-content">
                            <i class="fa fa-plus-circle"></i> Show More Options
                        </a>
                    </div>
                    <!-- show more options box end -->

                    <!-- Options content start -->
                    <div id="options-content" class="sidebar sidebar-widget collapse">
                        <h3 class="title">Find your Car</h3>
                        <form>
                            <div class="form-group">
                                <input class="form-control search-fields" placeholder="Enter address e.g. street, city">
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Year</option>
                                    <option>2013</option>
                                    <option>2014</option>
                                    <option>2015</option>
                                    <option>2016</option>
                                    <option>2017</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Car Conditions</option>
                                    <option>All Conditions</option>
                                    <option>Brand New</option>
                                    <option>Slightly Used</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Body</option>
                                    <option>All Body Style</option>
                                    <option>2dr Car</option>
                                    <option>Convertile</option>
                                    <option>Sedan</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Model</option>
                                    <option>All Models</option>
                                    <option>Boxster</option>
                                    <option>Carrera</option>
                                    <option>Cayenne</option>
                                    <option>GT-R</option>
                                    <option>Macan</option>
                                    <option>Mazda6</option>
                                    <option>RLX</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Transmission</option>
                                    <option>Manual</option>
                                    <option>Automatic</option>
                                    <option>Tiptronic</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Interior Color</option>
                                    <option>Agate Grey</option>
                                    <option>Black</option>
                                    <option>Marsala Red</option>
                                    <option>Black</option>
                                    <option>Grey</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="selectpicker search-fields">
                                    <option>Fuel</option>
                                    <option>CNG</option>
                                    <option>Diesel</option>
                                    <option>Electric</option>
                                    <option>Ethanol-FFV</option>
                                    <option>Gasoline</option>
                                    <option>Hybrid-Electric</option>
                                </select>
                            </div>

                            <br>

                            <div class="range-slider">
                                <label>Price Range</label>
                                <div data-min="0" data-max="150000" data-unit="USD" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="form-group">
                                <button class="search-button">Search</button>
                            </div>
                        </form>
                    </div>
                    <!-- Options content end -->

                    <!-- Social media box start -->
                    <div class="sidebar blog-share social-media-box sidebar-widget ">
                        <h3 class="title">Social Media</h3>
                        <ul class="social-list">
                            <li>
                                <a href="#" class="facebook-bg">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="twitter-bg">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="google-bg">
                                    <i class="fa fa-google"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="linkedin-bg">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="pinterest-bg">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Social media box end -->

                    <div class="clearfix"></div>
                    <!-- Google map start -->
                    <div class="sidebar-widget sidebar location-section">
                        <h3 class="title">Location</h3>
                        <div class="map">
                            <div id="map" class="contact-map"></div>
                        </div>
                    </div>
                    <!-- Google map end -->

                    <!-- Helping center start -->
                    <div class="sidebar sidebar-widget helping-center">
                        <h3 class="title">Helping Center</h3>
                        <ul class="contact-link">
                            <li>
                                <i class="fa fa-map-marker"></i>
                                Aenean vulputate porttitor
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <a href="tel:+55-417-634-7071">
                                    +55 417 634 7071
                                </a>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <a href="mailto:support@carworld.com">
                                    support@carworld.com
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Helping center end -->

                    <!-- Message to dealer start -->
                    <div class="sidebar contact-form agent-widget">
                        <h3 class="title">
                            Message to Dealer
                        </h3>
                        <form id="agent_form" action="https://storage.googleapis.com/themeforest-car-world/index.html" method="POST" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group number">
                                        <input type="text" name="phone" class="input-text"  placeholder="Your Name">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group enter-email">
                                        <input type="email" name="email" class="input-text" placeholder="Your Email">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group message">
                                        <textarea class="input-text" name="message" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <button type="submit" class="button-md button-theme btn-block">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Message to dealer end -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Car details page end -->

<!-- Footer start -->
<footer class="main-footer clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 footer-item clearfix">
                <div class="footer-item-content">
                    <a href="index.html" class="footer-logo">
                        <img src="img/white-logo.png" alt="white-logo">
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

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0N5pbJN10Y1oYFRd0MJ_v2g8W2QT74JE"></script>
<script>
    function LoadMap(propertes) {
        var defaultLat = 40.7110411;
        var defaultLng = -74.0110326;
        var mapOptions = {
            center: new google.maps.LatLng(defaultLat, defaultLng),
            zoom: 15,
            scrollwheel: false,
            styles: [
                {
                    featureType: "administrative",
                    elementType: "labels",
                    stylers: [
                        {visibility: "off"}
                    ]
                },
                {
                    featureType: "water",
                    elementType: "labels",
                    stylers: [
                        {visibility: "off"}
                    ]
                },
                {
                    featureType: 'poi.business',
                    stylers: [{visibility: 'off'}]
                },
                {
                    featureType: 'transit',
                    elementType: 'labels.icon',
                    stylers: [{visibility: 'off'}]
                },
            ]
        };
        var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        var infoWindow = new google.maps.InfoWindow();
        var myLatlng = new google.maps.LatLng(40.7110411, -74.0110326);

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map
        });
        (function (marker) {
            google.maps.event.addListener(marker, "click", function (e) {
                infoWindow.setContent("" +
                        "<div class='map-car contact-map-content'>" +
                        "<div class='map-content'>" +
                        "<p class='address'>20-21 Kathal St. Tampa City, FL</p>" +
                        "<ul class='map-car-list'> " +
                        "<li><i class='fa fa-phone'></i>  +0477 8556 552</li> " +
                        "<li><i class='fa fa-envelope'></i>  sales@carworld.com</li> " +
                        "<li><a href='index.html'><i class='fa fa-globe'></i>  http://www.example.com</li></a> " +
                        "</ul>" +
                        "</div>" +
                        "</div>");
                infoWindow.open(map, marker);
            });
        })(marker);
    }
    LoadMap();
</script>

</body>

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/car-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:24 GMT -->
</html>