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
        function testJson() {

            //获取用户名和密码
            const username = $("#username").val();
            const password = $("#password").val();

            $.ajax({

                url: "${pageContext.request.contextPath}/testJson",
                type: "post",
                // data表示发送的数据
                data: JSON.stringify({username: username, password: password}),
                // 定义发送请求的数据格式为JSON字符串
                contentType: "application/json;charset=UTF-8",
                // 定义回调响应的数据格式为JSON字符串,可省略
                dataType: "json",
                // 成功响应的结果
                success: function (data) {
                    if (data != null) {
                        alert("用户名为：" + username + " 密码为：" + password);
                    }
                }

            })

        }
    </script>
</head>
<body>
<form>
    用户名：<label for="username"></label><input type="text" name="username" id="username"><br/>
    密&nbsp;&nbsp;&nbsp;码：<label for="password"></label><input type="text" name="password" id="password"><br/>
    <input type="button" value="测试Json交互" onclick="testJson()">
</form>
</body>
</html>
