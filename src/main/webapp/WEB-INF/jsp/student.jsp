<%--
  Created by IntelliJ IDEA.
  User: mxp
  Date: 2019/4/15
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link href="/bootStrap/css/bootstrap.css" rel="stylesheet"/>
    <script src="/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="/bootStrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="/js/jqPaginator.js" type="text/javascript"></script>
</head>
<body>

<center><h1>学生管理系统</h1></center>
<form id="actionForm" action="/getAllStudent" method="post">
    <div class="container">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>性别</th>
                <th>地址</th>
                <th class="action-column">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="student">
                <tr data-key="8">
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.age}</td>
                    <td>${student.gender} </td>
                    <td>${student.address}</td>
                    <td>
                        <a href="deleteStudent?id=${student.id}">删除</a>
                        <a href="queryStudentById?id=${student.id}" >修改</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>
            <a name="addbtn"  id="add" href="/toStudent">添加</a>
        </div>
        <!-- 分页的导航栏 -->
        <div class="pagination-layout">

            <div class="pagination">
                <ul class="pagination">

                </ul>


            </div>
        </div>

    </div>
</form>
</table>
</body>
<script>
    window.onload = function() {
        var if_fistime = true;
        $(".pagination")
            .jqPaginator(
                {
                    totalPages : ${pageInfo.pages},
                    visiblePages : 3,
                    currentPage : ${pageInfo.pageNum},
                    first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                    prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                    next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                    last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                    page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
                    onPageChange : function(num) {

                        /* alert(num); */
                        if (if_fistime) {
                            if_fistime = false;
                        } else {
                            changePage(num);
                        }

                    }

                })

    }

    function changePage(num) {

        window.location.href = "getAllStus?pageNum=" + num;
    }



</script>
</html>
