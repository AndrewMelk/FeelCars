<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta username="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta username="description" content="">
    <meta username="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/new_design/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/new_design/css/simple-sidebar.css" rel="stylesheet">
    <link href="/resources/new_design/css/custom_scroll.css" rel="stylesheet">
    <link href="/resources/new_design/css/rows.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Start Bootstrap
                    </a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="#">Shortcuts</a>
                </li>
                <li>
                    <a href="#">Overview</a>
                </li>
                <li>
                    <a href="#">Events</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button class="btn btn-default" id="menu-toggle">Toggle Menu</button>
            <div class="container-fluid">
                <c:forEach var="car" items="${carList}">
                    <div class="row">
                        <div class="col-lg-12">
                           <div class="image-container">
                               <a href="/show_details?id=${car.id}" class="image"><img src=${car.generalImage}  data-position="center" /></a>
                           </div>
                           <div class="description">
                               <h2>${car.mark} ${car.model} (${car.carYear})</h2>
                               <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
                               <li><a href="/show_details?${car.id}" class="button">Learn more</a></li>
                           </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/new_design/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/new_design/js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

<script>
    $(document).ready(function () {
        if (!$.browser.webkit) {
            $('.wrapper').html('<p>Sorry! Non webkit users. :(</p>');
        }
    });
</script>

</body>

</html>
