<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>美食社区</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		
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

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">FORUM / INFORMATION</span>
				<span class="cn">美食社区</span>
			</div>
			<!-- 标题 -->

			<div class="forum-container" :style='{"width":"100%","padding":"40px 7% 40px","margin":"0px auto","position":"relative","background":"none"}'>
				<form class="layui-form login-form">
					<div class="layui-form-item" :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}'>
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#0087a7","textAlign":"right"}' class="layui-form-label">标题：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#666","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#0087a7","textAlign":"right"}' class="layui-form-label">类型：</div>
						<div class="layui-input-inline">
							<input type="radio" name="isdone" value="开放" title="公开" checked>
							<input type="radio" name="isdone" value="关闭" title="私人">
						</div>
					</div>
					<div class="layui-form-item" :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}'>
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#0087a7","textAlign":"right"}' class="layui-form-label">内容：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#eee","backgroundColor":"#fff","borderRadius":"20px","color":"#666","borderWidth":"1px","width":"100%","borderStyle":"solid","height":"auto"}' name="content" id="content">请输入内容</textarea>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 0 140px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#0087a7","color":"#555","minWidth":"140px","outline":"none","borderRadius":"60px","background":"linear-gradient(30deg, rgba(172,240,255,1) 0%, rgba(46,185,218,1) 28%, rgba(160,237,255,1) 68%, rgba(46,185,218,1) 100%)","borderWidth":"0px 1px 2px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">发布帖子</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#aaa","color":"#888","minWidth":"140px","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(238,238,238,1) 0%, rgba(204,204,204,1) 28%, rgba(238,238,238,1) 68%, rgba(204,204,204,1) 100%)","borderWidth":"0px 1px 2px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
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

			<script>
				var vue = new Vue({
					el: '#app',
					data: {
						// 轮播图
						swiperList: [{
							img: '../../img/banner.jpg'
						}]
					},
					methods: {
						jump(url) {
							jump(url)
						}
					}
				})

				layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'tinymce'], function() {
					var layer = layui.layer;
					var element = layui.element;
					var carousel = layui.carousel;
					var http = layui.http;
					var form = layui.form;
					var jquery = layui.jquery;
					var tinymce = layui.tinymce

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
					// 初始化编辑器
					var edit = tinymce.render({
						elem: "#content",
						height: 600,
						images_upload_handler: function(blobInfo, succFun, failFun) {
							var xhr, formData;
							var file = blobInfo.blob(); //转化为易于理解的file对象
							xhr = new XMLHttpRequest();
							xhr.withCredentials = false;
							xhr.open('POST', http.baseurl + 'file/upload');
							xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
							xhr.onload = function() {
								var json;
								if (xhr.status != 200) {
									failFun('HTTP Error: ' + xhr.status);
									return;
								}
								json = JSON.parse(xhr.responseText);
								// if (!json || typeof json.location != 'string') {
								// 	failFun('Invalid JSON: ' + xhr.responseText);
								// 	return;
								// }
								if (!json || typeof json.file != 'string') {
									failFun('Invalid JSON: ' + xhr.responseText);
									return;
								}
								succFun(http.baseurl + '/upload/' + json.file);
							};
							formData = new FormData();
							formData.append('file', file, file.name); //此处与源文档不一样
							xhr.send(formData);
						}
					}, (opt) => {

					});

					form.on('submit(*)', function(data) {
						// 获取富文本的内容
						var content = tinymce.get('#content').getContent()
						data = data.field;
						data.content = content;
						data.username = localStorage.getItem('adminName');
						data.userid = localStorage.getItem('userid');
						data.parentid = 0;
						http.requestJson('forum/add', 'post', data, function(res) {
							layer.msg('发表成功', {
								time: 2000,
								icon: 6
							}, function() {
								back();
							});
						});
						return false;
					});

				});
			</script>
	</body>
</html>
