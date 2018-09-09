<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <title>设备</title>
    <link rel='stylesheet' href="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>

    <script type="text/javascript"
            src="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div class="page-header">
    <h1><img src="../image/rundao.jpg"> &nbsp; 油液监测综合诊断系统</h1>
</div>
<div class="panel panel-default" style="width: 2000px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">设备数据</h3>
    </div>
    <div class="panel-body">
        <a href="/addEquip" role="button" class="btn btn-default btn-info">添加设备</a>
        <table class="table table-hover table-striped table-bordered">
            <thead>
            <th>企业名称</th>
            <th>设备名称</th>
            <th>设备编号</th>
            <th>开始日期</th>
            <th>最后检测日期</th>
            <th>运行时间</th>
            <th>润滑油型号</th>
            <th>操作</th>
            </thead>
            <tbody>
            <c:forEach var="equip" items="${equiplist}" varStatus="x">
                <tr>
                    <td>${equip.companyName}</td>
                    <td>${equip.equipmentName}</td>
                    <td>${equip.equipmentNo}</td>
                    <td><fmt:formatDate value="${equip.begindate}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${equip.lastdate}" pattern="yyyy-MM-dd"/></td>
                    <td>${equip.runtime}天</td>
                    <td>${equip.oiltype}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <a href="/editEquip?eqid=${equip.id}" role="button"
                               class="btn btn-default btn-info">编辑设备</a>
                            <a href="/addSet?eqid=${equip.id}" role="button" class="btn btn-default btn-info">添加设定值</a>
                            <a href="/addEle?eqid=${equip.id}" role="button" class="btn btn-default btn-info">添加元素数据</a>
                            <a href="/goResult?eqid=${equip.id}" role="button" class="btn btn-default btn-info">查看数据</a>
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
