<%--
  Created by IntelliJ IDEA.
  User: 10950
  Date: 2022/4/30
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="CommonHead.jsp"/>
    <title>车辆详情</title>
    <link href="${pageContext.request.contextPath}/css/carousel.css" rel="stylesheet">
</head>
<body>
<jsp:include page="commonNav.jsp"/>
<hr>
<main role="main" class="mt-4">

    <div class="container marketing">

        <div class="row">
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/img/1041.png" alt="" class="rounded-circle" width="140"
                     height="140">
                <h2>1041货车</h2>
                <p>1041是一种轻型货车,最大质量(含自重)4吨的轻卡!属于大型载重货车类型 </p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/img/pika.png" alt="" class="rounded-circle" width="140"
                     height="140">
                <h2>皮卡</h2>
                <p>一般车身外形可以明显的分成发动机舱、驾驶室和货舱三段。</p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/img/jinbei.png" alt="" class="rounded-circle" width="140"
                     height="140">
                <h2>金杯</h2>
                <p>轻型卡车一般都是柴油发动机,载重45吨左右</p>
            </div><!-- /.col-lg-4 -->

        </div><!-- /.row -->


        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">金杯</h2>
                <p class="lead mt-4">轻型卡车：,轻型卡车一般都是柴油发动机。半挂车和大货车一般都能载货45吨左右。超载行驶会给车架带来额外负担，时间久了车架会出现变形或金属疲劳</p>
            </div>
            <div class="col-md-5">
                <img src="${pageContext.request.contextPath}/img/jinbei.png"
                     class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                     height="500">
            </div>
        </div>

        <hr class="featurette-divider">


        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading">1041货车</h2>
                <p class="lead mt-4">
                    1041是一种轻型货车,最大质量(含自重)4吨的轻卡!属于大型载重货车类型。在当今大型生产或工程的所在地一般比较常见。在当今广泛应用于各种大宗货物的中短途货物运输，用于降低运输成本、提高工程效率、节约工程时间等发挥优良效能。
                    可外挂吊具，增加运用功能</p>
            </div>
            <div class="col-md-5 order-md-1">
                <img src="${pageContext.request.contextPath}/img/1041.png"
                     class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                     height="500">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">皮卡</h2>
                <p class="lead mt-4">
                    业界称为轻便客货两用车或是货卡，通常指带开放式载货区的轻型卡车，一般车身外形可以明显的分成发动机舱、驾驶室和货舱三段，也有部分车款发动机是在驾驶室下方而没有发动机舱</p>
            </div>
            <div class="col-md-5">
                <img src="${pageContext.request.contextPath}/img/pika.png"
                     class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                     height="500">
            </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

    </div>

</main>
</body>
</html>
