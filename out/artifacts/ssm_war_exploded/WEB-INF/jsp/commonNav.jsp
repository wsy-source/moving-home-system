<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/30
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container ">
    <ul class="nav bgc ">

        <li class="nav-item">
            <a class="nav-link active" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/img/icon.png" height="40"></a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="${pageContext.request.contextPath}/">首页</a>
        </li>
        <c:if test="${!sessionScope.containsKey('admin')}">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/order">预约寄件</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/carInfo">车型详情</a>
            </li>
        </c:if>
        <c:if test="${sessionScope.containsKey('admin')}">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/orderInfo">订单详情</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/carInfo">车型详情</a>
            </li>
        </c:if>

        <c:if test="${!(sessionScope.containsKey('user'))}">
        <li class="nav-item float-left login">
            <a class="nav-link " href="${pageContext.request.contextPath}/login">登录</a>
        </li>
        <li class="nav-item float-right register">
            <a class="nav-link" href="${pageContext.request.contextPath}/register">注册</a>
        </li>
        </c:if>

        <c:if test="${(sessionScope.containsKey('user')) || (sessionScope.containsKey('admin'))}">
            <li class="nav-item float-right login">
                <a class="nav-link" href="${pageContext.request.contextPath}/logout">退出</a>
            </li>
        </c:if>

    </ul>
</div>
</body>
</html>
