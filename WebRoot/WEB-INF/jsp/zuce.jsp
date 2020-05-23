<%@  page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>注册页面</title>
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
     var user_name = $("#user_name").val();
    var user_code = $("#user_code").val();
    var user_password = $("#user_password").val();
    
    if(user_name==""){
    	$("#message").text("用户名不能为空！");
    	window.alert("用户名不能为空！");
        return false;
    }
    var x=document.getElementById("user_code").value;
	if(x==""||isNaN(x))
	{
		alert("请输入正确的手机号");
		return false;
	}
    
    if( user_password==""){
    	$("#message").text("密码不能为空！");
    	window.alert("密码不能为空！");
        return false;
    } 
    
   
   
return true;
}

</script>
              			
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images/zuce.jpg">
	<div class="header">
	    <h1>商城用户注册</h1>
	</div>
	
	<div class="row">
	   <div></div>
	</div>

    <div class="main">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	     <div class="form">
		     <div class="center">
		                用户注册
		     </div>
		  
		
			 <%-- 提示信息--%>
			<div class="center-msg"> ${msg}</div>
		
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
  
		<form  action="${pageContext.request.contextPath }/zuce.action" 
			                       method="post" onsubmit="return check()" >
                     
        
                         用户名：<input id="user_name" type="text" name="user_name" />
             <br /> <br />
        
          
          
          
          
                       手机号：<input id="user_code" type="text" name="user_code" />
               <br /><br />
          
          
               
                                密&nbsp;&nbsp;&nbsp;码：<input id="user_password" type="password" name="user_password" />
                  <br />
                 
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          
            <center><input type="submit" value="&nbsp;注&nbsp;&nbsp;册&nbsp;"/></center><br>
          
                <div class="bottom">
                    <a href="javascript:void(alert('此功能正在维护中'))">问题反馈</a> 
		            <a href="javascript:void(alert('此功能正在维护中'))">帮助</a>
		            <a class="sm1" href="${pageContext.request.contextPath }/login.action">返回登陆</a> 
                </div>     
          </form>
	 </div>
</div>

<div class="footer">

</div>
</body>
</html>
