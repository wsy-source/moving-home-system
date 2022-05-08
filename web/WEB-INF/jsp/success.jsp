<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/30
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>success</title>

    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/cover.css">
    <jsp:include page="CommonHead.jsp"/>
</head>
<body class="text-center">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <main role="main" class="inner cover" style="margin-top: 200px">
        <img class="mb-4 mt-4" src="${pageContext.request.contextPath}/img/icon.png" alt="" width="150" height="150">
        <p class="lead">提交成功，期待为您下次服务。</p>
        <p class="lead">
            <a href="${pageContext.request.contextPath}/" class="btn btn-lg btn-secondary">返回主页</a>
        </p>
    </main>

</div>



</body>
</html>
