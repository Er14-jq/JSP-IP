<%@ page import="indi.cyd.InformationPortal.dao.Account" %><%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/18
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Politics Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css">
    <!-- Custom Theme files -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery.min.js"> </script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <!--/script-->
    <link href='http://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
</head>
<body>
<script src="js/ajax1.js"></script>
<div class="header" id="home">
    <div class="content white">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <!--	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>-->
                    <a class="navbar-brand" href="index.jsp">河海大学实验中心</a>
                </div>
                <!--/.navbar-header-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">首页</a></li>
                        <li><a href="exp_teach.jsp">实验教学</a></li>
                        <li><a href="man_mode.jsp">中心概况</a></li>
                        <li><a href="exp_envir.jsp">设备环境</a></li>
                        <li><a href="award_show.jsp">成果展示</a></li>
                        <li><a href="exp_team.jsp">实验队伍</a></li>
                    </ul>
                    <div class="social-icons">
                        <ul>
                            <%
                                request.setCharacterEncoding("UTF-8");
                                if (request.getSession(true).getAttribute("Account") == null) {
                            %>

                            <li><a href="login.jsp" class="	"> 登录</a></li>/
                            <li><a href="register.jsp" class=""> 注册</a></li>


                            <%
                            } else {
                                 Account acc = (Account) request.getSession().getAttribute("Account");
                            %>

                            <li><a> <%=acc.getName()%> </a></li>
                            <li><a href="manage.jsp" class="	">账户 </a></li>/
                            <li><a href="" onclick="logout()" class=""> 注销</a></li>

                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>
                <!--/.navbar-collapse-->
                <!--/.navbar-->
            </div>
        </nav>
    </div>
</div>
<!--/start-banner-->
<div class="banner">
    <div class="container">
        <div class="banner-inner">
            <div class="callbacks_container">
                <ul class="rslides callbacks callbacks1" id="slider4">
                    <li class="callbacks1_on" style="display: block; float: left; position: relative; opacity: 1; z-index: 2; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <!---<h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>--->
                            <img align="center" src="images/i2.jpg" width="500"/>
                            <!---<p>阿巴阿巴阿巴阿巴</p>--->
                        </div>
                    </li>
                    <li class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <!---<h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>--->
                            <img align="center" src="images/i1.jpg" width="500"/>
                            <!---<p>阿巴阿巴阿巴阿巴</p>--->
                        </div>
                    </li>
                    <li class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <!---<h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>--->
                            <img align="center" src="images/i3.jpg" width="500"/>
                            <!---<p>阿巴阿巴阿巴阿巴</p>--->
                        </div>
                    </li>
                </ul>
            </div>
            <!--banner-Slider-->
            <script src="js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider4").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav:false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
        </div>
    </div>
