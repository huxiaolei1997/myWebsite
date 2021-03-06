<%--
  Created by IntelliJ IDEA.
  User: Mystery
  Date: 2018/5/19
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>About Me</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="static/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="static/css/animate.css" rel="stylesheet">
    <link href="static/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

    <!-- THEME STYLES -->
    <link href="static/css/layout.min.css" rel="stylesheet" type="text/css"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<!-- BODY -->
<body>

<!--========== HEADER ==========-->
<header class="header">
    <!-- Navbar -->
    <nav class="navbar navbar-fixed-top navbar-opacity" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="menu-container">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>

                <!-- Logo -->
                <div class="navbar-logo">
                    <a class="navbar-logo-wrap" href="index.html">
                        <img class="navbar-logo-img" src="static/img/logo.png" alt="Acidus Logo">
                    </a>
                </div>
                <!-- End Logo -->
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-collapse">
                <div class="menu-container">
                    <ul class="navbar-nav navbar-nav-right">
                        <!-- Home -->
                        <li class="nav-item">
                            <a class="nav-item-child" href="index.html">
                                Home
                            </a>
                        </li>
                        <!-- End Home -->

                        <!-- About -->
                        <li class="nav-item">
                            <a class="nav-item-child active" href="about.html">
                                About
                            </a>
                        </li>
                        <!-- End About -->

                        <!-- Work -->
                        <li class="nav-item">
                            <a class="nav-item-child" href="work.html">
                                Blog
                            </a>
                        </li>
                        <!-- End Work -->

                        <!-- Contact -->
                        <li class="nav-item">
                            <a class="nav-item-child" href="contact.html">
                                Contact
                            </a>
                        </li>
                        <!-- End Contact -->
                    </ul>
                </div>
            </div>
            <!-- End Navbar Collapse -->
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!--========== END HEADER ==========-->

<!--========== PAGE LAYOUT ==========-->
<!-- Slider -->
<div class="bg-color-sky-light">
    <div class="content-md container">
        <img class="img-responsive" src="static/img/1920x1080/02.jpg" alt="Slider Image">
    </div>
</div>
<!-- End Slider -->

<!-- About -->
<div class="content-md container">
    <div class="row margin-b-20">
        <div class="col-sm-6">
            <h2>About Me</h2>
        </div>
    </div>
    <!--// end row -->

    <div class="row">
        <div class="col-sm-7 sm-margin-b-50">
            <div class="margin-b-30">
                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enimet minim veniam magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret tempor incididunt dolore magna consequat siad minim aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>
        </div>
        <div class="col-sm-4 col-sm-offset-1">
            <img class="img-responsive" src="static/img/640x380/01.jpg" alt="Our Office">
        </div>
    </div>
    <!--// end row -->
</div>
<!-- End About -->
<!--========== END PAGE LAYOUT ==========-->

<!--========== FOOTER ==========-->
<footer class="footer">
    <!-- Links -->
    <div class="section-seperator">
        <div class="content-md container">
            <div class="row">
                <div class="col-sm-2 sm-margin-b-30">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item"><a href="#">Home</a></li>
                        <li class="footer-list-item"><a href="#">About</a></li>
                        <li class="footer-list-item"><a href="#">Work</a></li>
                        <li class="footer-list-item"><a href="#">Contact</a></li>
                    </ul>
                    <!-- End List -->
                </div>
                <div class="col-sm-2 sm-margin-b-30">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item"><a href="#">Twitter</a></li>
                        <li class="footer-list-item"><a href="#">Facebook</a></li>
                        <li class="footer-list-item"><a href="#">Instagram</a></li>
                        <li class="footer-list-item"><a href="#">YouTube</a></li>
                    </ul>
                    <!-- End List -->
                </div>
                <div class="col-sm-3">
                    <!-- List -->
                    <ul class="list-unstyled footer-list">
                        <li class="footer-list-item"><a href="#">Subscribe to Our Newsletter</a></li>
                        <li class="footer-list-item"><a href="#">Privacy Policy</a></li>
                        <li class="footer-list-item"><a href="#">Terms &amp; Conditions</a></li>
                    </ul>
                    <!-- End List -->
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Links -->

    <!-- Copyright -->
    <div class="content container">
        <div class="row">
            <div class="col-xs-6">
                <img class="footer-logo" src="static/img/logo.png" alt="Acidus Logo">
            </div>
            <div class="col-xs-6 text-right">
                <p class="margin-b-0"><a class="fweight-700" href="#preview/acidus/">Acidus</a> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            </div>
        </div>
        <!--// end row -->
    </div>
    <!-- End Copyright -->
</footer>
<!--========== END FOOTER ==========-->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="static/vendor/jquery.min.js" type="text/javascript"></script>
<script src="static/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="static/vendor/jquery.easing.js" type="text/javascript"></script>
<script src="static/vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="static/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="static/vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="static/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL SCRIPTS -->
<script src="static/js/layout.min.js" type="text/javascript"></script>
<script src="static/js/components/wow.min.js" type="text/javascript"></script>
<script src="static/js/components/swiper.min.js" type="text/javascript"></script>

</body>
<!-- END BODY -->
</html>
