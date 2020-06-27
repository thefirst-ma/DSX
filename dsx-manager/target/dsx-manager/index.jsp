<%--
  Created by IntelliJ IDEA.
  User: 12726
  Date: 2020/6/19
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Styles/login.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/common.js"></script>
</head>
<body>

<div class="loginPage_main" >
    <form action="${pageContext.request.contextPath}/user/checkLogin.do" method="post">
    <table class="" >
        <tr>
            <td>用户名:</td>
             <%--mapper.xml 中使用的是name
                 Usercontroller 中使用的是username      --%>
            <td><input id="username" name="name" type="text"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input id="password" name="password" type="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
            <td><input type="button" value="注册"  onclick = "window.location.href = '${pageContext.request.contextPath}/regist.jsp'"></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
