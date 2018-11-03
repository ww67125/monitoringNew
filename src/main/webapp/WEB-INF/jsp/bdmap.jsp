<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<title>百度地图API示例</title>
	<link type="text/css" rel="stylesheet" href="css/bdmapStyle.css">
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2COzFaICuIyVj7V3VetKfmdRVnX8BhVr"></script><!--百度地图api-->
	<script type="text/javascript" src="js/jquery.bdmap.js"></script><!--百度地图API模块化成函数供前台调用-->
	<style type="text/css">
		body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{height:100%;width:100%;}
		#r-result{width:100%;}
	</style>
</head>
<body>
	<section class="section-bdmap">
		<%--<div class="map-search">
			<div class="one">
				<input type="text" id="s_i_map" placeholder="资产名称" onfocus="this.placeholder=''" onblur="this.placeholder='资产名称'">
				<button type="button" id="btn_search_map">搜索</button></div><!--/one-->
			<div class="one">
				<label>默认坐标</label>
				<input type="text" id="s_i_zuobiao" readonly disabled="disabled" placeholder="点击地图某处作为默认坐标" onfocus="this.placeholder=''" onblur="this.placeholder='点击地图某处作为默认坐标'">
				<button type="button" id="btn_defaultPoint">设为默认位置</button>
			</div><!--/one-->
			<div class="one">
				<input type="checkbox" id="c_details"><label class="option">详细信息</label>
			</div><!--/one-->
			<div class="one">
				<input type="checkbox" id="c_summary"><label class="option">汇总信息</label>
			</div><!--/one-->
			<div class="one">
				<label class="option">资产状态</label>
				<select id="select_property">
					<option value="0">全部</option>
					<option value="1">出租情况</option>
					<option value="2">抵押情况</option>
					<option value="3">评估情况</option>
				</select>
			</div><!--/one-->
		</div>--%><!--/map-search-->
	</section><!--/map-bdmap-->

	<section id="allmap"></section><!--百度地图展示区域-->

	<%--<section class="section-demo">
		<div class="panel-title">
			<h1>百度地图API示例</h1>
			<p>API参考：http://lbsyun.baidu.com/index.php?title=jspopular</p>
			<p>坐标拾取/经纬度获取：http://api.map.baidu.com/lbsapi/getpoint/index.html</p>
		</div>
	</section><!--/section-demo-->--%>
