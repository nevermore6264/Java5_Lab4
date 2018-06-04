<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/4/2018
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Spring MVC</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <style>
        li {
            list-style: none;
            line-height: 25px;
        }

        li > label {
            display: inline-block;
            width: 200px;
            font-variant: small-caps;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>EL & JSTL</h1>
<ul>
    <li><label>Họ và tên:</label> ${bean.name}</li>
    <li><label>Điểm TB:</label> ${bean.mark}</li>
    <li><label>Chuyên ngành:</label> ${bean.major}</li>
    <c:if test="${bean.mark >= 9}">
        <li><label>Danh hiệu:</label> ONG VÀNG</li>
    </c:if>
    <li>
        <label>Xếp loại:</label>
        <c:choose>
            <c:when test="${bean.mark < 5}">YẾU</c:when>
            <c:when test="${bean.mark < 6.5}">TRUNG BÌNH</c:when>
            <c:when test="${bean.mark < 7.5}">KHÁ</c:when>
            <c:when test="${bean.mark < 9}">GIỎI</c:when>
            <c:otherwise>XUẤT SẮC</c:otherwise>
        </c:choose>
    </li>
</ul>
<ul>
    <li><label>Họ và tên:</label> ${map.get("ThuyNTT").name}</li>
    <li><label>Điểm TB:</label> ${map.get('ThuyNTT').mark}</li>
    <li><label>Chuyên ngành:</label> ${map.get("ThuyNTT").major}</li>
    <c:if test="${map.get('ThuyNTT').mark >= 9 }">
        <li><label>Danh hiệu:</label> ONG VÀNG</li>
    </c:if>
    <li>
        <label>Xếp loại:</label>
        <c:choose>
            <c:when test="${map.get('ThuyNTT').mark < 5}">YẾU</c:when>
            <c:when test="${map.get('ThuyNTT').mark < 6.5}">TRUNG BÌNH</c:when>
            <c:when test="${map.get('ThuyNTT').mark < 7.5}">KHÁ</c:when>
            <c:when test="${map.get('ThuyNTT').mark < 9}">GIỎI</c:when>
            <c:otherwise>XUẤT SẮC</c:otherwise>
        </c:choose>
    </li>
</ul>
<ul>
    <li><label>Họ và tên:</label> ${map.get("HungNV").name}</li>
    <li><label>Điểm TB:</label> ${map.get("HungNV").mark}</li>
    <li><label>Chuyên ngành:</label> ${map.get("HungNV").major}</li>
    <c:if test="${map.get('HungNV').mark >= 9}">
        <li><label>Danh hiệu:</label> ONG VÀNG</li>
    </c:if>
    <li>
        <label>Xếp loại:</label>
        <c:choose>
            <c:when test="${map.get('HungNV').mark < 5}">YẾU</c:when>
            <c:when test="${map.get('HungNV').mark < 6.5}">TRUNG BÌNH</c:when>
            <c:when test="${map.get('HungNV').mark < 7.5}">KHÁ</c:when>
            <c:when test="${map.get('HungNV').mark < 9}">GIỎI</c:when>
            <c:otherwise>XUẤT SẮC</c:otherwise>
        </c:choose>
    </li>
</ul>
</body>
</html>
