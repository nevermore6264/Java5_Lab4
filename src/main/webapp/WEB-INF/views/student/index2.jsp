<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/4/2018
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" %>
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
</ul>
<ul>
    <li><label>Họ và tên:</label> ${map.get("ThuyNTT").name}</li>
    <li><label>Điểm TB:</label> ${map.get("ThuyNTT").mark}</li>
    <li><label>Chuyên ngành:</label> ${map.get("ThuyNTT").major}</li>
</ul>
<ul>
    <li><label>Họ và tên:</label> ${map.get("HungNV").name}</li>
    <li><label>Điểm TB:</label> ${map.get("HungNV").mark}</li>
    <li><label>Chuyên ngành:</label> ${map.get("HungNV").major}</li>
</ul>
</body>
</html>
