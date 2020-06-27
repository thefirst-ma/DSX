<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Styles/dialog.css" type="text/css">
</head>
<body>
<div class="dialog">
    <p class="header">密码或用户名错误</p>
    <div class="footer" >

        <input type = "button"  class="confirm" value = "确认" onclick = "window.location.href = '${pageContext.request.contextPath}/index.jsp'">
<%--        <input type = "button" class="cancel" value = "取消" >--%>
    </div>
</div>
</body>
</html>
