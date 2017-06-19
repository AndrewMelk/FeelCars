<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:12 GMT -->
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

<body class="form-page-body">

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

     <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Form content box start -->
                <div class="form-content-box">
                    <!-- header -->
                    <div class="header">
                        <!-- Logo -->
                        <a href="index.html">
                            <img src="resources/img/white-logo.png"  alt="white-logo">
                        </a>
                    </div>
                    <!-- details -->
                    <div class="details">
                        <!-- Name -->
                        <h3>Login</h3>
                        <!-- Divider -->
                        <div class="divider">
                            <span class="or-text">OR</span>
                        </div>
                        <!-- Form start -->
                        <form method="post" action="${contextPath}/login">
                            <div class="form-group ${error != null ? 'has-error' : ''}">
                                <span>${message}</span>
                                    <div class="form-group">
                                        <input name="username" type="text" class="input-text" placeholder="Username"
                                               autofocus="true"/>
                                        <%--<input type="email" name="email" class="input-text" placeholder="Email Address">--%>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="input-text" placeholder="Password">
                                        <span>${error}</span>
                                    </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </div>
                            <div class="checkbox">
                                <div class="ez-checkbox pull-left">
                                    <label>
                                        <input type="checkbox" class="ez-hide">
                                        Remember me
                                    </label>
                                </div>
                                <a href="resources/forgot-password.html" class="link-not-important pull-right">Forgot Password</a>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="button-md button-theme btn-block">login</button>
                             </div>
                        </form>
                         <!-- Form end -->
                    </div>
                    <!-- Footer -->
                    <div class="footer">
                        <span>
                            New to Car World ? <a href="${contextPath}/registration">Sign up now</a>
                        </span>
                    </div>
                 </div>
                <!-- Form content box end -->
            </div>
        </div>
     </div>

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


</body>

<!-- Mirrored from storage.googleapis.com/themeforest-car-world/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Jun 2017 12:03:12 GMT -->
</html>