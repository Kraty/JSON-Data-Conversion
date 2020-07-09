<%--
  Created by IntelliJ IDEA.
  User: 14576
  Date: 2020/7/9
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>测试json交互</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        function search() {

            // 获取输入的查询编号
            const id = $("#number").val();
            $.ajax({

                url:"${pageContext.request.contextPath}/user/" + id,
                type:"GET",
                dataType:"json",
                success:function (data) {
                    if (data.username != null){
                        alert("user is : " + data.username);
                    }else {
                        alert("Nothing !!!");
                    }
                }

            })

        }
    </script>
</head>
<body>
<form>
    编号：<label for="number"></label><input type="text" name="number" id="number"/>
    <input type="button" value="select" onclick="search()">
</form>
</body>
</html>
