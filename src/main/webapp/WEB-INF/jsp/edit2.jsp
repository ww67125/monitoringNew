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

<div class="panel panel-default" style="width: 900px;text-align: center;margin: 0 auto">
    <div class="panel-heading">
        <h3 class="panel-title">监测数据输入</h3>
    </div>

    <div class="panel-body">
    <form action="/saveEle" method="post" class="form-inline">
        <div class="form-group"><label>采样日期:</label><input class="form-control" type="date" name="collecttime" value="${ele.collecttime}"></div>
        <div class="form-group"><label>检测日期:</label><input class="form-control" type="date" name="checktime" value="${ele.checktime}"></div>
        <input class="form-control" type="hidden" name="id" value="${ele.id}">
        <input class="form-control" type="hidden" name="eqid" value="${eqid}">
        <%
            String[] array={"Ag","Al","B","Ba","Ca","Cr","Cu","Fe","Mg",
                    "Mn","Mo","Na","Ni","P","Pb","Si","Sn","Ti","V","Zn","FeSmall"};
        %>
        <c:forEach var="type" items="<%=array%>">
            <div class="form-group"><label>类型:${type}</label> <input class="form-control" type="hidden" name="type" value="${type}"></div>
            <div class="form-group"><label>检测值:</label><input class="form-control" type="text" name="elements" value="${ele.elements}"></div>
              <div class="form-group">
                <label>对应设定:</label>
                <select name="sqid" class="form-control">
                    <option value="">请选择</option>
                    <c:forEach var="ew" items="${eWlist}" varStatus="s">
                        <option value="${ew.id}">${ew.type}:${ew.setting},${ew.slope},${ew.suggest}</option>
                    </c:forEach>
                </select>
            </div>
      <%--
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
       --%>
        </c:forEach>
        <input class="form-control btn btn-default btn-success" type="submit" value="保存">
    </form>

</div>
</div>
</body>
</html>
