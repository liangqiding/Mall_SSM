<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	



<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<title>商城购物网站</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/css1/b-main.css"
	   type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css1/main-main.css"
	   type=text/css rel=stylesheet>
	   <link href="${pageContext.request.contextPath}/css1/dropdown-main.css"
	   type=text/css rel=stylesheet>
	   
</head>
<body class=".bgo" marginheight="0" marginwidth="0"  leftMargin=0 topMargin=0 background="${pageContext.request.contextPath}/img/sc1.jpg">

<div class="header"  style="background: url(<%=basePath%>/cssimg/hg6.png); width:100%;">
  
</div>


<div class="navbara">

  <a href="${pageContext.request.contextPath }/customer/list.action" id="right">卖家中心</a>
  <a href="#"><i  class="fa fa-user fa-fw"></i>身份：${USER_SESSION.vip}</a>
  <a href="#" >Id:${USER_SESSION.user_name}</a>
  <a href="${pageContext.request.contextPath }/customer/list.action" id="">返回</a>


</div>


  
  <!-- main区域 -->
  <table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>商品ID</th>
								<th>商品名称</th>
								<th>购买数量</th>
								<th>商品价格</th>
								<th>金额</th>
								<th>收货地址</th>
								<th>发货状态</th>
								<th>操作</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr class="tr">
									<td>${row.o_id}</td>
									<td>${row.o_cid}</td>
									<td>${row.o_name}</td>
									<td>${row.o_cnum}</td>
									<td>${row.o_price}</td>
									<td>${row.o_sum}</td>
									<td>${row.o_address}</td>
									<td>${row.o_state}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.o_id})">发货</a>
										
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.o_id})">取消订单</a>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
  
  
  </div>
 
            
       
        
</center><itheima:page url="${pageContext.request.contextPath }/O.action" /></center>
<!-- 右边内容 -->

           
  
  


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
		$.post("<%=basePath%>customer/buy.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("购买成功！");
				window.location.reload();
			}else{
				alert("购买失败，库存不足！");
				window.location.reload();
			}
		});
	}
	
</script>





 

<!-- 底部内容 -->
  <h2></h2>

</div>
</body>
</html>