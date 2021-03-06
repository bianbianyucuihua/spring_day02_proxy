<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="bathpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>数据 - AdminLTE2定制版</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">
<meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${bathpath}/static/css/style.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${bathpath}/static/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<!-- @@master = admin-layout.html-->
		<!-- @@block = content -->

		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					数据管理 <small>数据列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">数据管理</a></li>
					<li class="active">数据列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">列表</h3>
					</div>

					<div class="box-body">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
										<button type="button" class="btn btn-default" title="新建"
											onclick="location.href='${bathpath}/product/toSave'">
											<i class="fa fa-file-o"></i> 新建
										</button>
										<button type="button" class="btn btn-default" title="删除">
											<i class="fa fa-trash-o"></i> 删除
										</button>
										<button type="button" class="btn btn-default" title="开启">
											<i class="fa fa-check"></i> 开启
										</button>
										<button type="button" class="btn btn-default" title="屏蔽">
											<i class="fa fa-ban"></i> 屏蔽
										</button>
										<button type="button" class="btn btn-default" title="刷新">
											<i class="fa fa-refresh"></i> 刷新
										</button>
									</div>
								</div>
							</div>
							<div class="box-tools pull-right">
								<div class="has-feedback">
									<input type="text" class="form-control input-sm"
										placeholder="搜索"> <span
										class="glyphicon glyphicon-search form-control-feedback"></span>
								</div>
							</div>
							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th class="" style="padding-right: 0px;"><input
											id="selall" type="checkbox" class="icheckbox_square-blue">
										</th>
										<th class="sorting_asc">ID</th>
										<th class="sorting_desc">编号</th>
										<th class="sorting_asc sorting_asc_disabled">产品名称</th>
										<th class="sorting_desc sorting_desc_disabled">出发城市</th>
										<th class="sorting">出发时间</th>
										<th class="text-center sorting">产品价格</th>
										<th class="sorting">产品描述</th>
										<th class="text-center sorting">状态</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pageInfo.records}" var="product">
										<tr>
											<td><input name="ids" type="checkbox"></td>
											<td>${product.id }</td>
											<td>${product.productNum }</td>
											<td>${product.productName }</td>
											<td>${product.cityName }</td>
											<td>${product.departureTime }</td>
											<td class="text-center">${product.productPrice }</td>
											<td>${product.productDesc }</td>
											<td class="text-center">${product.productStatus==0?"开启":"屏蔽"}</td>
											<td class="text-center">
												<button type="button" class="btn bg-olive btn-xs">订单</button>
												<button type="button" class="btn bg-olive btn-xs">详情</button>
												<button type="button" class="btn bg-olive btn-xs">编辑</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--数据列表/-->

						</div>
						<!-- 数据表格 /-->


					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
					<div class="box-footer">
						<div class="pull-left">
							<div class="form-group form-inline">
								总共${pages}页，共${pageInfo.total}条数据。 每页
								<select class="form-control" id="selectPages">
									<option>10</option>
									<option ${pageInfo.size==20?"selected":""}>20</option>
									<option ${pageInfo.size==30?"selected":""}>30</option>
								</select> 条
							</div>
						</div>

						<div class="box-tools pull-right">
							<ul class="pagination">
								<li>
									<a href="${bathpath}/product/findAll?current=1&size=${pageInfo.size}" aria-label="next">
										<span aria-hidden="true">首页</span>
									</a>
								</li>
								<c:if test="${pageInfo.current!=1}">
									<li>
										<a href="${bathpath}/product/findAll?current=${pageInfo.current-1}&size=${pageInfo.size}" aria-label="Previous">
											<span aria-hidden="true">上一页</span>
										</a>
									</li>
								</c:if>
								<c:choose>
									<c:when test="${pages<=5}">
										<c:set var="begin" value="1"></c:set>
										<c:set var="end" value="${pages}"></c:set>
									</c:when>
									<c:when test="${pageInfo.current<=3}">
										<c:set var="begin" value="1"></c:set>
										<c:set var="end" value="5"></c:set>
									</c:when>
									<c:otherwise>
										<c:set var="begin" value="${pageInfo.current-2}"></c:set>
										<c:set var="end" value="${pageInfo.current+2}"></c:set>
										<c:if test="${end>pages}">
											<c:set var="begin" value="${pages-4}"></c:set>
											<c:set var="end" value="${pages}"></c:set>
										</c:if>
									</c:otherwise>
								</c:choose>

								<c:forEach var="i" begin="${begin}" end="${end}">
									<li ${i==pageInfo.current?"class='active'":""}>
										<a href="${bathpath}/product/findAll?current=${i}&size=${pageInfo.size}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pageInfo.current!=pages}">
									<li>
										<a href="${bathpath}/product/findAll?current=${pageInfo.current+1}&size=${pageInfo.size}" aria-label="next">
											<span aria-hidden="true">下一页</span>
										</a>
									</li>
								</c:if>
								<li>
									<a href="${bathpath}/product/findAll?current=${pages}&size=${pageInfo.size}" aria-label="next">
										<span aria-hidden="true">尾页</span>
									</a>
								</li>
							</ul>
						</div>

					</div>
					<!-- /.box-footer-->



				</div>

			</section>
			<!-- 正文区域 /-->

		</div>
		<!-- @@close -->
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.8
			</div>
			<strong>Copyright &copy; 2020 <a
				href="http://www.itcast.cn">鸿奕科技</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 底部导航 /-->

	</div>


	<script
		src="${bathpath}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${bathpath}/static/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${bathpath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${bathpath}/static/plugins/raphael/raphael-min.js"></script>
	<script
		src="${bathpath}/static/plugins/morris/morris.min.js"></script>
	<script
		src="${bathpath}/static/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${bathpath}/static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${bathpath}/static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${bathpath}/static/plugins/knob/jquery.knob.js"></script>
	<script
		src="${bathpath}/static/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${bathpath}/static/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${bathpath}/static/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${bathpath}/static/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${bathpath}/static/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${bathpath}/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${bathpath}/static/plugins/fastclick/fastclick.js"></script>
	<script
		src="${bathpath}/static/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${bathpath}/static/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${bathpath}/static/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${bathpath}/static/plugins/select2/select2.full.min.js"></script>
	<script
		src="${bathpath}/static/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${bathpath}/static/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${bathpath}/static/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${bathpath}/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${bathpath}/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${bathpath}/static/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${bathpath}/static/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${bathpath}/static/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${bathpath}/static/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${bathpath}/static/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${bathpath}/static/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${bathpath}/static/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${bathpath}/static/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${bathpath}/static/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		$("#selectPages").change(function () {
			var size = $('#selectPages option:selected').val();
			window.location.href="${bathpath}/product/findAll?current=1&size="+size;
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

			// 列表按钮 
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作 
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});
	</script>
</body>

</html>