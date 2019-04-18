<%--
  Created by IntelliJ IDEA.
  User: mxp
  Date: 2019/4/11
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>修改学生</h3>
<c:forEach items="${stu}" var="stu">
<form action="updateStudent?id=${stu.id}" method="post">
    <div>
        <label>学号:</label>
        <div>
            <input type="text"  name="id" value="${stu.id}" disabled="disabled">
        </div>
    </div>
    <div>
        <label>姓名:</label>
        <div>
            <input type="text"  name="name" value="${stu.name}">
        </div>
    </div>
    <div>
        <label>年龄:</label>
        <div>
            <input type="text"  name="age" value="${stu.age}">
        </div>
    </div>
    <div>
        <label>性别:</label>
        <div>
            <input type="text"  name="gender" value="${stu.gender}">
        </div>
    </div>
    <div>
        <label>地址:</label>
        <div>
            <input type="text"  name="address" value="${stu.address}">
        </div>
    </div>
    <div>
        <div>
            <input type="submit" value="修改">
        </div>
    </div>
</form>
</c:forEach>
</body>
</html>
