<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="description" content=""/>
<meta name="author" content=""/>

<title>顧客リスト-BootCRM</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"/>

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet"/>

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet"/>

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet"/>

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css"/>
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css"/>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">FFFF顧客管理システム v1.0</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong>大朗さん</strong> <span class="pull-right text-muted">
									<em>昨日</em>
								</span>
							</div>
							<div>今夜打ち合わせがある..</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>メーセージ</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li><a href="#">
							<div>
								<p>
									<strong>任務１</strong> <span class="pull-right text-muted">完成40%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%">
										<span class="sr-only">完成40%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>任務 ２</strong> <span class="pull-right text-muted">完成20%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
										style="width: 20%">
										<span class="sr-only">完成20%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>任務管理</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-tasks --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> NEWメーセージ <span
									class="pull-right text-muted small">4分前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> NEWメーセージ <span
									class="pull-right text-muted small">4分前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> NEW任務 <span
									class="pull-right text-muted small">4分前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> サバ再起動 <span
									class="pull-right text-muted small">4分前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>イベント</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-alerts --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> ユーザー設定</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> システム設定</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
							OUT</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="内容..."/>
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="${pageContext.request.contextPath}/admin/list" class="active"><i
							class="fa fa-edit fa-fw"></i> 顧客管理</a></li>
					<li><a href="salevisit.action"><i
							class="fa fa-dashboard fa-fw"></i> 顧客打合</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">顧客管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline"
						action="${pageContext.request.contextPath }/admin/list"
						method="post">
						<div class="form-group">
							<label for="customerName">顧客ネーム</label> 
							<input type="text" class="form-control" id="customerName" value="${vo.custName }" name="custName"/>
						</div>
						<div class="form-group">
							<label for="customerFrom">顧客ソース</label> <select
								class="form-control" id="customerFrom" 
								name="custSource">
								<option value="">--選択--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dictId}"
										<c:if test="${item.dictId== vo.custSource}"> selected</c:if>>${item.dictItemName }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custIndustry">業界</label> <select
								class="form-control" id="custIndustry" name="custIndustry">
								<option value="">--選択--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dictId}"
										<c:if test="${item.dictId == vo.custIndustry}"> selected</c:if>>${item.dictItemName }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custLevel">顧客レベル</label> <select class="form-control"
								id="custLevel" name="custLevel">
								<option value="">--選択--</option>
								<c:forEach items="${levelType}" var="item">
									<option value="${item.dictId}"
										<c:if test="${item.dictId == vo.custLevel}"> selected</c:if>>${item.dictItemName }</option>
								</c:forEach>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Search</button>
						<a href="#" class="btn btn-primary"data-toggle="modal" data-target="#customerInsertDialog">添加</a>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
						顧客情報リスト
						<span style="float:right">${page.pageNum}番目のページ，合計${page.pages}ページ，${page.total}件中 </span>
						</div>
						
						<!-- /.panel-heading -->
						<form id="form" action="${pageContext.request.contextPath }/admin/deletes" method="post">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th><input type="checkbox" id="all"/></th>
										<th>ID</th>
										<th>顧客ネーム</th>
										<th>顧客ソース</th>
										<th>顧客の業界</th>
										<th>顧客レベル</th>
										<th>自宅TEL</th>
										<th>電話</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${page.list}" var="list">
										<tr align="center">
											<td><input type="checkbox" name="check" value="${list.custId}" class="check"/></td>
											<td>${list.custId}</td>
											<td>${list.custName}</td>
											<td>${list.custSource}</td>
											<td>${list.custIndustry}</td>
											<td>${list.custLevel}</td>
											<td>${list.custPhone}</td>
											<td>${list.custMobile}</td>
											<td><a href="#" class="btn btn-primary btn-xs"
												data-toggle="modal" data-target="#customerEditDialog"
												onclick="editCustomer(${list.custId})">修正</a> <a href="#"
												class="btn btn-danger btn-xs"
												onclick="deleteCustomer(${list.custId})">削除</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					<div class="col-md-12 text-left">
							<button class="btn btn-primary" id="deletes">選択したの削除</button>
						</div>
						<div class="col-md-12 text-right">
							
							<nav aria-label="Page navigation">
							  <ul class="pagination">
									<li>
                        				<a href="${pageContext.request.contextPath}/demo/list?page=1" aria-label="Next">
                            				<span aria-hidden="true">クスタート</span>
                        				</a>
                    				</li>
                   			 		<c:forEach items="${page.navigatepageNums}" var="pageNums">
                        				<c:if test="${pageNums == page.pageNum}">
                            				<li class="active"><a href="${pageContext.request.contextPath}/demo/list?page=${pageNums}">${pageNums}</a></li>
                        				</c:if>
                        				<c:if test="${pageNums != page.pageNum}">
                            				<li><a href="${pageContext.request.contextPath}/demo/list?page=${pageNums}">${pageNums}</a></li>
                        				</c:if>
                    				</c:forEach>
                  		 			<li>
                        				<a href="${pageContext.request.contextPath}/demo/list?page=${page.pages}" aria-label="Next">
                            				<span aria-hidden="true">最後</span>
                        				</a>
                    				</li>
							  </ul>
							</nav>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>

	<div class="modal fade" id="customerEditDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">顧客情報修正</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="custId" />
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">顧客ネーム</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName"
									placeholder="顧客ネーム" name="custName"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom"
								style="float: left; padding: 7px 15px 0 27px;">顧客ソース</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_customerFrom"
									placeholder="顧客ソース" name="custSource">
									<option value="">--選択--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dictId}"
											<c:if test="${item.dictId == custSource}"> selected</c:if>>${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry"
								style="float: left; padding: 7px 15px 0 27px;">業界</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_custIndustry"
									name="custIndustry">
									<option value="">--選択--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dictId}"
											<c:if test="${item.dictId == custIndustry}"> selected</c:if>>${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel"
								style="float: left; padding: 7px 15px 0 27px;">顧客レベル</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_custLevel"
									name="custLevel">
									<option value="">--選択--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dictId}"
											<c:if test="${item.dictId == custLevel}"> selected</c:if>>${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">連絡先</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_linkMan"
									placeholder="連絡先" name="custLinkman"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">自宅TEL</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_phone"
									placeholder="自宅TEL" name="custPhone"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">TEL</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile"
									placeholder="TEL" name="custMobile"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">郵便番号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_zipcode"
									placeholder="郵便番号" name="custZipcode"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">アドレス</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_address"
									placeholder="アドレス" name="custAddress"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">キャンセル</button>
					<button type="button" class="btn btn-primary"
						onclick="updateCustomer()">保存</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="customerInsertDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">顧客情報登録</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="insert_customer_orm">
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">顧客ネーム</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="顧客ネーム" name="custName"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom"
								style="float: left; padding: 7px 15px 0 27px;">顧客ソース</label>
							<div class="col-sm-10">
								<select class="form-control" placeholder="顧客ソース" name="custSource">
									<option value="">--選択--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dictId}">${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry"
								style="float: left; padding: 7px 15px 0 27px;">業界</label>
							<div class="col-sm-10">
								<select class="form-control" name="custIndustry">
									<option value="">--選択--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dictId}">${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel"
								style="float: left; padding: 7px 15px 0 27px;">顧客レベル</label>
							<div class="col-sm-10">
								<select class="form-control" name="custLevel">
									<option value="">--選択--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dictId}">${item.dictItemName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">連絡先</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="連絡先" name="custLinkman"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">TEL</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="自宅TEL" name="custPhone"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">TEL</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="TEL" name="custMobile"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">郵便番号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="郵便番号" name="custZipcode"/>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">アドレス</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="アドレス" name="custAddress"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">キャンセル</button>
					<button type="button" class="btn btn-primary" onclick="insertCustomer()">ADD</button>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>

	<script type="text/javascript">
		
		//削除
		$("#deletes").click(function(){
			if(confirm("削除してよろしいですか?")){
				$.post("<%=basePath%>admin/deletes",$("#form").serialize(),function(data){
					alert("削除しました！");
					window.location.reload();
				});
			}
		});
		
	
		$("#all").click(function(){
			if(this.checked){
				$(".check").prop("checked",true);
			}else{
				$(".check").prop("checked",false);
			}
		});
		
		//inset
		function insertCustomer(){
			$.post("<%=basePath%>/admin/insert",$("#insert_customer_form").serialize(),function(data){
				if(data=="ok"){
					alert("登録しました！");
					window.location.reload();
				}
				else{
					alert("失敗しました！");
				}
			});
		}
		function editCustomer(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>admin/editUI",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.custId);
					$("#edit_customerName").val(data.custName);
					$("#edit_customerFrom").val(data.custSource)
					$("#edit_custIndustry").val(data.custIndustry)
					$("#edit_custLevel").val(data.custLevel)
					$("#edit_linkMan").val(data.custLinkman);
					$("#edit_phone").val(data.custPhone);
					$("#edit_mobile").val(data.custMobile);
					$("#edit_zipcode").val(data.custZipcode);
					$("#edit_address").val(data.custAddress);
				}
			});
		}
		function updateCustomer() {
			$.post("<%=basePath%>admin/update",$("#edit_customer_form").serialize(),function(data){
				alert("顧客情報を更新した！");
				window.location.reload();
			});
		}
		
		function deleteCustomer(id) {
			if(confirm('削除してよろしいですか吗?')) {
				$.post("<%=basePath%>admin/delete",{"id":id},function(data){
					alert("削除しました	！");
					window.location.reload();
				});
			}
		}
	</script>

</body>

</html>
