<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>ϵͳ��̨</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <script language="JavaScript">
		function login11()
			{
				
				if (document.form1.name.value == "" ) 
				{
					alert("�������û���!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("����������!");
					document.form1.pwd.focus();
					return false;
				}
			}
</script>
  <body bgcolor="#CCFFFF">
  <style>
TD{font-size: 9pt; color: #66DDDD}
.h{font-size: 12pt; color: #66DDDD}
.out{border-left:1px solid 0090c0; border-right:1px solid 0070b0; border-top:1px solid 0090c0; border-bottom:1px solid 0070b0; font-size: 9pt; color: #66DDDD;cursor:hand; background:0080c0 0080c0; text-align: center}
.out2 {text-align: center}
.in,.out2{font-size: 9pt; color: #66DDDD;background:0078b8 0078b8;cursor:default}
.input7 {
	BACKGROUND: url(img/inputend.gif) repeat-x left center; BORDER-BOTTOM-WIDTH: 0px; WIDTH: 100px; COLOR: #ff0000; HEIGHT: 18px; BORDER-RIGHT-WIDTH: 0px
}
</style>
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('�û������������!')</script><%
}
 %>
<form name="form1" action="servlet/AdminLoginServlet" method="post" align="center" onSubmit="return login11()">
<div align="center">
��<p>��</p>
<p>��</p>
<p>��</p>
<table border="1" width="400" style=" top: 146px; height: 165px" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="h" align="center">ϵͳ��̨��¼</td>
</tr>
<tr>
<td width="17%" align="right">�û�����</td>
<td width="23%"> &nbsp; <input class="input7" type="text" name="name" size="18"/></td>
</tr>
<tr>
<td width="17%" align="right">��&nbsp;&nbsp;�룺</td>
<td width="23%"> &nbsp; <input class="input7" type="password" name="pwd" size="20"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="��¼"/></td>
</tr>
</table>
</div>
</form>
  </body>
</html>