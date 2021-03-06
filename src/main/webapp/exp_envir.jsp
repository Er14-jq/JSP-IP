<%@ page import="indi.cyd.InformationPortal.dao.Account" %><%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/19
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>设备环境</title>
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
                        <li class="active"><a href="exp_envir.jsp">设备环境</a></li>
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
<div class="banner1">
    <div class="container">
    </div>
</div>
<!--//end-banner-->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="single-grids">
            <div class="col-md-8 mag-innert-left">
                <div class="banner-bottom-left-grids">
                    <div class="single-left-grid">
                        <h3>实验室环境</h3><br>
                        <img src="images/people/i3.jpeg" alt="" class="img-responsive" />
                        <!--<p class="text">现场照片</p>
                        				<div class="single-bottom">
                                            <ul>
                                                <li><a href="#">Parturient inspiration</a></li>
                                                <li>November 30 2020</li>
                                                <li><a href="#">Admin</a></li>
                                                <li><a href="#">5 Comments</a></li>
                                            </ul>
                                        </div>-->
                    </div>
                </div>
                <div class="post">
                    <a href="#"><h3>设备环境</h3></a>
                    <div class="post-grids">
                        <div class="col-md-3 post-left">
                            <a href="exp_envir.jsp"><img src="images/people/im3.png" width="100" alt=""></a>
                        </div>
                        <div class="col-md-9 post-right">
                            <h4><a href="exp_envir.jsp">我的桌面</a></h4>
                            <p class="text">经过精心搭配和制造，最终呈现出来双显示器的效果～～整洁的桌面～一看就是经过非凡桌面清理大师打理后的样子～～</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="post-grids">
                        <div class="col-md-3 post-left">
                            <a href="exp_envir.jsp"><img src="images/people/i4.jpeg" width="100" alt=""></a>
                        </div>
                        <div class="col-md-9 post-right">

                            <h4><a href="exp_envir.jsp">实验器材</a></h4>
                            <p class="text">看这个示波器，那必须是杠杠的啊</p>	</div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="post-grids">
                        <div class="col-md-3 post-left">
                            <a href="exp_envir.jsp"><img src="images/people/i5.jpeg" width="100" alt=""></a>
                        </div>
                        <div class="col-md-9 post-right">

                            <h4><a href="exp_envir.jsp">实验器材（二）</a></h4>
                            <p class="text">看这个电路板，那连线人的手艺也必须是杠杠的啊</p>	</div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="post-grids">
                        <div class="col-md-3 post-left">
                            <a href="exp_envir.jsp"><img src="images/people/i6.jpeg" width="100" alt=""></a>
                        </div>
                        <div class="col-md-9 post-right">

                            <h4><a href="exp_envir.jsp">专业书籍</a></h4>
                            <p class="text">这本巨厚无比的砖头书……曾经在赛场上救过我们的命（吗？）</p>	</div>
                        <div class="clearfix"> </div>
                    </div>
                    <!--leave-->
                    <!--<div class="leave">
                        <h4>Leave a comment</h4>
                        <form id="commentform">
                             <p class="comment-form-author-name"><label for="author">Name</label>
                                <input id="author" type="text" value="" size="30" aria-required="true">
                             </p>
                             <p class="comment-form-email">
                                <label class="email">Email</label>
                                <input id="email" type="text" value="" size="30" aria-required="true">
                             </p>
                             <p class="comment-form-comment">
                                <label class="comment">Comment</label>
                                <textarea></textarea>
                             </p>
                             <div class="clearfix"></div>
                            <p class="form-submit">
                               <input type="submit" id="submit" value="Send">
                            </p>
                            <div class="clearfix"></div>
                           </form>

                        </div>-->
                </div>
                <!--//leave-->
            </div>
            <jsp:include page="right_navigator.jsp"></jsp:include>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
</body>
</html>
