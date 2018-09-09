<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2018/4/19
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>数据查看</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.3.1/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/echarts/4.0.4/dist/echarts.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/echarts/4.0.4/dist/echarts.common.min.js"></script>
    <link rel='stylesheet' href="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>

    <script type="text/javascript"
            src="<%=request.getContextPath() %>/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>

<body>
            <div class="page-header" >
                <h1><img src="../image/rundao.jpg"> &nbsp; 油液监测综合诊断系统</h1>
            </div>
            <input type="button" class="btn btn-default btn-warning" onclick="javascript:history.back(-1);" value="返回上一页">
            <div class="panel panel-default" style="width: 900px;text-align: center;margin: 0 auto">
                <div class="panel-heading">
                    <h3 class="panel-title">元素趋势图</h3>
                </div>
                <div class="panel-body">
                    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                    <c:forEach var="m" items="${map}" varStatus="s">

                        <div class="center-block" id="main${s.index}" style="width: 1000px;height:600px;margin: 0 auto"></div>
                   <br>
                        <div><textarea readonly cols="80" rows="5" style="overflow: scroll"> <c:forEach var="m2" items="${m.value}" varStatus="c"><c:if test="${m2.value.elements>m2.value.equipentWarn.setting||m2.value.elements>(m2.value.elements+m2.value.equipentWarn.slope)}">${m2.key}:${m.key}超标，建议:${m2.value.equipentWarn.suggest}</c:if>
                        </c:forEach></textarea></div>
                        <br>
                    </c:forEach>
                    <!-- ECharts单文件引入 -->
                </div>
            </div>
</body>


<script type="text/javascript">
    function init(name,index) {


    }

        <c:forEach var="m" items="${map}" varStatus="c">

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'+"${c.index}"));
    var data1=[<c:forEach items="${m.value}" var="m2"> "${m2.key}",</c:forEach>];
    var data2=[<c:forEach items="${m.value}" var="m2">"${m2.value.elements}",</c:forEach>];
    var data3=[<c:forEach items="${m.value}" var="m2">
            <c:if test="${m2.value.elements>m2.value.equipentWarn.setting}">
            'red'
        </c:if>
        <c:if test="${m2.value.elements<m2.value.equipentWarn.setting}">
        '#44f'
        </c:if>
        ,

        </c:forEach>]
    // 指定图表的配置项和数据
    var option = {
        title : {
            text: "${equip.companyName}${equip.equipmentName}${equip.oiltype}",
            subtext: "${m.key}"+'元素趋势图',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} (kg)"
        },
        legend: {
            data:['元素值(ppm)与日期(Month)关系']
        },
        xAxis: [
            {
                type: "category",
                name: "日期",
                splitLine: {show: false},
                axisLabel : {
                    formatter: '{value}'
                },
                data: data1
            }
        ],
        yAxis: [
            {
                type: "value",
                axisLabel: {
                    formatter: '{value} ppm'
                },
                axisLine : {onZero: false},
                name: "浓度",
                boundaryGap : false,
                max: 300,
                min: 0,
                splitNumber: 20
            }
        ],
        toolbox: {
            show: true,
            feature: {
                mark: {
                    show: true
                },
                dataView: {
                    show: true,
                    readOnly: true
                },
                restore: {
                    show: true
                },
                saveAsImage: {
                    show: true
                },
                magicType : {
                    show: true, type: ['line', 'bar']},
            }
        },
        calculable: true,
        series : [

            {
                name:'元素',
                type:'line',
                // color:"#555555",
                itemStyle : {  /*设置折线颜色*/
                    normal : {
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = data3;
                            return colorList[params.dataIndex]
                        }
                    }
                },
                data:data2
            }
        ],
        /*visualMap: {
            show: false,
            dimension: 1,
            pieces: [{gte:"50",lte:"150",color:'red'}],  //pieces的值由动态数据决定
            outOfRange: {
                color: '#44f'
            }
        }*/
    };
   /* var j = 0;
    var max = Math.max.apply(Math, data2); //数据的最大值*/
    // option.visualMap.pieces[0] = {gte: max-100, lte: max, color: 'red'};
    /*for(var i in data1){

        alert(data1[i].title)
        alert(data1[i].content)
        /!*data1.push(i);
        data2.push(res[i])*!/;
    }*/

    myChart.setOption(option);
            <%--init("${m.key}","${c.index}")--%>
        </c:forEach>

</script>
</html>
