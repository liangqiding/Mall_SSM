<%@  page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">


	   
	   <link href="${pageContext.request.contextPath}/css/zuce.css"
	   type=text/css rel=stylesheet>

<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    var x = document.getElementById("xx").value;
    
    if(usercode==""){
    	$("#message").text("账号或密码不能为空！");
    	window.alert("账号不能为空！");
        return false;
    }  
    if(password==""){
    	$("#message").text("账号或密码不能为空！");
    	window.alert("密码不能为空！");
        return false;
    }  
    
    return true;
}
</script>
</head>

<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images/g.jpg">
	
<div class="header">
<h1>商城购物网站</h1>
</div>
  
   <div class="navbar">
      <a href="javascript:void(alert('此功能正在维护中'))">
           关于
      </a>
      <a href="javascript:void(alert('此功能正在维护中'))">
           问题反馈
      </a>
     <a href="javascript:void(alert('此功能正在维护中'))">
           帮助
      </a>
      <a target="_blank" href="${pageContext.request.contextPath }/mjdl.action">
           卖家登录
      </a>
      
  </div>
  
    <div class="main">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <div class="form">
	 <div class="center">会员登录</div>
		
			 <div  class="center-msg">
			 ${msg}
		     </div>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form  action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="usercode" type="text" name="usercode" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="password" />
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <center><input type="submit" value="&nbsp;&nbsp;登&nbsp;&nbsp;录&nbsp;&nbsp;" /></center>
		 </form>
		 <br>
	<div class="bottom">
	     
		 <a href="javascript:void(alert('此功能正在维护中'))">忘记密码</a> 
		 <a href="${pageContext.request.contextPath }/touser.action">注册</a>
		 <a  class="sm">
		    <img id="myimage" class="img1" alt=""  onclick="changeImage()" src="${pageContext.request.contextPath}/images/sm.png"
		     height="30px" 
	         width="30px">
		 </a>  
     </div>
     <!-- sm图片特效 -->
     <script>
function changeImage()
{
	element=document.getElementById('myimage')
	if (element.src.match("sm1"))
	{
		element.src="${pageContext.request.contextPath}/images/sm.png";
		element.width="30";
		element.height="30";
	}
	else
	{
		element.src="${pageContext.request.contextPath}/images/sm1.png";
		element.width="180";
		element.height="180";
	}
}
</script>


	
	</div>
	</div>
	<div class="row"> 
	  
	
		
	
</div>
</body>
</html>
