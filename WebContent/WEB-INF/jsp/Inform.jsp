<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <title>最新消息</title>
        <link rel="shortcut icon" href="images/favicon(3).ico"/>
        <link rel="bookmark" href="images/favicon(3).ico"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/Common.css"/>
        <link rel="stylesheet" href="css/inform.css">
        <!-- 文本编辑框的样式和JS -->
        <link rel="stylesheet" href="css/default.css" />
    <link rel="stylesheet" href="css/prettify.css" />
    <script charset="utf-8" src="js/kindeditor.js"></script>
    <script charset="utf-8" src="js/zh_CN.js"></script>
    <script charset="utf-8" src="js/prettify.js"></script>
    </head>
    <body>
     <!-----第一部分开始---->
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
               <li ><a href="Projection.html">协会作品</a></li>
            </ul>
                </li>
                <li  class="active"><a href="#">最新动态</a></li>
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
        <!-- 主要内容 -->
        <div class="content" id="page">
            <div class="banner">
                <div class="inner">
                  <h1>消息 · 专题</h1>
                  <p>Informationes and Topices</p>
                </div>
            </div>
            <div class="container">
            		${root==null?null:"<button type='button' class='btn btn-default btn-lg active' id='addMember'>新增</button>"}</div>
                  
                  <div class="Textarea" id="Textarea">
                  
            <!-- 加载编辑器的容器 -->

            <script>
                KindEditor.ready(function(K) {
                    var editor1 = K.create('textarea[name="content1"]', {
                        cssPath : 'css/prettify.css',
                        uploadJson : '../jsp/upload_json.jsp',
                        fileManagerJson : '../jsp/file_manager_json.jsp',
                        allowFileManager : true,
                        afterCreate : function() {
                            var self = this;
                            K.ctrl(document, 13, function() {
                                self.sync();
                                document.forms['example'].submit();
                            });
                            K.ctrl(self.edit.doc, 13, function() {
                                self.sync();
                                document.forms['example'].submit();
                            });
                        }
                    });
                    prettyPrint();
                });
            </script>
            <form name="example" method="post" action="AddNoticeSuccess" class="textform">
                题目：<input type="text" name="NoticeTitle"/><br/>
                <textarea name="content1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea>
                <br />
                    <div class="nav2" id="btns">
                        <input type="submit" class="btn btn-primary" id="submit" value="提交">
                        <button type="button" class="btn btn-default"id="cancel">取消</button>
                    </div>
                    </form>
                  </div>
                <!-------------- 点击新增效果完---------->
              <div class="border" id="border"></div>
              <div class="Box" id="MsgShow">
			<c:forEach items="${NoticeList}" var="NoticeList">
          <div class="box-style">
                      <div class="record clearfix">
                         <div class="time">
                            ${NoticeList.time}
                         </div>
                        <div class="signal"><div class="pot"></div></div>
                        <div class="record-text">
                          <a class="subject">☆${NoticeList.noticeTitle}</a>
                          <span class="spanText" style="display:none;">${NoticeList.content1}
                          </span>
                        </div>
                      </div>
                </div>
                </c:forEach>
            </div>   
        </div>
      </div>  
      <!-- ---------------------第二部分 ---------------------------------------->
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/backTop.js"></script>
        <script type="text/javascript" src="js/inform.js"></script>
    </body>
</html>