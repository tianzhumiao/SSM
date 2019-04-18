<%--
  Created by IntelliJ IDEA.
  User: mxp
  Date: 2019/4/11
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/addStudent" method="post">
        <h3>添加学生</h3>
        <div>
            <label>姓名:</label>
            <div>
                <input type="text"  name="name" placeholder="请输入姓名...">
            </div>
        </div>
        <div>
            <label>年龄:</label>
            <div>
                <input type="text"  name="age" placeholder="请输入年龄...">
            </div>
        </div>
        <div>
            <label>性别:</label>
            <div>
                <input type="text"  name="gender" placeholder="请输入性别...">
            </div>
        </div>
        <div>
            <label>地址:</label>
            <div>
                <input type="text"  name="address" placeholder="请输入地址...">
            </div>
        </div>
        <div>
            <div>
                <input type="submit" value="添加">
            </div>
        </div>
    </form>
</body>
</html>
