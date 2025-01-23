<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 忘记密码 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>忘记密码</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html,
		body {
			height: 100%;
		}
	</style>
	<body>
        <div id="register" class="register" :style='{"minHeight":"100vh","width":"100%","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230210/56b31276ba0b49338bdd2a61c6f51fb1.jpg) no-repeat center bottom / 100% auto","justifyContent":"flex-end","display":"flex"}'>
            <form id="registerForm" class="layui-form login-form" :style='{"padding":"0px 80px 180px","margin":"40px auto 60px","borderColor":"#0087a7","borderRadius":"20px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230210/169100e4b2164361a254efa3eae9f5a8.jpg) no-repeat left bottom / 100% auto,#fffdfc","borderWidth":"8px","display":"flex","width":"880px","position":"relative","borderStyle":"outset","height":"auto"}' lay-filter="myForm">
                <div v-if="true" :style='{"margin":"0 0 4px","color":"#5bb450","textAlign":"center","display":"none","width":"100%","fontSize":"24px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / FORGET</div>
                <div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"30px 0 30px","borderColor":"#bdefb6","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","background":"none","borderWidth":"0px","width":"100%","lineHeight":"40px","fontSize":"20px","textOverflow":"ellipsis","borderStyle":"solid","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>忘记密码</p></div>

				<div v-if="tabIndex==1" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="text" id="username" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
                <div v-if="tabIndex==1" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
                    <select name="roles" id="roles" lay-filter="roles">
                        <option value="">请选择角色</option>
                    </select>
                </div>
				<div v-if="tabIndex==2" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="text" v-model="userinfo.pquestion" placeholder="请输入密保问题" autocomplete="off" class="layui-input" readonly>
				</div>
				<div v-if="tabIndex==2" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="text" v-model="userinfo.panswer1" placeholder="请输入密保答案" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="password" v-model="userinfo.mima" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"20px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"400px","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"36px"}' type="password" v-model="userinfo.mima1" placeholder="请输入确认密码" autocomplete="off" class="layui-input">
				</div>
				<button v-if="tabIndex==1" :style='{"cursor":"pointer","padding":"0 0px","margin":"20px 0 10px","borderColor":"#0087a7","color":"#0087a7","textAlign":"center","display":"block","outline":"none","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px","width":"100px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px","order":"20"}' class="layui-btn btn-submit" lay-submit lay-filter="getSecurity">获取密保</button>
				<button v-if="tabIndex==2" :style='{"cursor":"pointer","padding":"0 0px","margin":"20px 0 10px","borderColor":"#0087a7","color":"#0087a7","textAlign":"center","display":"block","outline":"none","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px","width":"100px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px","order":"20"}' class="layui-btn btn-submit" lay-submit lay-filter="validateSecurity">校验</button>
				<button v-if="tabIndex==3" :style='{"cursor":"pointer","padding":"0 0px","margin":"20px 0 10px","borderColor":"#0087a7","color":"#0087a7","textAlign":"center","display":"block","outline":"none","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px","width":"100px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px","order":"20"}' class="layui-btn btn-submit" lay-submit lay-filter="updatePassword">修改密码</button>
				<a v-if="tabIndex==1" :style='{"cursor":"pointer","border":"1px solid #eee","padding":"0px 10px","margin":"20px 0 0","color":"#888","textAlign":"right","bottom":"110px","display":"inline-block","textDecoration":"none","float":"right","borderRadius":"4px","left":"calc(10% + 120px)","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"auto","fontSize":"14px","lineHeight":"40px","position":"absolute","height":"40px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<script>
			var vue = new Vue({
				el: '#register',
				data: {
					tabIndex: 1,
					userinfo: {}
				},
				updated: function() {
					layui.form.render(null, 'myForm');
				},
				computed: {
					SecondToDate: function() {
						var time = this.count;
						time = parseInt(time) + "秒后重发";
						return time;
					}
				},
				methods: {}
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tableName = '';
				// 注册
				form.on('submit(getSecurity)', function(data) {
                    if(!tableName) {
                        layer.msg('请选择角色', {
                            time: 2000,
                            icon: 5
                        })
                        return false
                    }
					data = data.field;
					var url = tableName + '/security' + '?username=' + data.username
					http.request(url, 'get', {}, function(res) {
						if (res.code == 0 && res.data) {
								vue.tabIndex = 0
							layer.msg('获取成功', {
								time: 2000,
								icon: 6
							}, function() {
								vue.userinfo = res.data
								vue.userinfo.mima = ''
								vue.tabIndex = 2
							})

						} else {
							layer.msg('用户名不存在', {
								time: 2000,
								icon: 5
							})
						}
					});
					return false
				});
				form.on('submit(validateSecurity)', function(data) {
					if (vue.userinfo.panswer !== vue.userinfo.panswer1) {
						layer.msg('密保答案错误', {
							time: 2000,
							icon: 5
						})
						return false
					}
					layer.msg('答案正确', {
						time: 2000,
						icon: 6
					}, function() {
						vue.tabIndex = 3
					})
					return false
				});
				form.on('submit(updatePassword)', function(data) {
					if (vue.userinfo.mima == '') {
						layer.msg('请输入密码', {
							time: 2000,
							icon: 5
						})
						return false
					}
					if (vue.userinfo.mima !== vue.userinfo.mima1) {
						layer.msg('两次密码输入不一致', {
							time: 2000,
							icon: 5
						})
						return false
					}
					http.requestJson(tableName + '/update', 'post', vue.userinfo, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.href = '../login/login.jsp';
						});
					});

					return false
				});

			});
		</script>
	</body>
</html>
