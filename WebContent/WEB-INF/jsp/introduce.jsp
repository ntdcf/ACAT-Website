<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>CAL简介</title>   
    <link rel="shortcut icon" href="images/favicon(3).ico"/>
    <link rel="bookmark" href="images/favicon(3).ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/Common.css"/>
    <link rel="stylesheet"  href="css/introduce.css"/>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navWidth">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand logo-pic" href="#"></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li class="dropdown active">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               协会简介<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li class="active"><a href="introduce.html">协会简介</a></li>
               <li><a href="Member.html">协会成员</a></li>
               <li><a href="Projection.html">协会作品</a></li>
            </ul>
                </li>
                <li><a href="Inform.html">最新动态</a></li>
          		<li ><a href="CALblog.html">协会博客</a></li>
                <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               更多<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li ><a href="Resource.html">资料</a></li>
            </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 内容 -->
<div id="con" style="padding: 10px">
    <!--简介-->
    <div id="con_intro_tit">
        <h1>协会简介<span>CAL Introduce</span></h1>
    </div>
    <!--左边-->
    <div  id="con_L"  >
        <div id="sm_nav" >
            <ul>
                <li  class=""><a href="" >协会简介</a></li>
                <li><a href="#Dir">发展方向</a></li>
            </ul>
        </div>
    </div>

    <!--右边-->
    <div id="logscontent">

    </div>
</div>

<!--js文件-->
<script src="js/introduce.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logscontent").load("textFile/introduce.txt");
	})
</script>
</body>
</html>