<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/30
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="CommonHead.jsp"/>
</head>
<body>
<jsp:include page="commonNav.jsp"/>
<table class="table ">
    <thead class="thead-dark">
    <tr>
        <th scope="col">起始地区</th>
        <th scope="col">所用车型</th>
        <th scope="col">搬家日期</th>
        <th scope="col">联系人</th>
        <th scope="col">联系电话</th>
        <th scope="col">状态</th>
        <th scope="col">操作</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orders.list}" var="order">
        <tr>
            <td>${order.area}</td>
            <td>${order.cartype}</td>
            <td>${order.movedate}</td>
            <td>${order.username}</td>
            <td>${order.phone}</td>
            <td>${order.status.msg}</td>
            <td>
                <c:if test="${(order.status.msg) == '已完成'}">
                    <button type="button" class="btn-warning ">处理</button>
                </c:if>

                <c:if test="${order.status.msg != '已完成'}">
                    <a href="${pageContext.request.contextPath}/admin/toProcessIndex?id=${order.id}">
                        <button type="button" class="btn-success">处理</button>
                    </a>
                </c:if>
                <a href="${pageContext.request.contextPath}/admin/toOrderInfoIndx?id=${order.id}">
                    <button type="button" class="btn-info">详情</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="container">
    <div style="margin-left:400px">
        <nav aria-label="...">
            <ul class="pagination">

                <%--                上一页--%>
                <c:if test="${orders.pageNum == 1}">
                    <li class="page-item disabled" id="lastPage">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${orders.pageNum-1}">上一页</a>
                    </li>
                </c:if>
                <c:if test="${orders.pageNum != 1}">
                    <li class="page-item" id="lastPage">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${orders.pageNum-1}">上一页</a>
                    </li>
                </c:if>


                <%--                上一页结束--%>

                <c:forEach begin="${1}" end="${orders.pages}" var="num">
                    <c:if test="${orders.pageNum == num}">
                        <li class="page-item active">
                            <a class="page-link"
                               href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${num}">
                                    ${num}
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${orders.pageNum != num}">
                        <li class="page-item ">
                            <a class="page-link"
                               href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${num}">
                                    ${num}
                            </a>
                        </li>
                    </c:if>
                </c:forEach>

                <%--                下一页--%>
                <c:if test="${orders.pages == orders.pageNum}">
                    <li class="page-item disabled" id="nextPage">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${orders.pageNum+1}">下一页</a>
                    </li>
                </c:if>

                <c:if test="${orders.pages != orders.pageNum}">
                    <li class="page-item " id="nextPage">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/admin/orderInfo?pageNum=${orders.pageNum+1}">下一页</a>
                    </li>
                </c:if>
                <%--                下一页结束--%>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
