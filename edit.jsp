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

    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
<div class="page-header" >
    <h1><img src="../image/rundao.jpg"> &nbsp; 油液监测综合诊断系统</h1>
</div>
<div class="panel panel-default" style="width: 700px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">设备基础数据输入</h3>
    </div>
<div class="panel-body">
    <form class="form-inline">
    <div class="form-group"><label>企业名称:</label><input class="form-control" type="text" name="companyName" value="${equip.companyName}"></div>
    <div class="form-group"><label>设备名称:</label><input class="form-control" type="text" name="equipmentName" value="${equip.equipmentName}"></div>
    <div class="form-group"><label>设备编号:</label><input class="form-control" type="text" name="equipmentNo" value="${equip.equipmentNo}"></div>
    <div class="form-group"><label>开始日期:</label><input class="form-control" type="datetime-local" name="begindate" value="${equip.begindate}"></div>
    <div class="form-group"><label>最后检测日期:</label><input class="form-control" type="datetime-local" name="lastdate" value="${equip.lastdate}"></div>
    <div class="form-group"><label>运行时间:</label><input class="form-control" type="text" name="" value=""></div>
    <div class="form-group"><label>润滑油型号:</label><input class="form-control" type="text" name="oiltype" value="${equip.oiltype}"></div>
    <div class="form-group"><label>铁警戒值:</label><input class="form-control" type="text" name="checkFe" value="${equip.checkFe}"></div>
    <div class="form-group"><label>铜警戒值:</label><input class="form-control" type="text" name="checkCu" value="${equip.checkCu}"></div>
    <div class="form-group"><label>铝警戒值:</label><input class="form-control" type="text" name="checkAl" value="${equip.checkAl}"></div>
    <div class="form-group"><label>铬警戒值:</label><input class="form-control" type="text" name="checkCr" value="${equip.checkCr}"></div>
    <div class="form-group"><label>镉警戒值:</label><input class="form-control" type="text" name="checkCd" value="${equip.checkCd}"></div>
    <div class="form-group"><label>银警戒值:</label><input class="form-control" type="text" name="checkAg" value="${equip.checkAg}"></div>
    <div class="form-group"><label>钛警戒值:</label><input class="form-control" type="text" name="checkTi" value="${equip.checkTi}"></div>
    <div class="form-group"><label>锡警戒值:</label><input class="form-control" type="text" name="checkSn" value="${equip.checkSn}"></div>
    <div class="form-group"><label>铅警戒值:</label><input class="form-control" type="text" name="checkPb" value="${equip.checkPb}"></div>
    <div class="form-group"><label>锌警戒值:</label><input class="form-control" type="text" name="checkZn" value="${equip.checkZn}"></div>
    <div class="form-group"><label>镁警戒值:</label><input class="form-control" type="text" name="checkMg" value="${equip.checkMg}"></div>
    <div class="form-group"><label>钙警戒值:</label><input class="form-control" type="text" name="checkCa" value="${equip.checkCa}"></div>
    <div class="form-group"><label>铁屑警戒值:</label><input class="form-control" type="text" name="checklittleFe" value="${equip.checklittleFe}"></div>
    <div class="form-group"><label>铁斜率警戒值:</label><input class="form-control" type="text" name="slopeFe" value="${equip.slopeFe}"></div>
    <div class="form-group"><label>铜斜率警戒值:</label><input class="form-control" type="text" name="slopeCu" value="${equip.slopeCu}"></div>
    <div class="form-group"><label>铝斜率警戒值:</label><input class="form-control" type="text" name="slopeAl" value="${equip.slopeAl}"></div>
    <div class="form-group"><label>铬斜率警戒值:</label><input class="form-control" type="text" name="slopeCr" value="${equip.slopeCr}"></div>
    <div class="form-group"><label>镉斜率警戒值:</label><input class="form-control" type="text" name="slopeCd" value="${equip.slopeCd}"></div>
    <div class="form-group"><label>银斜率警戒值:</label><input class="form-control" type="text" name="slopeAg" value="${equip.slopeAg}"></div>
    <div class="form-group"><label>钛斜率警戒值:</label><input class="form-control" type="text" name="slopeTi" value="${equip.slopeTi}"></div>
    <div class="form-group"><label>锡斜率警戒值:</label><input class="form-control" type="text" name="slopeSn" value="${equip.slopeSn}"></div>
    <div class="form-group"><label>铅斜率警戒值:</label><input class="form-control" type="text" name="slopePb" value="${equip.slopePb}"></div>
    <div class="form-group"><label>锌斜率警戒值:</label><input class="form-control" type="text" name="slopeZn" value="${equip.slopeZn}"></div>
    <div class="form-group"><label>镁斜率警戒值:</label><input class="form-control" type="text" name="slopeMg" value="${equip.slopeMg}"></div>
    <div class="form-group"><label>钙斜率警戒值:</label><input class="form-control" type="text" name="slopeCa" value="${equip.slopeCa}"></div>
    <div class="form-group"><label>铁屑斜率警戒值:</label><input class="form-control" type="text" name="littleFeslope" value="${equip.littleFeslope}"></div>
    </form>
</div>
</div>
</body>
</html>
