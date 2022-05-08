<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/5/1
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理订单</title>
    <jsp:include page="CommonHead.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/process.css">
</head>
<body>
    <jsp:include page="commonNav.jsp"/>
    <div  class="container-fluid back">
        <p>&nbsp;</p>
       <div class="container"> <div class="center">
           <img src="${pageContext.request.contextPath}/img/kapian.png" width="400" height="150">
           <form action="${pageContext.request.contextPath}/admin/process" role="form" class="form" method="post">
               <table class="ml-5 mt-4">
                   <div class="form-group ">
                       <tr >
                           <td><input type="hidden" name="id" id="id" class="form-control" value="${order.id}" ></td>
                       </tr>
                   </div>
                   <div class="form-group ">
                       <tr >
                           <td><label for="area">起始地区:</label></td>
                           <td><input type="text" name="area" id="area" class="form-control" value="${order.area}" ></td>
                       </tr>
                   </div>
                   <div class="form-group mb-4">
                       <tr >
                           <td><label for="cartype">车型:</label></td>
                           <td><input type="text" name="cartype" id="cartype" class="form-control" value="${order.cartype}" ></td>
                       </tr>
                   </div>
                   <div class="form-group mb-4">
                       <tr >
                           <td><label for="movedate">搬家日期:</label></td>
                           <td><input type="date" name="movedate" id="movedate" class="form-control" value="${order.movedate}" ></td>
                       </tr>
                   </div>
                   <div class="form-group mb-4">
                       <tr>
                           <td><label for="username">联系人:</label></td>
                           <td><input type="text" name="username" id="username" class="form-control" value="${order.username}" ></td>
                       </tr>
                   </div>
                   <div class="form-group mb-4">
                       <tr >
                           <td><label for="phone">联系电话:</label></td>
                           <td><input type="text" name="phone" id="phone" class="form-control" value="${order.phone}" ></td>
                       </tr>
                   </div>
                   <div class="form-group mb-4">
                       <tr>
                           <td><label for="status">状态修改:</label></td>
                           <td>
                               <select name="status" id="status" class="custom-select">
                                   <option value="0">未处理</option>
                                   <option value="1">已派车</option>
                                   <option value="2">已完成</option>
                               </select>
                           </td>
                       </tr>
                   </div>
                   <tr>
                       <td colspan="2">
                           <button class="btn btn-lg btn-primary btn-block" type="submit">处理登记信息</button>
                       </td>
                   </tr>
               </table>
           </form>
       </div></div>
    </div>
</body>
</html>
