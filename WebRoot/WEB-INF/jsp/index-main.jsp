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
  <a href="${pageContext.request.contextPath }/O.action" id="">查看订单</a>


</div>

<div class="row">
  <div class="side">
        &nbsp;<!-- 左侧搜索框 -->
        <div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/customer/S.action">
					<div class="form-group">
						<label for="customerName">商品名称</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${custName }" name="custName" />
					</div>
					<div class="form-group">
						<label for="customerFrom">秒杀专区</label> 
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
						<label for="custIndustry">商品类别</label> 
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
					
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
       
  </div>
  
  <!-- main区域 -->
  
 <div class="main">
    <div>
            <div>
            <form method="get" 
				      action="${pageContext.request.contextPath }/customer/S.action">
            <input type="text" class=".button" id="customerName" 
						                   value="${custName }" name="custName" />
            <button type="submit">搜索</button>
            </form>
            </div>
            
       <c:forEach items="${page.rows}" var="row">
          <div class="main-cell">
                 <img class="img" alt="图片参数出错" src="http://localhost:8080/SSM-boot/${row.img}">
                 商品名称:${row.s_name}<br >
                 商品种类:${row.s_class}<br >
                 价格:<blink>${row.s_price}</blink> <b>(${row.s_supplier})</b> <br >
         <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.s_id})">&nbsp;&nbsp;&nbsp;&nbsp;购&nbsp;&nbsp;买&nbsp;&nbsp;&nbsp;&nbsp;</a>
            <p class="p">月销量:${row.s_xsum}&nbsp;&nbsp;库存:${row.s_ksum}</p>
           
           </div>
       </c:forEach>
        </div>
           <div>
            </center><itheima:page url="${pageContext.request.contextPath }/customer/S.action" /></center>
            </div>
</div>
  




<!-- 右边内容 -->

           
  <div class="side">
 
      <h2>XX网上购物商城</h2>
      <h5>www.xxxx.com</h5>
      <div class="fakeimg" style="height:200px;">手机app扫描下载</div>
      
      <h3>更多内容</h3>
      <p>请关注我们</p>
      <div class="fakeimg" style="height:60px;">微信公众号：xxx</div><br>
      <div class="fakeimg" style="height:60px;">微博主页：www.xxx.com</div><br>
      <div class="fakeimg" style="height:60px;">售后客服</div>
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




<div class="footer" style="background: url(<%=basePath%>/cssimg/hb2.png);width:100%;">
 

<!-- 底部内容 -->
  <h2></h2>
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">结算页面</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_cust_id" name="s_id"/>
					
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_linkMan" placeholder="无" name="s_linkman" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">购买数量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_mobile" placeholder="最大购买数量" name="s_ksum" />
						</div>
</div>
					
					
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消购买</button>
				<button type="button" class="btn btn-primary" onclick="updateCustomer()">确认购买</button>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>