</div>
<!--//end-banner-->
<!--/start-main-->
<div class="main-content">
    <div class="container">
        <div class="mag-inner">
            <div class="col-md-8 mag-innert-left jghdl">
                <div class="issues">
                    <h3><a href="man_mode.jsp">河海大学教学实验中心</a></h3>
                    <p>
                        河海大学实验中心依托河海大学的教学、科研资源进行建设，由土工合成材料检测室、地基处理与工程结构检测室、工程材料检测室、岩土工程参数检测室、海洋动力参数检测室及质检办公室组成。
                    </p>
                    <p>
                        近年来，河海大学实验中心面向全国水利、建筑、交通以及环境各行业承接检测项目，积极参与土工合成材料、建筑材料等新产品的研究与开发，在三峡、南水北调、小浪底、长江口航道治理、淮河入海水道、二滩、溪洛渡、龙滩等重大水利、水电工程项目；南京地铁、南京长江二桥、沪宁高速公路、广东汕汾高速公路、润扬长江大桥等重大交通工程建设项目中承接科研及检测任务，为国家建设作出了应有的贡献。
                    </p>
                </div>
                <!--/start-Technology-->
                <div class="technology">
                    <h2 class="tittle"><i class="glyphicon glyphicon-hand-right" aria-hidden="true"></i>头条新闻</h2>
                    <div class="col-md-6 tech-img">
                        <img src="images/i3.jpg" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-6 tech-text">
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/exp_team/sjr.jpeg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two">
                                    <a href="getarticle.jsp?article_id=1589965845769">
                                        祝贺我院学生在国际大学生程序设计竞赛亚洲区决赛中再获佳绩
                                    </a>
                                </h5>
                                <div class="td-post-date two">2019-ICPC EC-Final</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/exp_team/shenyang.jpeg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two">
                                    <a href="getarticle.jsp?article_id=1589971401957">
                                        祝贺计信院学生在国际大学生程序设计竞赛亚洲区域赛（徐州站）中再获佳绩
                                    </a>
                                </h5>
                                <div class="td-post-date two">2019-ICPC</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!--//end-Technology-->
                <div class="gallery">
                    <div class="main-title-head">
                        <h3 class="tittle"><i class="glyphicon glyphicon-picture"></i>成果展示</h3>
                    </div>
                    <div class="gallery-images">
                        <div class="course_demo1">
                            <ul id="flexiselDemo1">
                                <li>
                                    <a href="award_show.jsp"><img src="images/awards/i1.jpeg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="award_show.jsp"><img src="images/awards/i2.jpeg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="award_show.jsp"><img src="images/awards/i3.jpeg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="award_show.jsp"><img src="images/awards/i4.jpeg" alt="" /></a>
                                </li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $(window).load(function() {
                                $("#flexiselDemo1").flexisel({
                                    visibleItems: 3,
                                    animationSpeed: 1000,
                                    autoPlay: true,
                                    autoPlaySpeed: 3000,
                                    pauseOnHover: true,
                                    enableResponsiveBreakpoints: true,
                                    responsiveBreakpoints: {
                                        portrait: {
                                            changePoint:480,
                                            visibleItems: 2
                                        },
                                        landscape: {
                                            changePoint:640,
                                            visibleItems: 2
                                        },
                                        tablet: {
                                            changePoint:768,
                                            visibleItems: 3
                                        }
                                    }
                                });

                            });
                        </script>
                        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                    </div>
                    <a class="more" href="award_show.jsp">更多  +</a>
                </div>
            </div>
                <jsp:include page="right_navigator.jsp"></jsp:include>
            <div class="clearfix"></div>
        </div>
        <!--//end-mag-inner-->
        <!--/mag-bottom-->
        <div class="mag-bottom">
            <h3 class="tittle bottom"><i class="glyphicon glyphicon-globe"></i>通知公告</h3>
            <div class="grid">
                <div class="col-md-4 m-b">
                    <figure class="effect-layla">
                        <a href="getarticle.jsp?article_id=1589983284783"><img src="images/hhuxh.jpg" alt="img25"/></a>
                        <figcaption>
                            <h4>网站试运行<span>欢迎使用</span></h4>
                        </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="getarticle.jsp?article_id=1589983284783" class="wd">网站试运行</a>
                        <p>欢迎使用</p>
                        <a class="read" href="getarticle.jsp?article_id=1589983284783"> 更多</a>
                    </div>
                </div>
                <div class="col-md-4 m-b">
                    <figure class="effect-layla">
                        <a href="exp_envir.jsp"><img src="images/awards/hhugate.png" alt="img25"/></a>
                        <figcaption>
                            <h4>河海大学实验中心<span>中心简介</span></h4>
                        </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="getarticle.jsp?article_id=1589983727731" class="wd">河海大学实验中心</a>
                        <p>中心简介</p>
                        <a class="read" href="getarticle.jsp?article_id=1589983727731">更多</a>
                    </div>
                </div>
                <div class="col-md-4 m-b">
                    <figure class="effect-layla">
                        <a href="exp_envir.jsp"><img src="images/timg.jpg" alt="img25"/></a>
                        <figcaption>
                            <h4>河海大学天梯赛选拔赛暨ACM联训<span>选拔赛通知</span></h4>
                        </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="getarticle.jsp?article_id=1589980483937" class="wd">河海大学天梯赛选拔赛暨ACM联训</a>
                        <p>选拔赛通知</p>
                        <a class="read" href="getarticle.jsp?article_id=1589980483937"> 更多</a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--//mag-bottom-->
    </div>
</div>
</body>
</html>

