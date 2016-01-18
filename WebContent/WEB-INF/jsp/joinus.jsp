<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>CAL纳新</title>
    <link rel="shortcut icon" href="images/favicon(3).ico"/>
   <link rel="bookmark" href="images/favicon(3).ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/Common.css"/>
    <link rel="stylesheet" href="css/joinus.css"/>
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
           <a class="navbar-brand logo-pic" href="indx.html"></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li class="dropdown">
                     <a href="introduce.html" class="dropdown-toggle" data-toggle="dropdown">
               协会简介<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li ><a href="introduce.html">协会简介</a></li>
               <li ><a href="Member.html">协会成员</a></li>
               <li  ><a href="Projection.html">协会作品</a></li>
            </ul>
                </li>
                <li><a href="Inform.html">最新动态</a></li>
                <li class="active"><a href="#">加入我们</a></li>
                <li><a href="FreshTable.html">纳新信息</a></li>
            </ul>
        </div>
    </div>
</nav>
    <div id="Ifo" class="col-sm-12">
        <form class="form-horizontal " action=" " method="post"  >
            <h1 style="border-bottom: 1px solid #000 ;padding-bottom:10px;margin-bottom:15px;">报名信息</h1>
            <!--<hr style="background:#000;height:1px;margin :10px auto " class="visible-lg"/>-->
            <div class="form-group">
                <label for="name" class="col-xs-2 control-label">姓名:</label>
                <div class="col-xs-6 ">
                    <input type="text" class="form-control" id="name"  name="name" placeholder="* name" onblur="check_Name()">
                    <span id="spanName"> </span>
                </div>
            </div>
            <div class="form-group">
                <label for="id" class="col-xs-2 control-label">学号:</label>
                <div class="col-xs-6">
                    <input type="text" class="form-control" id="id" name="student" onblur="check_Id()" placeholder="* ID">
                    <span id="spanId"> </span>
                </div>
            </div>
            <div class="form-group">
                <label   class="col-xs-2 control-label">性别:</label>
                <div class="col-xs-6">
                    <div class="radio-inline">
                        <label>
                            <input type="radio" name="sex" id="man" value="男" checked>
                            男
                        </label>
                    </div>
                    <div class="radio-inline">
                        <label>
                            <input type="radio" name="sex" id="woman" value="女">
                            女
                        </label>
                    </div>
                 </div>
            </div>
            <div class="form-group">
                <label for="class" class="col-xs-2 control-label">专业班级:</label>
                <div class="col-xs-6">
                    <input type="text" class="form-control" id="class" name="StudentClass" placeholder="class">
                </div>
            </div>
            <div class="form-group">
                <label for="tel" class="col-xs-2 control-label">联系电话:</label>
                <div class="col-xs-6">
                    <input type="text" class="form-control" onblur="check_Tel()" id="tel" name="phonenumber" placeholder="* Tel">
                    <span id="spanTel"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="QQ" class="col-xs-2 control-label">QQ:</label>
                <div class="col-xs-6">
                    <input type="text" class="form-control" id="QQ" name="QQ" placeholder="QQ">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-xs-2 control-label">电子邮箱:</label>
                <div class="col-xs-6">
                    <input type="text" class="form-control" onblur="check_Email()" id="email" name="email" placeholder="* Email">
                    <span id="spanEmail"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="major" class="col-xs-2 control-label">方向选择:</label>
                <div class="col-xs-6">
                    <select id="major" name="major" class="form-control">
                        <option>WEB前端</option>
                        <option>JAVA</option>
                        <option>PHP</option>
                    </select>
                </div>
            </div>
            <div class="form-group ">
                <label for="idea" class="col-xs-2 control-label">报名理由:</label>
                <div class="col-xs-6">
                    <textarea name="idea" id="idea" placeholder="报名理由" cols="40" rows="5" ></textarea>

                     </div>
            </div>
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-8">
                   <!-- <button type="submit" class="btn btn-primary btn-lg " id="subBtn">提交</button>-->
                    <button type="submit"  onclick="check_All()" class="btn btn-primary btn-lg Btn">提交</button>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" class="btn btn-primary btn-lg Btn">重置</button>
                </div>
            </div>
        </form>
    </div>
    </div>
<!-----------------尾部开始------------>
<!-- <footer class="footer">
   <div class="footer-warp">
            <ul class="row">
                <li class="col-md-2 col-xs-4"><a>关于协会</a></li>
                <li class="col-md-2 col-xs-4"><a>服务条款</a></li>
                <li class="col-md-2 col-xs-4"><a>协会成品</a></li>
                <li class="col-md-2 col-xs-4"><a>协会纳新</a></li>
                <li class="col-md-2 col-xs-4"><a>协会成员</a></li>
                <li class="col-md-2 col-xs-4"><a>客服中心</a></li>
            </ul>
   </div>
</footer> -->
 <script  src="js/joinus.js" charset="utf-8"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>