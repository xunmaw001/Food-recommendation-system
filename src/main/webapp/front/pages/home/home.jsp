<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: translate3d(0px, -10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						border-radius: 4px;
						padding: 30px 20px;
						left: 10px;
						background: linear-gradient(240deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: #fc8800;
					}
		
		.news .list-6 .swiper-button-next {
						border-radius: 4px;
						padding: 30px 20px;
						left: auto;
						background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: #fc8800;
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(10px,0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
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
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"20px 7% 0px","margin":"0px","borderColor":"#98dd90","alignItems":"flex-start","textAlign":"center","display":"block","flexWrap":"wrap","background":"url() no-repeat right bottom / 600px auto","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","order":"20"}'>
					<div v-if="false && 2 == 1" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 20px 0 0px","margin":"0px auto 40px","borderColor":"#7e6b5a","alignItems":"flex-start","flexDirection":"row","display":"flex","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230209/f86be17c39ec4de6afd148570ce1b67c.png) repeat-x right top / auto 100%,#0087a7","borderWidth":"0px 0","width":"100%","position":"relative","borderStyle":"dashed","height":"40px"}'>
						<span :style='{"padding":"0 80px 0 6px","color":"#fff","background":"url(http://codegen.caihongy.cn/20230209/9022d8ae645b41e0b62870c6884b4057.png) no-repeat right top / auto 100%,#0087a7","display":"block","fontSize":"14px","lineHeight":"40px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 20px 0 40px","margin":"0 0px 0 0","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230209/3bc6ce6ba65d4e9fb86595a7f02f2098.png) no-repeat right 10px,#0087a7","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"40px","fontWeight":"500"}'>美食店铺推荐</span>
					</div>
					
					<div v-if="false && 2 == 2" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #fef5da","margin":"0 0 40px","borderColor":"#f1e1b2","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"300px"}' class="list-item animation-box" v-for="(item,index) in meishidianpuRecommend" :key="index" @click="jump('../meishidianpu/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","boxShadow":"0px 6px 6px -6px #80afba","borderColor":"#0087a7 #bdeaf4 #0087a7 #bdeaf4","margin":"0px 0 0","objectFit":"cover","display":"inline-block","borderRadius":"20px","borderWidth":"2px 2px 1px 1px","background":"none","width":"48%","borderStyle":"dotted","height":"300px","order":"2"}' :src="item.dianputupian?baseurl+item.dianputupian.split(',')[0]:''" alt="" />
							<div :style='{"padding":"10px 0px","verticalAlign":"middle","boxShadow":"0px 12px 12px -12px #80afba","borderColor":"#bdeaf4 #0087a7 #bdeaf4 #0087a7","margin":"20px 0 0","alignItems":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"20px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px 1px 3px 4px","width":"50%","borderStyle":"solid","height":"260px","zIndex":"999"}' class="item-info">
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.dianpubianhao}}</div>
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.dianpumingcheng}}</div>
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.dianpudizhi}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"cursor":"pointer","padding":"0 2px 0 10px","margin":"20px auto 20px","borderColor":"#f0d6dc","textAlign":"center","display":"inline-block","minWidth":"120px","right":"calc(7% + 0px)","borderRadius":"8px","top":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"44px"}' @click="jump('../meishidianpu/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->
				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"20px 7% 0px","margin":"0px","borderColor":"#98dd90","alignItems":"flex-start","textAlign":"center","display":"block","flexWrap":"wrap","background":"url() no-repeat right bottom / 600px auto","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","order":"20"}'>
					<div v-if="false && 2 == 1" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 20px 0 0px","margin":"0px auto 40px","borderColor":"#7e6b5a","alignItems":"flex-start","flexDirection":"row","display":"flex","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230209/f86be17c39ec4de6afd148570ce1b67c.png) repeat-x right top / auto 100%,#0087a7","borderWidth":"0px 0","width":"100%","position":"relative","borderStyle":"dashed","height":"40px"}'>
						<span :style='{"padding":"0 80px 0 6px","color":"#fff","background":"url(http://codegen.caihongy.cn/20230209/9022d8ae645b41e0b62870c6884b4057.png) no-repeat right top / auto 100%,#0087a7","display":"block","fontSize":"14px","lineHeight":"40px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 20px 0 40px","margin":"0 0px 0 0","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230209/3bc6ce6ba65d4e9fb86595a7f02f2098.png) no-repeat right 10px,#0087a7","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"40px","fontWeight":"500"}'>热门美食推荐</span>
					</div>
					
					<div v-if="false && 2 == 2" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #fef5da","margin":"0 0 40px","borderColor":"#f1e1b2","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"300px"}' class="list-item animation-box" v-for="(item,index) in remenmeishiRecommend" :key="index" @click="jump('../remenmeishi/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","boxShadow":"0px 6px 6px -6px #80afba","borderColor":"#0087a7 #bdeaf4 #0087a7 #bdeaf4","margin":"0px 0 0","objectFit":"cover","display":"inline-block","borderRadius":"20px","borderWidth":"2px 2px 1px 1px","background":"none","width":"48%","borderStyle":"dotted","height":"300px","order":"2"}' :src="item.meishitupian?baseurl+item.meishitupian.split(',')[0]:''" alt="" />
							<div :style='{"padding":"10px 0px","verticalAlign":"middle","boxShadow":"0px 12px 12px -12px #80afba","borderColor":"#bdeaf4 #0087a7 #bdeaf4 #0087a7","margin":"20px 0 0","alignItems":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"20px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px 1px 3px 4px","width":"50%","borderStyle":"solid","height":"260px","zIndex":"999"}' class="item-info">
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.meishimingcheng}}</div>
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.meishileixing}}</div>
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.meishididian}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"cursor":"pointer","padding":"0 2px 0 10px","margin":"20px auto 20px","borderColor":"#f0d6dc","textAlign":"center","display":"inline-block","minWidth":"120px","right":"calc(7% + 0px)","borderRadius":"8px","top":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"44px"}' @click="jump('../remenmeishi/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->
				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"20px 7% 0px","margin":"0px","borderColor":"#98dd90","alignItems":"flex-start","textAlign":"center","display":"block","flexWrap":"wrap","background":"url() no-repeat right bottom / 600px auto","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","order":"20"}'>
					<div v-if="false && 2 == 1" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 20px 0 0px","margin":"0px auto 40px","borderColor":"#7e6b5a","alignItems":"flex-start","flexDirection":"row","display":"flex","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230209/f86be17c39ec4de6afd148570ce1b67c.png) repeat-x right top / auto 100%,#0087a7","borderWidth":"0px 0","width":"100%","position":"relative","borderStyle":"dashed","height":"40px"}'>
						<span :style='{"padding":"0 80px 0 6px","color":"#fff","background":"url(http://codegen.caihongy.cn/20230209/9022d8ae645b41e0b62870c6884b4057.png) no-repeat right top / auto 100%,#0087a7","display":"block","fontSize":"14px","lineHeight":"40px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 20px 0 40px","margin":"0 0px 0 0","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230209/3bc6ce6ba65d4e9fb86595a7f02f2098.png) no-repeat right 10px,#0087a7","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"40px","fontWeight":"500"}'>美食教程推荐</span>
					</div>
					
					<div v-if="false && 2 == 2" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式二 -->
				    <div :style='{"padding":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #fef5da","margin":"0 0 40px","borderColor":"#f1e1b2","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"48%","fontSize":"0","position":"relative","borderStyle":"solid","height":"300px"}' class="list-item animation-box" v-for="(item,index) in meishijiaochengRecommend" :key="index" @click="jump('../meishijiaocheng/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","boxShadow":"0px 6px 6px -6px #80afba","borderColor":"#0087a7 #bdeaf4 #0087a7 #bdeaf4","margin":"0px 0 0","objectFit":"cover","display":"inline-block","borderRadius":"20px","borderWidth":"2px 2px 1px 1px","background":"none","width":"48%","borderStyle":"dotted","height":"300px","order":"2"}' :src="item.meishitupian?baseurl+item.meishitupian.split(',')[0]:''" alt="" />
							<div :style='{"padding":"10px 0px","verticalAlign":"middle","boxShadow":"0px 12px 12px -12px #80afba","borderColor":"#bdeaf4 #0087a7 #bdeaf4 #0087a7","margin":"20px 0 0","alignItems":"center","display":"flex","justifyContent":"center","overflow":"hidden","borderRadius":"20px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","borderWidth":"1px 1px 3px 4px","width":"50%","borderStyle":"solid","height":"260px","zIndex":"999"}' class="item-info">
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.meishimingcheng}}</div>
								<div :style='{"padding":"10px","borderColor":"#f5eee6","margin":"0 10px 0 0","color":"#333","alignItems":"center","textAlign":"center","display":"flex","overflow":"hidden","borderRadius":"0px","borderWidth":"0 0 0px","background":"none","width":"40px","lineHeight":"16px","fontSize":"14px","borderStyle":"solid","height":"260px"}' class="name">{{item.meishileixing}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"cursor":"pointer","padding":"0 2px 0 10px","margin":"20px auto 20px","borderColor":"#f0d6dc","textAlign":"center","display":"inline-block","minWidth":"120px","right":"calc(7% + 0px)","borderRadius":"8px","top":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"44px"}' @click="jump('../meishijiaocheng/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"padding":"0px","borderColor":"#f9f9f9","margin":"0px 0 0","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230208/7ff655a2b70d4061a845fc8af0bee79d.jpg) no-repeat left center / 100% 100%","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"240px"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230203/5f655a8a430a46a2ac37dda2bbd40ad9.jpg) no-repeat left center / 100% 100%","display":"none","height":"240px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"padding":"0","margin":"20px 0 0","borderColor":"#98dd90","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","flex":"1","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"3"}'>
					<div v-if="true && 3 == 1" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#0087a7","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230210/3b7bf49b27c640098ae3a8c454e1e35c.jpg) no-repeat center top","height":"320px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 20px 0 0px","margin":"0px auto 40px","borderColor":"#7e6b5a","flexDirection":"row","display":"flex","borderRadius":"0px","top":"0px","background":"url(http://codegen.caihongy.cn/20230209/f86be17c39ec4de6afd148570ce1b67c.png) repeat-x right top / auto 100%,#0087a7","borderWidth":"0px 0","width":"86%","position":"relative","borderStyle":"dashed","zIndex":"99","height":"40px"}'>
						<span :style='{"padding":"0 80px 0 6px","color":"#fff","background":"url(http://codegen.caihongy.cn/20230209/9022d8ae645b41e0b62870c6884b4057.png) no-repeat right top / auto 100%,#0087a7","display":"block","fontSize":"14px","lineHeight":"40px","order":"2","textTransform":"uppercase"}'>HOME NEWS</span>
						<span :style='{"padding":"0 20px 0 40px","margin":"0 0px 0 0","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230209/3bc6ce6ba65d4e9fb86595a7f02f2098.png) no-repeat right 10px,#0087a7","display":"inline-block","width":"auto","fontSize":"18px","lineHeight":"40px","fontWeight":"500"}'>美食资讯</span>
					</div>
					
					<div v-if="true && 3 == 2" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#0087a7","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230210/3b7bf49b27c640098ae3a8c454e1e35c.jpg) no-repeat center top","height":"320px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<!-- 样式二 -->
					<div :style='{"padding":"0 7%","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","margin":"0 0 40px","background":"none","display":"inline-block","width":"48%","fontSize":"0","position":"relative","height":"auto"}' v-if="newsList.length" v-for="(item,index) in newsList" :key="index" class="list-item animation-box" @click="jump('../news/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px","boxShadow":"0px 6px 6px -6px #80afba","borderColor":"#0087a7 #bdeaf4 #bdeaf4 #0087a7","objectFit":"cover","borderRadius":"20px","borderWidth":"1px 1px 2px 1px","display":"inline-block","width":"180px","float":"left","borderStyle":"dotted","height":"180px"}' :src="baseurl+item.picture" alt="" />
							<div :style='{"padding":"10px","verticalAlign":"middle","boxShadow":"0px 12px 12px -12px #80afba","borderColor":"#0087a7 #bdeaf4 #0087a7 #bdeaf4","margin":"50px 0 0","display":"inline-block","float":"right","overflow":"hidden","borderRadius":"20px 20px","borderWidth":"8px 3px 1px 2px","background":"url(http://codegen.caihongy.cn/20230210/7d53b0e6bd6b44dc87a1dcd33f7af58f.gif)","width":"calc(100% - 200px)","borderStyle":"solid","height":"auto"}' class="item-info">
								<div :style='{"lineHeight":"32px","fontSize":"14px","whiteSpace":"nowrap","overflow":"hidden","textOverflow":"ellipsis","color":"#333"}' class="name">{{item.title}}</div>
								<div :style='{"color":"#999","textAlign":"right","fontSize":"12px"}' class="time">{{item.addtime}}</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 20px","margin":"0px auto 0","borderColor":"#f0d6dc","textAlign":"center","display":"inline-block","minWidth":"120px","right":"calc(7% + 0px)","borderRadius":"8px","top":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"44px","zIndex":"99"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 3 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#0087a7","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230210/3b7bf49b27c640098ae3a8c454e1e35c.jpg) no-repeat center top","height":"320px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
			

			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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


                    // 推荐数据
					meishidianpuRecommend: [],
                    // 推荐数据
					remenmeishiRecommend: [],
                    // 推荐数据
					meishijiaochengRecommend: [],





                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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


                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 2;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "meishidianpu/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.meishidianpuRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendmeishidianpu', options)
								new Swiper ('#recommendremenmeishi', options)
								new Swiper ('#recommendmeishijiaocheng', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipermeishidianpu', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                // 获取推荐信息
      				var autoSortUrl = "remenmeishi/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "remenmeishi/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.remenmeishiRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendmeishidianpu', options)
								new Swiper ('#recommendremenmeishi', options)
								new Swiper ('#recommendmeishijiaocheng', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperremenmeishi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                // 获取推荐信息
      				var autoSortUrl = "meishijiaocheng/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "meishijiaocheng/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.meishijiaochengRecommend = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendmeishidianpu', options)
								new Swiper ('#recommendremenmeishi', options)
								new Swiper ('#recommendmeishijiaocheng', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipermeishijiaocheng', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				


				
			});
		</script>
	</body>
</html>
