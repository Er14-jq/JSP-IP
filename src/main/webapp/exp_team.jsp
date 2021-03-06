<%@ page import="indi.cyd.InformationPortal.dao.Account" %><%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/19
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>实验队伍</title>
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
<body><script src="js/ajax1.js"></script>
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
                        <li><a href="index.jsp">首页</a></li>
                        <li><a href="exp_teach.jsp">实验教学</a></li>
                        <li><a href="man_mode.jsp">中心概况</a></li>
                        <li><a href="exp_envir.jsp">设备环境</a></li>
                        <li><a href="award_show.jsp">成果展示</a></li>
                        <li class="active"><a href="exp_team.jsp">实验队伍</a></li>
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
<div class="banner1">
    <div class="container">
    </div>
</div>
<!--//end-banner-->
<!-- about -->
<div class="about">
    <div class="container">
        <div class="about-grids">
            <div class="col-md-8 about-grid-left">
                <div class="history">
                    <h3>队伍简介</h3>
                    <img src="images/exp_team/i1.jpeg" alt=" " class="img-responsive" />
                    <p>
                        <br>河海大学勤学楼4114号实验室由一群贼爱吃KFC，打LOL和偶尔CF以及参加acm比赛或补题度日的好学生。
                        <br><br>（图为17级同学参加JSCPC获奖现场）
                    </p>
                </div>
                <div class="philosophy">
                    <h3>指导教师</h3>
                    <div class="philosophy-grids">
                        <div class="col-md-4 philosophy-grid-left">
                            <img src="images/people/ip1.png" alt=" " class="img-responsive" />
                        </div>
                        <div class="col-md-8 philosophy-grid-right">
                            <h4>张雪洁教练</h4>
                            <p>经常会和学生交流，指导学生参加各类竞赛。<br>是一位平易近人，为学生着想的好老师</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="philosophy-grids">
                        <div class="col-md-4 philosophy-grid-left">
                            <img src="images/p33.jpg" alt=" " class="img-responsive" />
                        </div>
                        <div class="col-md-8 philosophy-grid-right">
                            <h4>朱云教练</h4>
                            <p>负责组织学生训练，参加比赛。调动同学们学习与参加比赛的积极性。<br>是一位为学生着想的好老师。</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="gallery phi-bottom">
                        <h3 class="tittle">队伍合影</h3>
                        <div class="gallery-images">
                            <div class="course_demo1">
                                <ul id="flexiselDemo1">
                                    <li>
                                        <a href="exp_envir.jsp"><img src="images/exp_team/hjy.jpeg" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="exp_envir.jsp"><img src="images/exp_team/zyc.jpeg" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="exp_envir.jsp"><img src="images/exp_team/sjr.jpeg" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="exp_envir.jsp"><img src="images/people/i9.jpeg" alt="" /></a>
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
                        <a class="more" href="exp_envir.jsp">更多</a>
                    </div>
                </div>
            </div>
            <jsp:include page="right_navigator.jsp"></jsp:include>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>

</body>
</html>
