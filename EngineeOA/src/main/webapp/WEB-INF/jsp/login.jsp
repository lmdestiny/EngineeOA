<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>Login Page | Enginee ^_^</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">


 	$(function(){
		 $("#login").click(function(){
			 $.post("${pageContext.request.contextPath}/login/validate",{"email":$("#email").val(),
					"password":$("#password").val()},
					function(data){
						if(data.status ==200){
							location.href="${pageContext.request.contextPath}/toIndexPage";
						}else if(data.status ==500){
							alert(data.msg);
						}else if(data.status ==400){
							alert(data.msg);
						}
					});
		}); 
	})
</script>
<body>
<div class="header">
  <div class="am-g">
    <h1>软件工程教务系统</h1>
    <br/>
    <br/>	
  </div>
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">

    <form  method="post" class="am-form" action="">
      <label for="email">邮箱:</label>
      <input type="email" name="email" id="email" value="1453926032@qq.com">
      <br>
      <label for="password">密码:</label>
      <input type="password" name="password" id="password" value="nihao">
      <br>
      <label for="remember-me">
        <input id="remember-me" type="checkbox">
        记住密码
      </label>
      <br />
      <div class="am-cf">
        <input id="login" type="button" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
        <input type="submit" name="" value="忘记密码 ^_^? " class="am-btn am-btn-default am-btn-sm am-fr">
      </div>
    </form>
    <hr>
    <p>© Do not pray for easy lives. Pray to be stronger men </p>
  </div>
</div>
</body>
</html>
