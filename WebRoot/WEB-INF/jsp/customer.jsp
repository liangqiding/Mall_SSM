<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>卖家管理</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/bgimg.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>

<body class=".bgimg" marginheight="0" marginwidth="0"  leftMargin=0 topMargin=0 background="${pageContext.request.contextPath}/images/g.jpg">


<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">商城管理系统 </a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               ${USER_SESSION.user_name}
				    </a>
				</li>
				
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 留言
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/S.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 返回商城页面
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/M.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 查看交易订单
				    </a>
				</li>
			</ul>
		</div>
		
		
		<!-- ceshi -->
		
		
		                 <div class="body-l-bg">&nbsp;
		                 </div>


</div>
	
	
	
	
	
	
	
	
	
	
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">卖家管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/customer/list.action">
					<div class="form-group">
						<label for="customerName">商品名称</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${custName }" name="custName" />
					</div>
					<div class="form-group">
						<label for="customerFrom">优惠状态</label> 
						<select	class="form-control" id="customerFrom" name="custSource">
							<option value="">--请选择--</option>
							<c:forEach items="${fromType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == custSource}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custIndustry">类别</label> 
						<select	class="form-control" id="custIndustry"  name="custIndustry">
							<option value="">--请选择--</option>
							<c:forEach items="${industryType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == custIndustry}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custLevel">商品状态</label>
						<select	class="form-control" id="custLevel" name="custLevel">
							<option value="">--请选择--</option>
							<c:forEach items="${levelType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == custLevel}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">添加商品</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">订单信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>商品编号</th>
								<th>商品名称</th>
								<th>商品种类</th>
								<th>商品价格</th>
								<th>商品状态</th>
								<th>销量</th>
								<th>供货商</th>
								<th>库存</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr class="tr">
									<td>${row.s_id}</td>
									<td>${row.s_name}</td>
									<td>${row.s_class}</td>
									<td>${row.s_price}</td>
									<td>${row.s_state}</td>
									<td>${row.s_xsum}</td>
									<td>${row.s_supplier}</td>
								    <td>${row.s_ksum}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.s_id})">修改</a>
										
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.s_id})">下架</a>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/customer/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 商品列表查询部分  end-->
</div>
<!-- 上架商品模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">上架商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    商品名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_customerName" placeholder="商品名称" name="s_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">优惠类型</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="s_supplier">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">商品类别</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="s_class">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="int" name="s_linkman" />
						</div>
					</div>
					
					
					<div class="form-group">
						<label for="new_mobile" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="库存" name="s_ksum" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="价格" name="s_price" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">商品详细信息</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="商品详细信息" name="cust_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
			     <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createCustomer()">创建客户</button>
			</div>
			<div class="form-group">
			<form action="${pageContext.request.contextPath}/img.action" method="post" enctype="multipart/form-data">
                     <input type="file" name="file" /><!--这个name=“file”并不是数据库的字段名哦-->
                                  <div>${msg-img}</div>

                                   <button type="submit" >上传商品图片</button>
                  </form>
			</div>
		</div>
	</div>
</div>


<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_cust_id" name="s_id"/>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">商品名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_customerName" placeholder="商品名称" name="s_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">优惠类型</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_customerFrom" name="s_supplier">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">商品类别</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_custIndustry"  name="s_class">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_linkMan" placeholder="无" name="s_linkman" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_mobile" placeholder="库存" name="s_ksum" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_zipcode" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_zipcode" placeholder="价格" name="s_price" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">商品介绍</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_address" placeholder="商品介绍" name="cust_address" />
						</div>
					</div>
			    </form>
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
			</div>
			<div class="form-group">
			<form action="${pageContext.request.contextPath}/img.action" method="post" enctype="multipart/form-data">
                     <input type="file" name="file" /><!--这个name=“file”并不是数据库的字段名哦-->
                                  <div>${msg-img}</div>

                                   <button type="submit" >上传商品图片</button>
                  </form>
			</div>
		</div>
	</div>
</div>


<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
	function clearCustomer() {
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("")
	    $("#new_custIndustry").val("")
	    $("#new_custLevel").val("")
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	// 创建客户
	function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("商品添加成功！");
	            window.location.reload();
	        }else{
	            alert("商品添加失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的客户信息
	function editCustomer(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>customer/getCustomerById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_cust_id").val(data.s_id);
	            $("#edit_customerName").val(data.s_name);
	            $("#edit_customerFrom").val(data.s_supplier)
	            $("#edit_custIndustry").val(data.s_class)
	            $("#edit_custLevel").val(data.s_state)
	            $("#edit_linkMan").val(data.s_linkman);
	            $("#edit_phone").val(data.s_xsum);
	            $("#edit_mobile").val(data.s_ksum);
	            $("#edit_zipcode").val(data.s_price);
	            $("#edit_address").val(data.cust_address);
	            
	        }
	    });
	}
	
	
	
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("商品信息更新成功！");
				window.location.reload();
			}else{
				alert("商品信息更新失败！");
				window.location.reload();
			}
		});
	}
	
	
	// 删除客户
	function deleteCustomer(id) {
	    if(confirm('确实要删除该商品吗?')) {
	$.post("<%=basePath%>customer/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("商品删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除商品失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>