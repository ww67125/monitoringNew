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
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.3.1/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/echarts/4.0.4/dist/echarts.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webjars/echarts/4.0.4/dist/echarts.common.min.js"></script>
</head>
<body onload="add()">
                <table>
                    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                    <c:forEach var="m" items="${map}" varStatus="s">

                        <div id="main${s.index}" style="width: 1000px;height:600px;background-color: aquamarine"></div>
                   <br>
                    </c:forEach>
                    <!-- ECharts单文件引入 -->
                </table>
</body>


<script type="text/javascript">

    function init(index) {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'+index));
        var data1=[<c:forEach items="${list}" var="el"> {title:"${el.ag}",

            content:"${el.ca}"},</c:forEach>];
        var data2=[];
        // 指定图表的配置项和数据
        var option = {
            title : {
                text: 'Spark Streaming实战课程访问量实时统计',
                subtext: '实战课程访问次数',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} (kg)"
            },
            legend: {
                data:['高度(km)与气温(°C)变化关系']
            },
            xAxis: [
                {
                    type: "category",
                    name: "日期",
                    splitLine: {show: false},
                    axisLabel : {
                        formatter: '{value}'
                    },
                    data: [<c:forEach items="${list}" var="el"> "${el.ag}",

                        </c:forEach>]
                }
            ],
            yAxis: [
                {
                    type: "value",
                    axisLabel: {
                        formatter: '{value} kg'
                    },
                    axisLine : {onZero: false},
                    name: "体重",
                    boundaryGap : false,
                    max: 90,
                    min: 0,
                    splitNumber: 10
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
                    itemStyle : {  /*设置折线颜色*/
                        normal : {
                            color:'#c5ee4a'
                        }
                    },
                    data:[<c:forEach items="${list}" var="el"> "${el.ca}",

                        </c:forEach>]
                }
            ]
        };
        /*for(var i in data1){

            alert(data1[i].title)
            alert(data1[i].content)
            /!*data1.push(i);
            data2.push(res[i])*!/;
        }*/
        myChart.setOption(option);

    }

        <c:forEach var="m" items="${map}" varStatus="c">
            init(${c.index})
        </c:forEach>



</script>
</html>
