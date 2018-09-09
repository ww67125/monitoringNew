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
    <link rel='stylesheet' href="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>

    <script type="text/javascript"
            src="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div class="page-header" >
    <h1><img src="../image/rundao.jpg"> &nbsp; 油液监测综合诊断系统</h1>
</div>
<input type="button" class="btn btn-default btn-warning" onclick="javascript:history.back(-1);" value="返回上一页">

<div class="panel panel-default" style="width: 700px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">设备基础数据输入</h3>
    </div>

    <div class="panel-body">
    <form action="/saveEquip" method="post" class="form-inline">
        <input class="form-control" type="hidden" name="id" value="${equip.id}">
    <div class="form-group"><label>企业名称:</label><input class="form-control" type="text" name="companyName" value="${equip.companyName}"></div>
    <div class="form-group"><label>设备名称:</label><input class="form-control" type="text" name="equipmentName" value="${equip.equipmentName}"></div>
    <div class="form-group"><label>设备编号:</label><input class="form-control" type="text" name="equipmentNo" value="${equip.equipmentNo}"></div>
    <div class="form-group"><label>开始日期:</label><input class="form-control" type="date" name="begindate" value="${equip.begindate}"></div>
    <div class="form-group"><label>最后检测日期:</label><input class="form-control" type="date" name="lastdate" value="${equip.lastdate}"></div>
    <%--<div class="form-group"><label>运行时间:</label><input class="form-control" type="text" name="" value=""></div>--%>
    <div class="form-group"><label>润滑油型号:</label><input class="form-control" type="text" name="oiltype" value="${equip.oiltype}"></div>
    <input class="form-control btn btn-default btn-success" type="submit" value="保存">
    </form>
</div>
</div>
</body>
</html>
