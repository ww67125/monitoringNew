<%--
  Created by IntelliJ IDEA.
  User: wangz
  Date: 2018/10/30
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel='stylesheet' href="css/bootstrap.css"/>
    <link rel='stylesheet' href="css/bootstrap-theme.css"/>


    <script type="text/javascript"
            src="js/bootstrap.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.3.1/jquery.min.js"></script>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <%--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>--%>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>
    <style>

    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid" style="background-color: rgba(50,105,245,0.42) ">
        <%-- <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                 <span class="sr-only">Toggle navigation</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
             </button>
             <a class="navbar-brand" href="#">Project name</a>
         </div>--%>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" style="color: #0f0f0f">账户名</a></li>
                <li><a href="#">设置</a></li>
                <li><a href="#">登出</a></li>
            </ul>
            <%--<form class="navbar-form navbar-right">--%>
            <%--<input type="text" class="form-control" placeholder="Search...">--%>
            <%--</form>--%>
        </div>
    </div>
</nav>
<div class="container-fluid" style="margin-top: -20px">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar" style="background-color: rgba(245,245,245,0.88)">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">查询数据</a></li>
                <%--<li><a href="#">业务对照</a></li>--%>
                <li><a href="#">用户管理</a></li>
                <%--<li><a href="#"></a></li>--%>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="margin-top: -80px">
            <h2 class="sub-header">检索</h2>
            <div class="row placeholders">
                <div class="col-lg-3">
                    <div class="input-group">
                          <span class="input-group-btn">
                            <label class="btn btn-default" type="button">检索项1</label>
                          </span>
                        <input type="text" class="form-control" placeholder="Search for...">
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-3">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                        <label class="btn btn-default" type="button">检索项2</label>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-3">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                        <label class="btn btn-default" type="button">检索项3</label>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                <div >
                    <div class="input-group">
                        <button class="btn btn-success" type="button">查询</button>
                    </div><!-- /input-group -->
                </div>
            </div>
            <h2 class="sub-header">操作</h2>
            <hr />
            <div>
                <button class="btn btn-info" type="button">全部下载</button>
            </div>
            <h2 class="sub-header">查询结果</h2>
            <hr />
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><input type="checkbox"> </th>
                        <th>文件名</th>
                        <th>文件内容</th>
                        <th>文件地址</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>测试.txt</td>
                        <td><textarea>1111111111111111111111111111111111</textarea></td>
                        <td>kkkasd/asda/dqqq/caaw/da</td>
                        <td><button class="btn btn-info" type="button">下载</button></td>
                    </tr>
                    </tbody>
                </table>
        </div>
    </div>
</body>
</html>
