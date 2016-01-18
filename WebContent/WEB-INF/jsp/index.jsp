<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>CAL计算机应用技术协会官方网站</title>
    <link rel="shortcut icon" href="images/favicon(3).ico"/>
    <link rel="bookmark" href="images/favicon(3).ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>

</head>
<body>
<!--PC端-->
<div id="one">
    <div class="big" id="big">
        <!--大图左边-->
            <ul class="bigLeft col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <li><img src="images/left1.jpg" alt="business"/></li>
                <li><img src="images/left2.jpg" alt="business"/> </li>
                <li><img src="images/left3.jpg" alt="business"/> </li>

            </ul>
        <!--大图右边-->
            <ul class="bigRight col-md-6 col-sm-6 col-xs-6 col-lg-6">
                <li><img src="images/right1.jpg" alt="lifestyle"/></li>
                <li><img src="images/CloudComputing.png" alt="lifestyle"/> </li>
                <li><img src="images/right3.png" alt="lifestyle"/> </li>
            </ul>

    </div>
<!--中间小图-->
    <div class="smallContain ">
        <div class="dummy"></div>
        <div class="small col-md-5 " id="small"  >
            <ul>
                 <li style="display: block"><img src="images/logo.png" alt=""/></li>

            </ul>
        </div>

    </div>

<!--导航-->
    <div class="nav" id="nav">
        <img src="images/title.jpg" alt=""/>
        <div class="Nav">
            <ul>
                <li><a href="#"><img src="images/home.jpg" alt=""/>首页</a></li>
                <li><a href="introduce.html"><img src="images/introduce.jpg" alt=""/>协会简介</a></li>
                <li><a href="Inform.html"><img src="images/inform.jpg" alt=""/>最新动态</a></li>
                <li><a href="CALblog.html"><img src="images/blog.jpg" alt=""/>协会博客</a></li>
            </ul>
        </div>
    </div>
</div>
<!--移动端-->
<div class="pcBig" id="pc">
    <!--大图上边-->
    <ul class="pcBigLeft" >
        <li><img src="images/phone1.jpg" alt="business"/></li>
    </ul>
    <!--大图下边-->
    <ul class="pcBigRight">
        <li><img src="images/phone2.jpg" alt="lifestyle"/></li>
    </ul>

</div>
<!--中间小图-->
<div class="pcSmall" id="pcSmall">
    <ul>
         <li><img src="images/logo-sm.png" alt=""/></li>
    </ul>
</div>
<!--导航-->
<div class="pcNav" id="pcNav">
     <img src="images/title.jpg" alt=""/>
    <div class="pcNAv">
        <ul>
            <li class="pcNavOne"><a href="#">首页</a></li>
            <li><a href="introduce.html">协会简介</a></li>
            <li><a href="Inform.html">最新动态</a></li>
            <li><a href="CALblog.html">协会博客</a></li>
        </ul>
    </div>
</div>

</body>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/index.js"></script>
</html>