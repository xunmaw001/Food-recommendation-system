<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 热门美食 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>热门美食</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border: 1px solid #eee;
						border-radius: 30px;
						padding: 0 30px 0 10px;
						box-shadow: 0px 0px 0px #ccc;
						margin: 0;
						outline: none;
						color: #666;
						background: url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif);
						width: 120px;
						font-size: 14px;
						line-height: 40px;
						height: 40px;
					}
		
		/* lists */
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, -10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">热门美食展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"padding":"0","margin":"0px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative"}'>
				<div class="category-1" :style='{"border":"0px solid #bdefb6","padding":"40px 10px 0px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 7% 0 0","borderColor":"#bdeaf4 #0087a7 #bdeaf4 #0087a7","alignItems":"flex-start","display":"block","justifyContent":"center","borderRadius":"20px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px 4px 3px 1px","width":"200px","borderStyle":"solid","height":"auto","order":"3"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","boxShadow":"0px 6px 8px -2px #448290","margin":"0 0px 20px 0","borderColor":"#0087a7","whiteSpace":"nowrap","color":"#000","textAlign":"center","minWidth":"110px","overflow":"hidden","borderRadius":"20px 0 20px 0px","background":"linear-gradient(230deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0 0 4px","width":"auto","lineHeight":"44px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"outset"} : {"cursor":"pointer","padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #b6d7de","margin":"0 0px 20px 0","borderColor":"#33b4d2","whiteSpace":"nowrap","color":"#555","textAlign":"center","minWidth":"110px","overflow":"hidden","borderRadius":"20px 0 20px 0px","background":"linear-gradient(320deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0 0 4px","width":"auto","lineHeight":"44px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"outset","height":"44px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","boxShadow":"0px 6px 8px -2px #448290","margin":"0 0px 20px 0","borderColor":"#0087a7","whiteSpace":"nowrap","color":"#000","textAlign":"center","minWidth":"110px","overflow":"hidden","borderRadius":"20px 0 20px 0px","background":"linear-gradient(230deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0 0 4px","width":"auto","lineHeight":"44px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"outset"} : {"cursor":"pointer","padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #b6d7de","margin":"0 0px 20px 0","borderColor":"#33b4d2","whiteSpace":"nowrap","color":"#555","textAlign":"center","minWidth":"110px","overflow":"hidden","borderRadius":"20px 0 20px 0px","background":"linear-gradient(320deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0 0 4px","width":"auto","lineHeight":"44px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"outset","height":"44px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>

					
				<form class="layui-form filter" :style='{"padding":"20px 20px","borderColor":"#bcdbdf","margin":"20px 7% 0","alignItems":"center","flexWrap":"wrap","background":"none","borderWidth":"0px 0px 0px","display":"flex","width":"100%","borderStyle":"outset","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>美食名称</div>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="meishimingcheng" id="meishimingcheng" placeholder="美食名称" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>美食类型</div>
						<select name="meishileixing" id="meishileixing" lay-filter="meishileixing">
							<option value="">请选择</option>
							<option v-for="(item,index) in meishileixingOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>美食地点</div>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="meishididian" id="meishididian" placeholder="美食地点" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>价格</div>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"150px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="pricestart" id="pricestart" placeholder="最小价格" autocomplete="off" class="layui-input">
						<span :style='{"padding":"0 6px","margin":"0","color":"#333","display":"inline-block","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}'>至</span>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"150px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="priceend" id="priceend" placeholder="最大价格" autocomplete="off" class="layui-input">
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 10px 0","borderColor":"#0087a7","color":"#333","minWidth":"90px","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0px 1px 2px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#72bb3d","color":"#333","minWidth":"90px","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(206,255,170,1) 0%, rgba(114,187,61,1) 28%, rgba(206,255,170,1) 68%, rgba(114,187,61,1) 100%)","borderWidth":"0px 1px 2px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' v-if="isAuth('remenmeishi','新增')" @click="jump('../remenmeishi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"padding":"0px 0 20px","margin":"20px 7% 0px","borderColor":"#f3d7ca","background":"none","flex":"1","borderWidth":"0 0px 0 0","width":"100%","minWidth":"750px","borderStyle":"solid","order":"2"}' class="lists">
					<!-- 样式二 -->
					<div :style='{"padding":"0px","margin":"20px 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0 40px","borderColor":"#ddd","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"49.5%","position":"relative","borderStyle":"solid","height":"300px"}' @click="jump('../remenmeishi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"verticalAlign":"middle","padding":"10px","boxShadow":"0px 6px 6px -6px #80afba","borderColor":"#0087a7 #bdeaf4 #0087a7 #bdeaf4","margin":"0px 0 0","objectFit":"cover","display":"inline-block","borderRadius":"20px","borderWidth":"1px 2px 2px 1px","background":"none","width":"48%","borderStyle":"dotted","height":"300px"}' :src="item.meishitupian?baseurl+item.meishitupian.split(',')[0]:''">
							<div :style='{"padding":"10px 0px","verticalAlign":"middle","boxShadow":"0px 12px 12px -12px #80afba","borderColor":"#bdeaf4 #0087a7 #bdeaf4 #0087a7","margin":"20px 0 0","alignItems":"center","display":"flex","justifyContent":"center","borderRadius":"10px","flexWrap":"wrap","borderWidth":"1px 1px 3px 4px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"50%","borderStyle":"solid","height":"260px"}' class="item-info">
								<div :style='{"cursor":"pointer","padding":"0 6px","margin":"0 10px 0 0","borderColor":"#bcdbdf","color":"#333","alignItems":"center","textAlign":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0 0px 0px 0","width":"32px","lineHeight":"16px","fontSize":"14px","borderStyle":"dashed","height":"260px"}' class="name">{{item.meishimingcheng}}</div>
								<div :style='{"cursor":"pointer","padding":"0 6px","margin":"0 10px 0 0","borderColor":"#bcdbdf","color":"#333","alignItems":"center","textAlign":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0 0px 0px 0","width":"32px","lineHeight":"16px","fontSize":"14px","borderStyle":"dashed","height":"260px"}' class="name">{{item.meishileixing}}</div>
								<div :style='{"cursor":"pointer","padding":"0 6px","margin":"0 10px 0 0","borderColor":"#bcdbdf","color":"#333","alignItems":"center","textAlign":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0 0px 0px 0","width":"32px","lineHeight":"16px","fontSize":"14px","borderStyle":"dashed","height":"260px"}' class="name">{{item.meishididian}}</div>
								<div v-if="item.price" :style='{"padding":"0px 4px","color":"#fff","textAlign":"center","display":"none","width":"100%","lineHeight":"24px","fontSize":"12px"}' class="time">￥{{Number(item.price).toFixed(2)}}</div>
								<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"0px 4px","color":"#fff","textAlign":"center","display":"none","width":"100%","lineHeight":"24px","fontSize":"12px"}' class="time">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
								<div v-if="item.jf" :style='{"padding":"0px 4px","color":"#fff","textAlign":"center","display":"none","width":"100%","lineHeight":"24px","fontSize":"12px"}' class="time">{{Number(item.jf).toFixed(0)}}积分</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        meishileixingOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '720px',
								anim: 'fade',
								autoplay: 'true',
								interval: '5000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});
        			http.request(`option/meishileixing/meishileixing`,'get',{},(res)=>{
                			vue.meishileixingOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/meishileixing/meishileixing', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#meishimingcheng').val()) {
						param['meishimingcheng'] = '';
					}
					if (jquery('#meishileixing').val()) {
						param['meishileixing'] = '';
					}
					if (jquery('#meishididian').val()) {
						param['meishididian'] = '';
					}
					if (jquery('#price').val()) {
						param['price'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['meishileixing'] = category;
				}

			        if (jquery('#meishimingcheng').val()) {
			          param['meishimingcheng'] = jquery('#meishimingcheng').val() ? '%' + jquery('#meishimingcheng').val() + '%' : '';
			        }
			        if (jquery('#meishileixing').val()) {
			          param['meishileixing'] = jquery('#meishileixing').val() ? jquery('#meishileixing').val() : '';
			        }
			        if (jquery('#meishididian').val()) {
			          param['meishididian'] = jquery('#meishididian').val() ? '%' + jquery('#meishididian').val() + '%' : '';
			        }
			        if (jquery('#pricestart').val()) {
			            param['pricestart'] = jquery('#pricestart').val() ? jquery('#pricestart').val() : '';
			        }
			        if (jquery('#priceend').val()) {
			            param['priceend'] = jquery('#priceend').val() ?  jquery('#priceend').val() : '';
			        }



					// 获取列表数据
					http.request('remenmeishi/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","limit","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('remenmeishi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
