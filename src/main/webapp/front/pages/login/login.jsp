<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 登陆 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
			</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#loginForm .l-redio .layui-form-radio {
						cursor: pointer;
						margin: 0;
						display: inline-block;
						vertical-align: middle;
						line-height: 44px;
					}
		
		#loginForm .l-redio .layui-form-radio .layui-icon {
						color: #999;
						display: inline-block;
						font-size: 18px;
						margin-right: 8px;
					}

		#loginForm .l-redio .layui-form-radio div {
						color: #999;
						display: inline-block;
						vertical-align: middle;
						font-size: 14px;
					}

		#loginForm .l-redio .layui-form-radio.layui-form-radioed .layui-icon {
						color: #0087a7;
						display: inline-block;
						font-size: 18px;
					}

		#loginForm .l-redio .layui-form-radio.layui-form-radioed div {
						color: #0087a7;
						display: inline-block;
						vertical-align: middle;
						font-size: 14px;
					}
	</style>
	<body>
				<div id="login" class="login" :style='{"minHeight":"100vh","width":"100%","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230210/56b31276ba0b49338bdd2a61c6f51fb1.jpg) no-repeat center bottom / 100% auto","justifyContent":"flex-end","display":"flex"}'>
			<form id="loginForm" class="layui-form login-form" :style='{"padding":"0px 0px 180px","margin":"120px auto 120px","borderColor":"#0087a7","display":"flex","justifyContent":"center","borderRadius":"20px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230210/169100e4b2164361a254efa3eae9f5a8.jpg) no-repeat left bottom / 100% auto,#fffdfc","borderWidth":"8px","width":"880px","position":"relative","borderStyle":"outset","height":"auto"}'>
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#555","textAlign":"center","display":"none","width":"62%","lineHeight":"44px","fontSize":"24px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / LOGIN</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"30px 0 30px","borderColor":"#bdefb6","color":"#333","textAlign":"center","borderRadius":"0px","background":"nnoe","borderWidth":"0px","width":"100%","lineHeight":"40px","fontSize":"20px","borderStyle":"solid","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>美食推荐系统</div>
				<div :style='{"width":"80%","margin":"0 0 20px","flexWrap":"wrap","display":"flex"}' class="form-item">
				    <div class="layui-form-label" v-if="false" :style='{"width":"64px","padding":"0 10px 0 0","lineHeight":"44px","fontSize":"14px","color":"#333"}'>账号</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#eee","color":"#333","outline":"0px solid #efefef","outlineOffset":"4px","borderRadius":"20px","flex":"1","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"100%","fontSize":"14px","borderStyle":"solid","height":"36px"}' type="text" name="username" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"80%","margin":"0 0 20px","flexWrap":"wrap","display":"flex"}' class="form-item">
				    <div class="layui-form-label" v-if="false" :style='{"width":"64px","padding":"0 10px 0 0","lineHeight":"44px","fontSize":"14px","color":"#333"}'>密码</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#eee","color":"#333","outline":"0px solid #efefef","outlineOffset":"4px","borderRadius":"20px","flex":"1","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"100%","fontSize":"14px","borderStyle":"solid","height":"36px"}' type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="roles.length>1" :style='{"width":"100%","margin":"10px 10%","lineHeight":"44px","background":"none","height":"44px"}' class="form-item l-redio">
					<input v-for="(item,index) in roles" v-bind:key="index" type="radio" name="role" id="role" :value="item.tableName" :title="item.roleName">
				</div>
				<div :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0px 0px","margin":"0 auto","borderColor":"#ddd","textAlign":"left","bottom":"110px","borderRadius":"0","left":"10%","background":"none","borderWidth":"0px","width":"80%","position":"absolute","borderStyle":"solid","height":"auto","order":"4"}'>
					<button :style='{"border":"0","cursor":"pointer","padding":"0px 0px","margin":"0px auto 0","borderColor":"#0087a7","color":"#0087a7","textAlign":"center","display":"inline-block","letterSpacing":"4px","minWidth":"100px","outline":"none","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="login">登录</button>
				</div>
				<div :style='{"padding":"0 0px","margin":"10px 0px 10px 0","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"80%","height":"auto","order":"3"}'>
					<a :style='{"cursor":"pointer","padding":"0 20px","margin":"0 10px 10px 0px","borderColor":"#0087a7","color":"#0087a7","textAlign":"center","textDecoration":"none","minWidth":"100px","borderRadius":"4px","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-if="item.tableName!='users'&&item.hasFrontRegister=='是'" v-for="(item,index) in menu" v-bind:key="index" :href="'javascript:registerClick(\''+item.tableName+'\')'">注册{{item.roleName.replace('注册','')}}</a>
				</div>
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
				<script>
			var vue = new Vue({
				el: '#login',
				data: {
					menu: menu,
                    roles: []
				},
                created(){
                    for(let item in this.menu) {
                        if(this.menu[item].hasFrontLogin=='是') {
                                this.roles.push(this.menu[item]);
                        }
                    }       
                },
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})
			
			var codes = [{
					num: 1,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 2,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 3,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 4,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }]

			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;
				
				function randomString() {
					var len = 4;
					var chars = [
					  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
					  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
					  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
					  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
					  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
					  '3', '4', '5', '6', '7', '8', '9'
					]
					var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
					var sizes = ['14', '15', '16', '17', '18']
					
					var output = []
					for (var i = 0; i < len; i++) {
					  // 随机验证码
					  var key = Math.floor(Math.random() * chars.length)
					  codes[i].num = chars[key]
					  // 随机验证码颜色
					  var code = '#'
					  for (var j = 0; j < 6; j++) {
					    var key = Math.floor(Math.random() * colors.length)
					    code += colors[key]
					  }
					  codes[i].color = code
					  // 随机验证码方向
					  var rotate = Math.floor(Math.random() * 45)
					  var plus = Math.floor(Math.random() * 2)
					  if (plus == 1) rotate = '-' + rotate
					  codes[i].rotate = 'rotate(' + rotate + 'deg)'
					  // 随机验证码字体大小
					  var size = Math.floor(Math.random() * sizes.length)
					  codes[i].size = sizes[size] + 'px'
					}
					
					var str = ''
					for(var i = 0;i<codes.length;i++) {
						str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
					}
					jquery('#nums').html('').append(str);
				}
				
				jquery('#nums').click(function(){
					randomString();
				})
				
				randomString();

				// 登录
				form.on('submit(login)', function(data) {
					data = data.field;
                    if (vue.roles.length!=1) {
                        if (!data.role) {
                            layer.msg('请选择登录用户类型', {
                            time: 2000,
                            icon: 5
                            });
                            return false;
                        }
                    } else {
                            data.role = vue.roles[0].tableName;
                    }
					
					http.request(data.role + '/login', 'get', data, function(res) {
						layer.msg('登录成功', {
							time: 2000,
							icon: 6
						});
						// 登录凭证
						localStorage.setItem('Token', res.token);
                        var roleName = "";
                        if(typeof(jquery('#role:checked').attr('title')) == "undefined") {
                            roleName = vue.roles[0].roleName;
                        } else {
                            roleName = jquery('#role:checked').attr('title');
                        }
                        localStorage.setItem('role', roleName);
						// 当前登录用户角色
						localStorage.setItem('userTable', data.role);
						localStorage.setItem('sessionTable', data.role);
						// 用户名称
						localStorage.setItem('adminName', data.username);
						http.request(data.role + '/session', 'get', {}, function(res) {
							// 用户id
							localStorage.setItem('userid', res.data.id);
							if(res.data.vip) {
								localStorage.setItem('vip', res.data.vip);
							}
                            if(res.data.touxiang) {
                                localStorage.setItem('headportrait', res.data.touxiang);
                            } else if(res.data.headportrait) {
                                localStorage.setItem('headportrait', res.data.headportrait);
                            }
							// 路径访问设置
							window.location.href = '../../index.jsp';
						})
						
					});
					return false
				});

			});

			/**
			 * 跳转登录
			 * @param {Object} tablename
			 */
			function registerClick(tablename) {
				window.location.href = '../' + tablename + '/register.jsp?tablename=' + tablename;
			}
		</script>
	</body>
</html>
