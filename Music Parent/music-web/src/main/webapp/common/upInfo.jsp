<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>图片上传失败</title>
<style type="text/css">
  body{ text-align:center; 
  font-size:22px; 
  color:#333333;
  background-color:#F7FBFE;
  margin:0px; 
  margin-top:15px; 
  margin-bottom:0px; 
  margin-left:0px; 
  margin-right:0px;
    }  
</style>
<script type="text/javascript">
function closewindow(){
	// 不提示窗口关闭对话框
	parent.window.opener = null;
	parent.window.open("", "_self");
	parent.window.close();
	parent.window.location.href = "";
	window.close();
}
function clock(){
	i = i -1;
	if(document.getElementById("info")){
		document.getElementById("info").innerHTML = "本窗口将在"+i+"秒后自动关闭";
	}
	if(i > 0)
		setTimeout("clock();",1000);
	else
		closewindow();
}

var i = 4;
clock();

</script>
</head>
<body>
<center>
	<s:fielderror></s:fielderror><p>
	<div id="info">本窗口将在3秒后自动关闭</div>
	<input type="button" value="关闭窗口" onclick="closewindow();">
</center>
</body>
</html>