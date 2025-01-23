<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<!-- font-awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>
</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
				
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">热门美食管理</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>热门美食管理</span></li>
				<li class="breadcrumb-item-two"><span>热门美食列表</span></li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
				
		<!-- Main Content -->
		<div id="center-container">

			<div class="center-form">
				<div class="form-item">
					<label>美食名称</label>
					<input type="text" id="meishimingchengSearch" class="form-control form-control-sm" placeholder="请输入美食名称" aria-controls="tableId">
				</div>
				<div class="form-item">
					<label>美食类型</label>
					<select name="meishileixing" id="meishileixingSelect" class="form-control form-control-sm" aria-controls="tableId">
					</select>
				</div>
				<div class="form-item">
					<label>美食地点</label>
					<input type="text" id="meishididianSearch" class="form-control form-control-sm" placeholder="请输入美食地点" aria-controls="tableId">
				</div>
				<div class="form-item">
					<label>价格</label>
					<div class="item-body">
						<input type="text" id="price_start" class="begin form-control form-control-sm" placeholder="最小价格" aria-controls="tableId">
						<span>至</span>
						<input type="text" id="price_end" class="end form-control form-control-sm" placeholder="最大价格" aria-controls="tableId">
					</div>
				</div>
				<button onclick="search()" type="button" class="btn btn-search btn-primary">查询</button>
			</div>
			
			<div class="btns">
				<button onclick="add()" type="button" class="btn btn-success btn-add 新增"><i class="fa fa-plus"></i><span>添加</span></button>
				<button onclick="deleteMore()" type="button" class="btn btn-danger btn-del 删除"><i class="fa fa-remove"></i><span>批量删除</span></button>
			</div>

			<table id="tableId" class="table table-bordered">
				<thead>
					<tr>
						<th class="no-sort" style="min-width: 35px;">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox" id="select-all" onclick="chooseAll()">
								<label class="custom-control-label" for="select-all"></label>
							</div>
						</th>
						<th onclick="sort('meishimingcheng')">美食名称<i id="meishimingchengIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('meishileixing')">美食类型<i id="meishileixingIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('meishididian')">美食地点<i id="meishididianIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('zhuyaoshicai')">主要食材<i id="zhuyaoshicaiIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('kouweitedian')">口味特点<i id="kouweitedianIcon" class="fa fa-sort"></i></th>
						<th>美食图片</th>
						<th onclick="sort('onelimittimes')">单限<i id="onelimittimesIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('alllimittimes')">库存<i id="alllimittimesIcon" class="fa fa-sort"></i></th>
						<th onclick="sort('price')">价格<i id="priceIcon" class="fa fa-sort"></i></th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
			

			<div id="pagination">
				<div class="dataTables_length" id="tableId_length">
					<select name="tableId_length" aria-controls="tableId" id="selectPageSize" onchange="changePageSize()">
						<option value="10">10</option>
						<option value="25">25</option>
						<option value="50">50</option>
						<option value="100">100</option>
					</select> 
					<span class="text">条每页</span>
				</div>
				<ul class="pagination">
					<li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
						<a class="page-link" href="#" tabindex="-1">上一页</a>
					</li>
					<li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
						<a class="page-link" href="#">下一页</a>
					</li>
				</ul>
			</div>
		</div>
		

	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>
		<%@ include file="../../static/getRoleButtons.js"%>
		<%@ include file="../../static/crossBtnControl.js"%>
		var tableName = "remenmeishi";
		var pageType = "list";
	  	var searchForm = { key: ""};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder= '';
		var ids = [];
		var checkAll = false;


		var meishileixingOptions = [];

		function init() {
			// 满足条件渲染提醒接口
		}
		// 改变每页记录条数
		function changePageSize() {
            pageIndex=1;
		    var selection = document.getElementById('selectPageSize');
		    var index = selection.selectedIndex;
			pageSize = selection.options[index].value;
			getDataList();
        }		
		//排序
		function sort(columnName){
			var iconId = '#'+columnName+'Icon'
			$('th i').attr('class','fa fa-sort');
			if(sortColumn == '' || sortColumn != columnName){
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class','fa fa-sort-asc');
			}
			if(sortColumn == columnName){
				if(sortOrder == 'asc'){
					sortOrder = 'desc';
					$(iconId).attr('class','fa fa-sort-desc');
				}else{
					sortOrder = 'asc';
					$(iconId).attr('class','fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}		
		

		// 查询
		function search(){
			searchForm = { key: ""};
			if($('#meishimingchengSearch').val() != null && $('#meishimingchengSearch').val() != ''){
				searchForm.meishimingcheng ="%" +  $('#meishimingchengSearch').val() + "%";
			}
			
			var meishileixingIndex = document.getElementById("meishileixingSelect").selectedIndex;
			var meishileixingOptions = document.getElementById("meishileixingSelect").options;
			var meishileixingSelectedOption = meishileixingOptions[meishileixingIndex]
			if(meishileixingSelectedOption.text != null && meishileixingSelectedOption.text != ''){
				searchForm.meishileixing = meishileixingSelectedOption.text;
			}
			if($('#meishididianSearch').val() != null && $('#meishididianSearch').val() != ''){
				searchForm.meishididian ="%" +  $('#meishididianSearch').val() + "%";
			}
			
			if($('#price_start').val() != null && $('#price_start').val() != ''){
				searchForm.price_start = $('#price_start').val();
			}
			if($('#price_end').val() != null && $('#price_end').val() != ''){
				searchForm.price_end = $('#price_end').val();
			}
            pageIndex=1;
			getDataList();
		}		
		// 获取数据列表
        function getDataList() {
			http("remenmeishi/page","GET",{
				page: pageIndex,
				limit: pageSize,
				sort: sortColumn,
				order: sortOrder,
				meishimingcheng : searchForm.meishimingcheng,	
				meishileixing : searchForm.meishileixing,	
				meishididian : searchForm.meishididian,	
				price_start : searchForm.price_start,
				price_end : searchForm.price_end,
			},(res)=>{
				if(res.code == 0){
					clear();
					dataList = res.data.list;
					totalPage = res.data.totalPage;
					//var tbody = document.getElementById('tbMain');
					for(var i = 0;i < dataList.length; i++){ //遍历一下表格数据  
						var trow = setDataRow(dataList[i],i); //定义一个方法,返回tr数据 
						$('tbody').append(trow); 
					}
					pagination(); //渲染翻页组件
					getRoleButtons();// 权限按钮控制
				}
			});
        }		
		// 渲染表格数据
		function setDataRow(item,number){
			//创建行 
			var row = document.createElement('tr'); 
			row.setAttribute('class','useOnce');
			//创建勾选框
			var checkbox = document.createElement('td');
			var checkboxDiv = document.createElement('div');
			checkboxDiv.setAttribute("class","custom-control custom-checkbox");
			var checkboxInput = document.createElement('input');
			checkboxInput.setAttribute("class","custom-control-input");
			checkboxInput.setAttribute("type","checkbox");
			checkboxInput.setAttribute('name','chk');
			checkboxInput.setAttribute('value',item.id);
			checkboxInput.setAttribute("id",number);
			checkboxDiv.appendChild(checkboxInput);
			var checkboxLabel = document.createElement('label');
			checkboxLabel.setAttribute("class","custom-control-label");
			checkboxLabel.setAttribute("for",number);
			checkboxDiv.appendChild(checkboxLabel);
			checkbox.appendChild(checkboxDiv);
			row.appendChild(checkbox)

			var meishimingchengCell  = document.createElement('td');

						 meishimingchengCell.innerHTML = item.meishimingcheng;

			row.appendChild(meishimingchengCell);
			var meishileixingCell  = document.createElement('td');

						 meishileixingCell.innerHTML = item.meishileixing;

			row.appendChild(meishileixingCell);
			var meishididianCell  = document.createElement('td');

						 meishididianCell.innerHTML = item.meishididian;

			row.appendChild(meishididianCell);
			var zhuyaoshicaiCell  = document.createElement('td');

						 zhuyaoshicaiCell.innerHTML = item.zhuyaoshicai;

			row.appendChild(zhuyaoshicaiCell);
			var kouweitedianCell  = document.createElement('td');

						 kouweitedianCell.innerHTML = item.kouweitedian;

			row.appendChild(kouweitedianCell);
			var meishijieshaoCell  = document.createElement('td');

			
			var meishitupianCell  = document.createElement('td');

			            var meishitupianImg = document.createElement('img');
            meishitupianImg.setAttribute('src',item.meishitupian?(baseUrl+item.meishitupian.split(",")[0]):'');
			meishitupianImg.setAttribute('height',100);
			meishitupianImg.setAttribute('width',100);
			meishitupianCell.appendChild(meishitupianImg);


			row.appendChild(meishitupianCell);
			var onelimittimesCell  = document.createElement('td');

						 onelimittimesCell.innerHTML = item.onelimittimes;

			row.appendChild(onelimittimesCell);
			var alllimittimesCell  = document.createElement('td');

						 alllimittimesCell.innerHTML = item.alllimittimes;

			row.appendChild(alllimittimesCell);
			var thumbsupnumCell  = document.createElement('td');

			
			var crazilynumCell  = document.createElement('td');

			
			var clicktimeCell  = document.createElement('td');

			
			var priceCell  = document.createElement('td');

						  priceCell.innerHTML = item.price; 


			row.appendChild(priceCell);

			//每行按钮
			var btnGroup = document.createElement('td');


			//详情按钮
			var detailBtn = document.createElement('button');
			var detailAttr = "detail(" + item.id + ')';
			detailBtn.setAttribute("type","button");
			detailBtn.setAttribute("class","btn btn-info btn-sm 查看");
			detailBtn.setAttribute("onclick",detailAttr);
			detailBtn.innerHTML = "查看"
			btnGroup.appendChild(detailBtn)
			//修改按钮
			var editBtn = document.createElement('button');
			var editAttr = 'edit(' +  item.id + ')';
			editBtn.setAttribute("type","button");
			editBtn.setAttribute("class","btn btn-warning btn-sm 修改");
			editBtn.setAttribute("onclick",editAttr);
			editBtn.innerHTML = "修改"
			btnGroup.appendChild(editBtn)

                        //查看评论按钮
                        var discussListBtn = document.createElement('button');
                        var discussListAttr = 'discussList(' +  item.id + ')';
                        discussListBtn.setAttribute("type","button");
                        discussListBtn.setAttribute("class","btn btn-warning btn-sm 查看评论");
                        discussListBtn.setAttribute("onclick",discussListAttr);
                        discussListBtn.innerHTML = "查看评论"
                        btnGroup.appendChild(discussListBtn)
			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' +  item.id + ')';
			deleteBtn.setAttribute("type","button");
			deleteBtn.setAttribute("class","btn btn-danger btn-sm 删除");
			deleteBtn.setAttribute("onclick",deleteAttr);
			deleteBtn.innerHTML = "删除"
			btnGroup.appendChild(deleteBtn)


			row.appendChild(btnGroup)
			return row;
		}		


		// 翻页
        function pageNumChange(val) {
            if(val == 'pre') {
                pageIndex--;
            }else if(val == 'next'){
                pageIndex++;
            }else{
                pageIndex = val;
            }
			getDataList();
        }		
		// 下载
		function download(url){
			window.open(url);
		}
		// 打开新窗口播放媒体
		function mediaPlay(url){
			window.open(url);
		}		
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
            if(totalPage!=0) {
                //计算页码
                for(var i=0;i<3;i++){
                    if(endIndex==totalPage){ break;}
                    endIndex++;
                    point--;
                }
                for(var i=0;i<3;i++){
                    if(beginIndex==1){break;}
                    beginIndex--;
                    point--;
                }
                if(point>0){
                    while (point>0){
                        if(endIndex==totalPage){ break;}
                        endIndex++;
                        point--;
                    }
                    while (point>0){
                        if(beginIndex==1){ break;}
                        beginIndex--;
                        point--
                    }
                }
            }
			// 是否显示 前一页 按钮
			if(pageIndex>1){
				$('#tableId_previous').show();
			}else{
				$('#tableId_previous').hide();
			}
			// 渲染页码按钮
			for(var i=beginIndex;i<=endIndex;i++){
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick',"pageNumChange("+i+")");
				if(pageIndex == i){
					pageNum.setAttribute('class','paginate_button page-item active useOnce');
				}else{
					pageNum.setAttribute('class','paginate_button page-item useOnce');
				}								
				var pageHref = document.createElement('a');
				pageHref.setAttribute('class','page-link');
				pageHref.setAttribute('href','#');
				pageHref.setAttribute('aria-controls','tableId');
				pageHref.setAttribute('data-dt-idx',i);
				pageHref.setAttribute('tabindex',0);
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$('#tableId_next').before(pageNum);
			}
			// 是否显示 下一页 按钮
			if(pageIndex < totalPage){
				$('#tableId_next').show();
				$('#tableId_next a').attr('data-dt-idx',endIndex+1);
			}else{
				$('#tableId_next').hide();
			}
			var pageNumInfo = "当前第 "+ pageIndex + " 页，共 "+ totalPage + " 页";
			$('#tableId_info').html(pageNumInfo);
		}		
		// 跳转到指定页
		function toThatPage(){
			//var index = document.getElementById('pageIndexInput').value;
			if(index<0 || index>totalPage){
				alert('请输入正确的页码');
			}else {
				pageNumChange(index);
			}
		}		
		// 全选/全不选
		function chooseAll(){
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				boxs[i].checked= checkAll;
			}
		}		
	
		// 批量删除
		function deleteMore(){
			ids = []
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				if(boxs[i].checked){
					ids.push(boxs[i].value)
				}
			}
			if(ids.length == 0){
				alert('请勾选要删除的记录');
			}else{
				remove(ids);
			}
		}	
		// 删除
        function remove(id) { 
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
				var paramArray = [];
				if (id == ids){
					paramArray = id;
				}else{
					paramArray.push(id);
				}             
				httpJson("remenmeishi/delete","POST",paramArray,(res)=>{
					if(res.code == 0){
						getDataList();		
						alert('删除成功');
					}
				});         
            }
            else {
                alert("已取消操作");
            }
        }			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		//修改
        function edit(id) {
            window.sessionStorage.setItem('id', id)
            window.location.href = "add-or-update.jsp"
        }
	//评论列表
	function discussList(id) {
            window.sessionStorage.setItem('refid', id)
            window.location.href = "../discussremenmeishi/list.jsp"
        }
		//清除会重复渲染的节点
        function clear(){
        	var elements = document.getElementsByClassName('useOnce');
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
        }
	//添加
	function add(){
		window.location.href = "add-or-update.jsp"
	}
	//单列求和
	function getSum(colName){
		http("remenmeishi"+colName,"GET",{
			tableName: "remenmeishi",
			columnName: colName
		},(res)=>{
			if(res.code == 0){
				return res.data.sum;
			}
		});
	}		
	// 查看详情
	function detail(id){
		window.sessionStorage.setItem("id", id);
		//window.sessionStorage.setItem("ifView", true);
		window.location.href = "info.jsp";
	}

	function meishileixingSelect(){
		//填充下拉框选项
		http("option/meishileixing/meishileixing","GET",{},(res)=>{
			if(res.code == 0){
				meishileixingOptions = res.data;
				var nullOption = document.createElement('option');
				var meishileixingSelect = document.getElementById('meishileixingSelect');
				meishileixingSelect.appendChild(nullOption);
				for(var i=0;i<meishileixingOptions.length;i++){
					var meishileixingOption = document.createElement('option');
					meishileixingOption.setAttribute('name','meishileixingOption');
					meishileixingOption.setAttribute('value',meishileixingOptions[i]);
					meishileixingOption.innerHTML = meishileixingOptions[i];
					meishileixingSelect.appendChild(meishileixingOption);
				}
			}
		});
	}
	//跨表
	function crossTable(obj,crossTableName,crossOptAudit,statusColumnName,tips,statusColumnValue){
		window.sessionStorage.setItem('crossTableId',obj.id);
		window.sessionStorage.setItem('crossObj', JSON.stringify(obj));
		window.sessionStorage.setItem('crossTableName',"remenmeishi");
		window.sessionStorage.setItem('statusColumnName',statusColumnName);
		window.sessionStorage.setItem('statusColumnValue',statusColumnValue);
		window.sessionStorage.setItem('tips',tips);
		if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
			for (var o in obj){
				if(o==statusColumnName && obj[o]==statusColumnValue){
                    alert(tips);
					return
				}
			}
		}
		var url = "../"+crossTableName+"/add-or-update.jsp?cross=true";
		window.location.href = url;
	}










		$(document).ready(function() { 
			//激活翻页按钮
			$('#tableId_previous').attr('class','paginate_button page-item previous')
			$('#tableId_next').attr('class','paginate_button page-item next')
			//隐藏原生搜索框
			$('#tableId_filter').hide()
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();			
			init();
			getDataList();
			<%@ include file="../../static/myInfo.js"%>
			meishileixingSelect();
		});
	</script>
</body>

</html>
