<%@ page language="Java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>表单01</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
 <form action="" method="post">
 <tr>
 	<td>姓名：</td><td>
 	<input type="text name="username" onblur="checkUsername(this)"/></td>
 	<td><span id="name_msg"></span></td>
 </tr>
 <tr>
 	<td>密码：</td><td><input type="password" name="psw"/></td>
 </tr>
 <tr>
 	<td colspan="2"><input type="submit" value="注册"/></td>
 </tr>
 
 </form>
 </body>
 <script type="text/javascript">
 	function checkUsername(obj){
 		//失去焦点发送ajax
 		//alert(obj.value);
 		//核心对象
 		xmlhttp=null;
		if (window.XMLHttpRequest)
		  {// code for IE7, Firefox, Opera, etc.
		  xmlhttp=new XMLHttpRequest();
		  }
		else if (window.ActiveXObject)
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }

		//编写回调函数
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				alert(xmlhttp.responseText);
			}
		}
		
		//open
		xmlhttp.open("get","${pageContext.request.contextPath}/CheckuserName4servlet?username="+obj.value);
		
		//send
		xmlhttp.send();
 	}
 
 </script>
</html>