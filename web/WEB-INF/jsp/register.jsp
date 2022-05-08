<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/29
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <jsp:include page="CommonHead.jsp"/>
    <script>
        $(function () {
            $("#username").blur(function () {
                let username = $("#username").val();
                $.post("${pageContext.request.contextPath}/checkUsername", "username=" + username, function (data) {
                    if (data == "用户名不可用") {
                        $("#username").focus();
                        $("#username").val("");
                       alert(data);
                    }
                });
            })
        })
    </script>

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center">

<div class="mycenter">
    <form class="form-signin">
        <img class="mb-4" src="img/icon.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">请注册</h1>
        <label for="username" class="sr-only">用户名</label>
        <input type="text" id="username" class="form-control" placeholder="username" required autofocus
               autocomplete="off">
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" class="form-control" placeholder="password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
    </form>
</div>

</body>
</html>
