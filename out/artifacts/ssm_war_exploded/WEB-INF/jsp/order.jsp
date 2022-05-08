<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/30
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Checkout example · Bootstrap v4.6</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <jsp:include page="CommonHead.jsp"/>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/img/icon.png" alt="" width="72" height="72">
        <h2>请填写地址明细</h2>
        <p class="lead">请仔细核对地址，与搬家信息。</p>
    </div>

    <div class="row">
        <div class="col-md-12 order-md-1">
            <form class="needs-validation" action="${pageContext.request.contextPath}/user/doOrder" method="post">
                <div class="mb-3">
                    <label for="username">联系人</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" id="username" name="username" placeholder="姓名" autocomplete="off" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="phone">电话</label>
                    <input type="number" name="phone" class="form-control" id="phone">
                </div>

                <div class="mb-3">
                    <label for="movedate">搬家日期</label>
                    <input type="date" class="form-control" id="movedate" name="movedate">
                </div>

                <div class="mb-3">
                    <label for="address">地址</label>
                    <input type="text" class="form-control" id="address" placeholder="请填写地址" name="address" required>
                </div>
                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label for="area">起始地区</label>
                        <select class="custom-select d-block w-100" id="area" name="area" required>
                            <option value="海淀区">海淀区</option>
                            <option value="朝阳区">朝阳区</option>
                            <option value="西城区" selected>西城区</option>
                            <option value="东城区">东城区</option>
                            <option value="丰台区">丰台区</option>
                            <option value="大兴区">大兴区</option>
                            <option value="石景山">石景山</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cartype">车型</label>
                        <select class="custom-select d-block w-100" id="cartype" name="cartype" required>
                            <option value="金杯">金杯</option>
                            <option value="皮卡" >皮卡</option>
                            <option value="厢式小货" selected>厢式小货</option>
                            <option value="1041货车">1041货车</option>
                        </select>

                    </div>
                </div>
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">提交</button>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


<script src="js/form-validation.js"></script>
</body>
</html>
