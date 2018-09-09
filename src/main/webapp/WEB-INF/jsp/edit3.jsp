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
<input type="button" class="btn btn-default btn-warning" onclick="javascript:history.back(-1);" value="返回上一页">

<div class="panel panel-default" style="width: 800px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">设备设定数据输入</h3>
    </div>
    <div class="panel-body">
        <form action="/saveEquipWarn" method="post" class="form-inline">
            <input class="form-control" type="hidden" name="id" value="${equipwarn.id}">
            <input class="form-control" type="hidden" name="eqId" value="${eqid}">
            <div class="form-group"><label>报警值:</label><input class="form-control" type="text" name="setting" value="${equipwarn.setting}"></div>
            <div class="form-group"><label>斜率:</label><input class="form-control" type="text" name="slope" value="${equipwarn.slope}"></div>
               <div class="form-group">
                   <label>类型:</label>
                <select name="type"  class="form-control">
                    <option value="Ag" selected="selected">银</option>
                    <option value="Al">铝</option>
                    <option value="B">硼</option>
                    <option value="Ba">钡</option>
                    <option value="Ca">钙</option>
                    <option value="Cd">镉</option>
                    <option value="Cr">铬</option>
                    <option value="Cu">铜</option>
                    <option value="Fe">铁</option>
                    <option value="Mg">镁</option>
                    <option value="Mn">锰</option>
                    <option value="Mo">钼</option>
                    <option value="Na">钠</option>
                    <option value="Ni">镍</option>
                    <option value="P">磷</option>
                    <option value="Pb">铅</option>
                    <option value="Si">硅</option>
                    <option value="Sn">锡</option>
                    <option value="Ti">钛</option>
                    <option value="V">钒</option>
                    <option value="Zn">锌</option>
                    <option value="FeSmall">铁屑</option>
                </select>
            </div>
            <div class="form-group"><label>自动诊断建议:</label><textarea cols="20" rows="2" class="form-control" name="suggest" value="${equipwarn.suggest}">${equipwarn.suggest}</textarea></div>
            <input class="form-control btn btn-default btn-success" type="submit" value="保存">
        </form>
    </div>
</div>
</body>
</html>
