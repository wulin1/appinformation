!doctype html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <!--<script type="text/javascript" src="resouces/static/js/time.js"></script>-->
    <script th:src="@{/js/time.js}"></script>
</head>
<body>
<div id="regLogin" class="wrap" >
    <div class="dialog">
        <div class="box">
            <h4><center>用户登录</center></h4>
            <form id="login.action" name="login.action" action="login.action" method="post">
                <div class="infos" style="text-align:center;">
                    <table class="field"style="text-align:center;" >
                        <tr>
                            <td  colspan="2" style="text-align:center; color:red"></td>
                        </tr>
                        <tr style="text-align:center ;margin-left:300px;">
                            <td class="field" style="color:black;"><center>用 户 名：</center></td>
                            <td>
                                <input type="text" name="username" value="" id="username" class="text" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="field">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                            <td>
                                <input type="password" name="password" id="password" class="text" required="true"/>
                            </td>
                        </tr>
                    </table>
                    <div class="buttons">
                        <input type="submit" id="User_login_action_0" value="立即登录"/>
                    </div>
                </div>
            </form>

            <div id="result"><p th:text="${session.errormsg}">[]</p></div>

        </div>
    </div>
</div>

<h1>租房系统</h1>
</body>
</html>
