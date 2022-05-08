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
    <%@include file="CommonHead.jsp" %>
</head>
<body>

<%@include file="commonNav.jsp"%>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/lunbotu1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/lunbotu2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/lunbotu3.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>
</div>
<div class="container">
    <h2>物流服务介绍</h2>
    <hr>
    <div class="media mb-4">
        <div class="media-body">
            <h4 class="mt-0 mb-4">关于顺丰</h4>
            <p>顺丰是国内领先的快递物流综合服务商，经过多年发展，已初步建立为客户提供一体化综合物流解决方案的能力，不仅提供配送端的高质量物流服务，还延伸至价值链前端的产、供、销、配等环节，从消费者需求出发，以数据为牵引，利用大数据分析和云计算技术，为客户提供智能仓储管理、销售预测、大数据自助分析等一揽子解决方案。
                顺丰同时还是一家具有网络规模优势的智能物流运营商，拥有对全网络强有力管控的经营模式。</p>
            <p class="mb-0">利用企业一站式大数据平台及计算机视觉等科技硬核，给客户更智能、更人性化的服务体验和不止于物流的科技体验。</p>
        </div>
    </div>
    <div> <div class="media mb-4">
        <div class="media-body">
            <hr>
            <h4 class="mt-0 mb-4">顺丰标快</h4>
            <p>顺丰标快 顺丰为您提供高品质、门到门的快递服务，各环节均优先进行发运、中转和派送。 在指定服务范围和寄递时间内收寄，
                根据寄件时间及快件寄/收地的行政区域，可查询明确的快件送达时间，最快次日12:00前送达</p>
            <p class="mb-0">在指定服务范围和寄递时间内收寄，根据寄件时间及快件寄/收地的行政区域，可查询明确的快件送达时间，省内、经济圈最快次日12:00前送达。</p>
        </div>
    </div></div>
    <div class="media mb-4">
        <div class="media-body">
            <hr>
            <h4 class="mt-0 mb-4">顺丰特快</h4>
            <p>顺丰特快的服务介绍为提供高品质、门到门的快递服务，各环节均优先进行发运、中转和派送。顺丰特快的递送承诺为在指定服务范围和寄递时间内收寄，根据寄件时间及快件寄/收地的行政区域，可查询明确的快件送达时间，最快当天送达。</p>
            <p class="mb-0">在指定服务范围和寄递时间内收寄，根据寄件时间及快件寄/收地的行政区域，可查询明确的快件送达时间，最快当天送达。</p>
        </div>
    </div>
    <div></div>
    <div class="media mb-4">
        <div class="media-body">
            <hr>
            <h4 class="mt-0 mb-4">关于我们</h4>
            <p>1993年，顺丰（股票代码：002352）诞生于广东顺德。经过多年发展，已成为国内领先的快递物流综合服务商、全球第四大快递公司。顺丰秉承“以用户为中心，以需求为导向，以体验为根本”的产品设计思维，聚焦行业特性，从客户应用场景出发，深挖不同场景下客户端到端全流程接触点需求及其他个性化需求，设计适合客户的产品服务及解决方案，持续优化产品体系与服务质量。同时，顺丰利用科技赋能产品创新，形成行业解决方案，为客户提供涵盖多行业、多场景、智能化、一体化的智慧供应链解决方案。
            </p>
            <p class="mb-0">顺丰围绕物流生态圈，横向拓展多元业务领域，纵深完善产品分层，满足不同细分市场需求，覆盖客户完整供应链条。经过多年发展，依托于公司拥有的覆盖全国和全球主要国家及地区的高渗透率的快递网络基础上，顺丰为客户提供贯穿采购、生产、流通、销售、售后的一体化供应链解决方案。同时，作为具有“天网+地网+信息网”网络规模优势的智能物流运营商，顺丰拥有对全网络强有力管控的经营模式。。</p>
        </div>
    </div>
</div>

</div>



</body>
</html>
