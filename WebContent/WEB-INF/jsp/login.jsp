<%--
  Created by IntelliJ IDEA.
  User: Summer7C
  Date: 2015/10/14
  Time: 下午 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <title>管理员登录</title>
  <link rel="shortcut icon" href="images/favicon(3).ico"/>
   <link rel="bookmark" href="images/favicon(3).ico"/>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/Common.css">
  <link rel="stylesheet" href="css/login.css">
</head>
<body>
<!--------- 导航 ---------->
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
      <!------------- logo ------------------>
      <a class="navbar-brand logo-pic" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav">
        <li ><a href="index.html">首页</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            协会简介<b class="caret"></b>
          </a>
          <ul class="dropdown-menu">
            <li ><a href="introduce.html">协会简介</a></li>
            <li ><a href="Member.html">协会成员</a></li>
            <li  class="active"><a href="#">协会作品</a></li>
          </ul>
        </li>
        <li><a href="Inform.html">最新动态</a></li>
        <li><a href="joinus.html">加入我们</a></li>
        <li><a href="FreshTable.html">纳新信息</a></li>
      </ul>
    </div>
  </div>
</nav>
<!------------------ 中间内容  -------------------------------->
<div class="content">
  <!----------------------------- 登陆框 ---------------------->
  <div class="main">
    <!----------- 插入logo---------->
    <a href="#" id="logo"></a>
    <div id="tips">
      <div class="hline fl">
      </div>
      <div class="msg2 fl">欢迎管理员登录</div>
      <div class="hline fr">
      </div>
    </div>
    <div class="inputer">
      <form action="FreshTable.html" method="post">
      <input class="inputext" type="text" name="UserName"  id="UserName" placeholder="用户名" onkeydown="if(event.keyCode==13) event.keyCode=9">
      <input class="inputext" type="password" name="Password" id="Password" placeholder="密码">
      <input type="submit" id="submitbtn" value="登录"/>
      </form>
    </div>
    <div class="BackIndex">
      <a href="index.html" >&raquo;返回首页</a>
    </div>
  </div>
</div >
<!-----------------尾部开始------------>
<div class="footer">
  <div class="footer-warp">
    <ul class="row">
      <li class="col-md-2 col-xs-4"><a>关于协会</a></li>
      <li class="col-md-2 col-xs-4"><a>服务条款</a></li>
      <li class="col-md-2 col-xs-4"><a>协会作品</a></li>
      <li class="col-md-2 col-xs-4"><a>协会纳新</a></li>
      <li class="col-md-2 col-xs-4"><a>协会成员</a></li>
      <li class="col-md-2 col-xs-4"><a>客服中心</a></li>
    </ul>
  </div>
</div>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
