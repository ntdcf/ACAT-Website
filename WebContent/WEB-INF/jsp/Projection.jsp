<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
   <title>协会作品</title>
   <link rel="shortcut icon" href="images/favicon(3).ico"/>
   <link rel="bookmark" href="images/favicon(3).ico"/>
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/Common.css">
   <link rel="stylesheet" href="css/Projction.css">
</head>
<body>
<!--------- 导航 ---------->
<nav class="navbar navbar-fixed-top navbar-default" role="navigation">
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
            <a class="navbar-brand logo-pic" href="index.html"></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               协会简介<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li ><a href="introduce.html">协会简介</a></li>
               <li ><a href="Member.html">协会成员</a></li>
               <li class="active"><a href="#">协会作品</a></li>
            </ul>
                </li>
                <li ><a href="Inform.html">最新动态</a></li>
                <li ><a href="CALblog.html">协会博客</a></li>
                 <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               更多<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li ><a href="Resource.html">资料</a></li>
            </ul>
               
            </ul>
        </div>
    </div>
</nav>
<!------------------ 中间内容  -------------------------------->
<div class="content">
<!-- 上部图片 -->
  <div class="banner" style="background-position: 50% 0px;">
       <div class="inner">
        <h1>作品 · 专题</h1>
        <p>Projectiones and Topices</p>
       </div>
        ${root==null?null:"<button type='button' class='btn btn-default btn-lg active' id='addMember'>新增</button>"}
    </div>
      <div class="container">
      <div class="title">协会最新作品</div>
        <div class="row" id="project">
        <c:forEach items="${projectionModelList}" var="projectionModelList">
        <div class="col-xs-12 col-md-6 col-lg-6">
         <div class="project project1">
          <img src="${projectionModelList.workpicture}" height="494" width="1506">
           <div class="tab">
           <h2>${projectionModelList.workname}</h2>
           <p>${projectionModelList.workstudent}</p>
           <p>${projectionModelList.introduction}
          </p>
          </div>
        </div></div>
        </c:forEach>
      </div>
      </div>
</div >
<!-----------------尾部开始------------>
<!-- -------------------------------点击新增，出现弹框 ---------------------------------->
<form class="m-layer z-show" name="get_info" id="z-show"  action="ProjectSuccess" method="post" enctype="multipart/form-data"><table><tbody><tr><td>
    <article class="lywrap" id="layer">
      <header class="lytt"><h2 class="u-tt">上传项目</h2><span class="lyclose" id="lyclose">×</span></header>
      <section class="lyct">
          <div class="info-text" id="info-text">
              <ul>
              <li><span>名称</span><input type="text" class="inputext" name="workname" value="" placeholder=""></li>
              <li><span>成员</span><input type="text" class="inputext" name="workstudent" value="" placeholder=""></li>
              <li><span>概述</span><textarea class="inputext" name="introduction" placeholder=""></textarea>
              </ul>
          </div>
          <input type="file" name="image"/>
          
      </section>
      <footer class="lybt">
          
          <div class="lybtns">
              <input type="submit" class="u-btn" id="bt1" value="确定"/>
              <input type="reset" class="u-btn u-btn-c4" value="重置"/>
          </div>
      </footer>
    </article></td></tr></tbody></table>
</form>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/Projection.js"></script>
<script type="text/javascript" src="js/backTop.js"></script>
</body>
</html>         