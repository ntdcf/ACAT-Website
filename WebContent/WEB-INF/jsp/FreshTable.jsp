<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
   <title>纳新信息</title>
   <link rel="shortcut icon" href="images/favicon(3).ico">
   <link rel="bookmark" href="images/favicon(3).ico"/>
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/Common.css">
   <link rel="stylesheet" href="css/FreshTable.css">
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
               <li ><a href="Projection.html">协会作品</a></li>
            </ul>
         </li>
          <li ><a href="Inform.html">最新动态</a></li>
           <li><a href="joinus.html">加入我们</a></li>
           <li class="active"><a href="#">纳新信息</a></li>
      </ul>
   </div>
   </div>
</nav>
<!------------------ 中间内容  -------------------------------->
<div class="content container">
    <div class="insert">
    <div class="Box">
    <div class="clearfix">
    <div class="title">报名统计信息</div> 
    <!--  <div class="sum">共计<span></span>人次</div> -->
    </div>   
    <div class="scroll">
        <table>
           <tr>
            <th>姓名</th>
            <th>学号</th>
            <th>联系电话</th>
            <th>专业班级</th>
            <th>选择方向</th>
            <th>QQ</th>
            <th>电子邮箱</th> 
        </tr>
        <c:forEach var="student" items="${student}">
                        <tr>
                            <td>${student.studentname}</td>
                            <td>${student.studentid}</td>
                            <td>${student.phonenumber}</td>
                            <td>${student.stuclass}</td>
                            <td>${student.major}</td>
                            <td>${student.qq}</td>
                            <td>${student.email}</td>
                        </tr>
                    </c:forEach>
        </table>
              </div>
        </div>       
      </div>
      </div> 
<!-----------------尾部开始------------>
 <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>         