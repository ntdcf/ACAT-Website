<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <title>协会成员</title>
        <link rel="shortcut icon" href="images/favicon(3).ico"/>
        <link rel="bookmark" href="images/favicon(3).ico"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/Common.css"/>
        <link rel="stylesheet" href="css/Member.css">
        </head>
    <body>
     <!----------------------------第一部分--开始---------------------------->
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
         <li ><a href="index.html">首页</a></li>
         <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               协会简介<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li ><a href="introduce.html">协会简介</a></li>
               <li  class="active"><a href="#">协会成员</a></li>
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
          
      </ul>
   </div>
   </div>
</nav>
<!-- 头部结束 -->
<div class="content">
      <div class="banner">
          <div class="inner">
        <h1>成员 · 专题</h1>
        <p>Members and Topices</p>
       </div>
       ${root==null?null:"<button type='button' class='btn btn-default btn-lg active' id='addMember'>新增</button>"}</div>
           
            <div class="insert">
            <div class="topTitle">
              <h2 class="title">优秀协会成员</h2>
              </div>
              <div class="Box">
                <ul class="box-list" id="box-list">
                <c:forEach var="member" items="${member}">
                      <li class="current">
                        <!-- 照片 -->
                           <span class="banner_box" style="background-image:url(${member.pathpicture})">
                           </span>
                           <!-- 文字信息 -->
                           <div class="inner_mesg">
                                <div class="inner_class">${member.memberclass}
                                </div>
                                <div class="inner_name">${member.membername}
                                </div>
                                <div class="inner_position">${member.company}
                                </div>
                              </div> 
                    </li>
                 </c:forEach> 
                </ul>
              </div>
        </div> 
  <div class="section section-client">
      <!-- 屏幕小于768px -->
      <div class="container bottom">
        <div class="row">
          <div class="left-btn client-btn  col-xs-2 col-md-2 text-center " id="leftBtn"><span class="icon icon-left"></span>
          </div>
          <div class="middle text-center col-xs-8 col-md-8">
            <ul class="client-content" id="client-tab">
            <c:forEach var="member" items="${member}">
              <li class="tab">
                <div class="client-logo">
                  <span class="icon icon-first" style="background-image:url(${member.pathpicture})"></span>
                </div>
                <div class="client-comment">
                  <div class="comment-inner"><div class="comment-inner-inner">
                ${member.memberclass}
                 </div>
                </div></div>
                <div class="client-cxo">
                  <div class="name">${member.membername}</div>
                  <div class="leader">${member.company}</div>
                </div>
              </li>
              </c:forEach>
              </ul>
          </div>
          <div class="right-btn client-btn col-xs-2  col-md-2 text-center " id="rightBtn"><span><span class="icon icon-right"></span></span></div>
        </div>
      </div>
    </div>      
</div>
<!---------------第二部分 ----------------------------------------->
      <!-----------------尾部开始------------>

<!-- -------------------------------点击新增，出现弹框 ---------------------------------->
<form class="m-layer z-show" name="get_info" id="z-show"  action="UpdateMemberSuccess" method="post" enctype="multipart/form-data"><table><tbody><tr><td>
    <article class="lywrap" id="layer">
      <header class="lytt"><h2 class="u-tt">加入成员</h2><span class="lyclose" id="lyclose">×</span></header>
      <section class="lyct">
          <div class="info-text">
              <ul>
              <li><span>姓名</span><input type="text" class="inputext" name="membername" value="" placeholder=""></li>
              <li><span>班级</span><input type="text" class="inputext" name="memberclass" value="" placeholder=""></li> 
              <li><span>就业</span><input type="text"class="inputext" name="Company" value="" placeholder=""></li>
              </ul>
          </div>
           
                  
                  <input type="file" name="image"/>
          
      </section>
      <footer class="lybt">
          
          <div class="lybtns">
              <input type="submit" class="u-btn" value="确定"/>
              <input type="reset" class="u-btn u-btn-c4" value="重置"/>
          </div>
      </footer>
    </article></td></tr></tbody></table>
</form>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/Member.js"></script>
<script type="text/javascript" src="js/backTop.js"></script>
    </body>
</html>