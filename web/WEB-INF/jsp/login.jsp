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
    <jsp:include page="CommonHead.jsp"/>
    <script>
        //错误信息提示
        function errorMsg(){
            if (${requestScope.containsKey("errorMsg")}){
                alert("${requestScope.errorMsg}");
            }
        }
        //ajax管理员免密登录
        $(function (){
            $("#admin").click(function (){
                $.post("${pageContext.request.contextPath}/admin/autoLogin","",function (data){
                    $("#username").val(data.username);
                    $("#password").val(data.password);
                });
            })
        })

    </script>

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center" onload="errorMsg()">
    <div class="mycenter">
        <form class="form-signin" action="${pageContext.request.contextPath}/doLogin" method="post">
            <img class="mb-4" src="img/icon.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
            <label for="username" class="sr-only" >用户名</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="username" required autofocus autocomplete="off">
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="password" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
            <div class="form-group"><input type="checkbox" name="admin" id="admin" class="float-left mt-2"> <small class="mt-1 float-left" style="vertical-align: center"><label for="admin">管理员登录(免密)</label> </small></div>
            <div  class="float-left"><small style="color: red">(普通用户仅可提交申请，管理员可进行后台管理)</small></div>
        </form>
    </div>
</body>
</html>
