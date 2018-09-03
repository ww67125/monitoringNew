<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2018/9/2
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑</title>
    <link rel='stylesheet' href="<%=request.getContextPath() %>/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>

    <script type="text/javascript"
            src="<%=request.getContextPath() %>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
<div class="page-header" >
    <h1><img src="../image/rundao.jpg"> &nbsp; 油液监测综合诊断系统</h1>
</div>
<div class="panel panel-default" style="width: 700px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">设备数据</h3>
    </div>
<div class="panel-body">
    <table class="table table-hover table-striped table-bordered">
        <thead>
        <th></th>
        </thead>
        <tbody>
        <c:forEach var="" items="" varStatus="">
            <tr>

                <td>
                    <div class="btn-group" role="group" >
                    <a href="" role="button"  class="btn btn-default btn-info">编辑设备</a>
                    <a href="" role="button" class="btn btn-default btn-info">添加数据</a>
                    <a href="" role="button" class="btn btn-default btn-info">查看数据</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