</body>
</html>
<script type="text/javascript">

	/*+-------------全局变量-------------------+*/
	var $imgDir = 'img/'; //默认图片目录
	var $yjzc_zb = "118.611836,24.918225"; //默认坐标
	var $copyright = "wifi定位"; //版权信息

	/*+------------地图初始化--------------------+*/
	var map = new BMap.Map("allmap"); //allmap为加载地图区域的ID
	BDMapInit(map,{"isNumc":1,"city":"","point":$yjzc_zb,"zoom":"15","copyright":$copyright});


	/*+--------------------------------+*/
	/**
	* 函数：加载坐标json数据
	* @param json <=> json数据
	*/
	function loadPointData(dataJson,paramJson){

		map.clearOverlays();  //一次移除所有的覆盖物(相当于清空所有标注点)(必须!)

		for(var i=0;i<dataJson.data.length;i++){
			var $json = dataJson.data[i];
			var title = $json.title, //文本
				description = $json.detail; //描述
				zuobiao = $json.yjzc_zb.split(','),
				l_point = zuobiao[0], //经度
				r_point = zuobiao[1]; //纬度

			var	img = '', //标注点图标
				style = ''; //标注点样式,使用英文颜色（eg.red）或颜色值（eg.'#1296db')
			if($json.color=='1'){
				img = 'icon_locate_red.png';
				style = "red";
			}
			if($json.color=='2'){
				img = 'icon_locate_blue.png';
				style = "blue";
			}
			if($json.color=='3'){
				img = 'icon_locate_green.png';
				style = "green";
			}
			
			if(img!='') img = $imgDir+img;

			//创建标注点
			var $pointJson = {"l_point":l_point,"r_point":r_point,"title":title,"description":description,"style":style,"icon":img}
			createMapPoint($pointJson,paramJson);

		}

	}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//*                                     分隔线                                                              *//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(function(){
	var $coordinateJson = {
		data:[
			{yjzc_zb:'118.618592,24.908369',title:'泉州国税局大厦',detail:'泉州市丰泽区丰泽街中段',color:''}
			// {yjzc_zb:'118.613382,24.915539',title:'北峰万科城',detail:'<em class="bdtitle">北峰万科城</em><em class="bdaddress">泉州市丰泽区北峰池峰路13号</em><br>共4栋15单元,合计12365平米<br>在租15单元,9996.66平米,66.55%<br>在押12单元,1258.88平米,88.55%<br>在评8单元,962.33平米,33.33%',color:'1'},
			// {yjzc_zb:'118.614711,24.912884',title:'万科上悦城',detail:'泉州市清濛经济技术开发区1号',color:'2'},
			// {yjzc_zb:'118.60695,24.917538',title:'聚龙小镇',detail:'泉州市惠安县惠南大道52号',color:'3'},
			// {yjzc_zb:'118.605225,24.913474',title:'富临国际',detail:'泉州市丰泽区丰泽街北段',color:'1'},
			// {yjzc_zb:'118.618628,24.917439',title:'闻馨一品',detail:'泉州市鲤城区南环路52号',color:'2'},
			// {yjzc_zb:'118.613597,24.909279',title:'建发珑月湾',detail:'泉州市江南产业园区25号',color:'3'}
		]
	}
	loadPointData($coordinateJson,{"showDetails":false}); //根据json加载地图数据


	//=====鼠标点击地图上某个点时
	map.addEventListener("click",function(e){
		var l_point = e.point.lng,
			r_point = e.point.lat,
			coordinate = l_point+','+r_point; //当前坐标(经纬度)
		//alert('当前坐标：'+coordinate);
		assignValue2Element('s_i_zuobiao',coordinate); //把坐标赋值给某个元素



		/*
		//创建标注点
		var title = '默认位置',
			description = '';
		var $pointJson = {"l_point":l_point,"r_point":r_point,"title":title,"description":description,"dragging":true,"isInfo":false}
		createMapPoint($pointJson);

		var allOverlay = map.getOverlays();
		for (var i = 0; i < allOverlay.length -1; i++){
			console.log(allOverlay[i].toString());
			if(allOverlay[i].toString()=="[object Marker]"){
				if(allOverlay[i].getLabel().content == title ){
					map.removeOverlay(allOverlay[i]);
					return false;
				}
			}
		}
		//map.clearOverlays();    //一次移除所有的覆盖物
		//map.removeOverlay('指定的覆盖物'); //一次移除一个指定覆盖物

		//$('#s_i_zuobiao').val(point);
		//$('#s_i_zuobiao').val('e.point.lng'+','+e.point.lat); //赋值
		//map.addOverlay(label); //
		*/


	});

    //
	// /*+--------------------------------+*/
	// //=====绑定回车事件
	// $('#s_i_map').on('keydown',function(e){
	// 	if(e.keyCode==13){
	// 		$('#btn_search_map').click();
	// 	}
    //
	// });
	// //=====按关键词检索
	// $('#btn_search_map').on('click',function(){
	// 	var keywords = $('#s_i_map').val();
	// 	var local = new BMap.LocalSearch(map, {
	// 		renderOptions:{map: map}
	// 	});
	// 	local.search(keywords);
	// });
    //
    //
    //
	// /*+--------------------------------+*/
	// //=====设为默认位置事件
	// $('#btn_defaultPoint').on("click",function(){
	// 	var point = $('#s_i_zuobiao').val(); //默认位置坐标
	// 	alert('默认位置坐标为：'+point);
	// })
    //
    //
	// /*+--------------------------------+*/
	// //=====选中详细信息事件
	// $('#c_details').on('change',function(){
	// 	var $this = $(this);
	// 	var showDetails = false;
	// 	if($this.prop("checked")) showDetails = true; //选中时
	// 	else showDetails = false; //取消选中时
	//
	// 	loadPointData($coordinateJson,{"showDetails":showDetails}); //刷新地图数据
	// });
    //
    //
	// /*+--------------------------------+*/
	// //=====选中汇总信息事件
	// $('#c_summary').on('change',function(){
	// 	var $this = $(this);
	// 	if($this.prop("checked")){
	// 		alert('已选中')
	// 	}else{
	// 		alert('取消选中')
	// 	}
	// });
	//
    //
    //
	// /*+--------------------------+*/
	// //=====选择资产状态事件
	// $('#select_property').on('change',function(){
	// 	var $this = $(this);
	// 	var index = $this.get(0).selectedIndex, //选中的索引值
	// 		value = $('#select_property option:selected').val(), //选中的值
	// 		text = $('#select_property option:selected').text(); //选中的文本
	// 	alert('index: '+bdmap+'\nvalue: '+value+'\ntext: '+text); //index 0 全部; 1 出租情况; 2 抵押情况; 3 评估情况
    //
	// 	var showDetails = false;
	// 	if($('#c_details').prop("checked")) showDetails = true; //选中时
	// 	else showDetails = false; //取消选中时
    //
	// 	//根据选中值返回新json (前面不要加var)
	// 	$coordinateJson = {
	// 		data:[
	// 			{yjzc_zb:'118.613382,24.915539',title:'北峰万科城XX',detail:'<em class="title">YY北峰万科城</em><em class="address">泉州市丰泽区北峰池峰路13号</em><br>共4栋15单元,合计12365平米<br>在租15单元,9996.66平米,66.55%<br>在押12单元,1258.88平米,88.55%<br>在评8单元,962.33平米,33.33%',color:'1'},
	// 			{yjzc_zb:'118.614711,24.912884',title:'万科上悦城XX',detail:'YY泉州市清濛经济技术开发区1号',color:'2'},
	// 			{yjzc_zb:'118.60695,24.917538',title:'聚龙小镇XX',detail:'YY泉州市惠安县惠南大道52号',color:'3'},
	// 			{yjzc_zb:'118.605225,24.913474',title:'富临国际XX',detail:'YY泉州市丰泽区丰泽街北段',color:'1'},
	// 			{yjzc_zb:'118.618628,24.917439',title:'闻馨一品XX',detail:'YY泉州市鲤城区南环路52号',color:'2'},
	// 			{yjzc_zb:'118.613597,24.909279',title:'建发珑月湾XX',detail:'YY泉州市江南产业园区25号',color:'3'}
	// 		]
	// 	}
	// 	loadPointData($coordinateJson,{"showDetails":showDetails}); //根据json加载地图数据
    //
	// });


	


	


}); //END $(function(){});
	
</script>
