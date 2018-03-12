<%--
  Created by IntelliJ IDEA.
  User: lu
  Date: 18-3-5
  Time: 下午9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="myStyle.css"/>

    <!--script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script-->
    <script type="text/javascript" src="jquery-3.2.1.js"></script>
    <script src="jQuery.js" type="text/javascript"></script>

</head>
<body>

<!--导航栏-->
<nav>欢迎光临本店请
    <a href="login.jsp" style="color:blue">登录</a>,新用户?&nbsp;
    <a href="register.jsp" style="color:purple">免费注册</a>
    <a  href="">我的订单</a>&nbsp;|&nbsp;
    <a  href="">查看购物车</a>&nbsp;|&nbsp;
    <a  href="">帮助中心</a>&nbsp;|&nbsp;
    <a  href="">在线客服</a>&nbsp;&nbsp;&nbsp;&nbsp;
</nav>

<!--标题栏-->

<div class="title">
    <table>
        <tr>
            <td><p style="width: 100px"></p></td>
            <td><img src="pic/logo.png"/></td>
            <td width="30px" align="center"><div class="vline" style="height: 85px"></div></td>
            <td><h1>注册</h1></td>
        </tr>
    </table>
</div>

<!--中间内容-->

<div style="height: 70px"></div>
<div align="center" style="margin:0 auto;width:45%;border: solid 30px white;background-color: white">
    <form>
        <table align="center">
            <tr>
                <td rowspan="12" width="220px"></td>
                <td colspan="2"><h4 align="left" id="passwdTips">填写账户信息,以下信息均为必填:</h4></td>
            </tr>
            <tr>
                <td class="right">
                    <h5>登录账号:</h5>
                </td>
                <td>
                    <input type="text" class="lineEdit" id="account" onchange="ajaxCheckAccount()" required>
                    <h6 id="accountTips" style="color: #d30140"></h6>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>登录密码:</h5>
                </td>
                <td>
                    <input id="password" placeholder="6-20位字符,由大小写英文,数字组成"  type="password" class="lineEdit" required maxlength="20" minlength="6" onkeyup="checkPassword()">
                    <h6 id="passwordTips" style="color: #d30140"></h6>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>确认密码:</h5>
                </td>
                <td>
                    <input id="passwordConfirm" type="password" class="lineEdit" required maxlength="20" minlength="6" onkeyup="comparePassword();"><h6 id="passwordNotEqual" style="color: #d30140"></h6>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>商业名称:</h5>
                </td>
                <td>
                    <input name="bussinessName" type="text" class="lineEdit" >
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>商业地址:</h5>
                </td>
                <td>
                    <input name="province" type="text" class="lineEdit" style="width: 60px" value="广东省">
                    <input name="city" type="text" class="lineEdit" style="width: 60px" value="广州市">
                    <select name="district" style="width: 90px;height: 25px">
                        <option value="0">番禺区</option>
                        <option value="1">天河区</option>
                        <option value="2">海珠区</option>
                    </select>
                    <input name="street" type="text" class="lineEdit" placeholder="街道/路/牌号" >
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>负责人姓名:</h5>
                </td>
                <td>
                    <input name="contactName" type="text" class="lineEdit" >
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>电子邮件:</h5>
                </td>
                <td>
                    <input name="email" type="email" class="lineEdit" id="email"  onkeyup="checkMail()">
                    <h6 style="color: #d30140" id="emailTips"></h6>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>QQ:</h5>
                </td>
                <td>
                    <input name="qq" type="number" class="lineEdit" >
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>手机:</h5>
                </td>
                <td>
                    <input name="tel" type="number" class="lineEdit" required id="tel" onkeyup="checkTel()">
                    <h6 style="color: #d30140" id="telTips"></h6>
                    <button id="sendVC" type="button" style="display: none;background-color: #f07d0a;color: #ffffff;border: none;" onclick="sendVc()">发送验证码</button>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <h5>手机验证码:</h5>
                </td>
                <td>
                    <input name="verificationCode" id="vc" type="text" class="lineEdit" required onkeyup="checkVc()">
                    <h6 style="color: #d30140" id="vcTips"></h6>
                </td>
            </tr>
        </table>
        <input type="checkbox" id="read" checked="checked" required><h6 style="display: inline">我已阅读阅读并同意<a href="">《用户注册协议》</a></h6>
        <p><button id="registerButton" type="submit" style="width: 100px;height: 40px;background-color: #f07d0a;color:white;">注册</button></p>
        <h5><a href="">您忘记密码了?</a>&nbsp;<a href="login.jsp">我已有账号,我要登录</a></h5>
    </form>
</div>

<!--底部-->
<div class="floor">
    <table align="center">
        <tr>
            <td><img src="pic/Quality_assurance.gif"></td>
            <td><p>正品保障</p></td>
            <td width="70px" align="center"><div class="vline" style="height: 20px"></div></td>
            <td><img src="pic/Seven_days.gif"></td>
            <td><p>七天包退</p></td>
            <td width="70px" align="center"><div class="vline" style="height: 20px"></div></td>
            <Td><img src="pic/Fake_a_lose_three.gif"></Td>
            <td><p>假一赔十</p></td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td>
                <table align="center">
                    <tr align="center" style="font-size: small">
                        <td width="20px"></td>
                        <td><a href="">免责条款</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="">隐私保护</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="">咨询热点</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="">联系我们</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="">公司简介</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="">配送方式</a></td>
                        <td width="20px"></td>
                    </tr>
                    <tr align="center" style="font-size: smaller"><td colspan="13" width="600px" style="color: #a8a9a5">@&nbsp;2005-2016&nbsp;便利驿站&nbsp;版权所有，并保留所有权利。凌籍12号大院三区一号&nbsp;Tel:32292315&nbsp;E-mail:1165221565@qq.com&nbsp;技术支持:骥云科技</td></tr>
                </table>
            </td>
            <td><div class="vline" style="height: 65px"></div></td>
            <td><img src="pic/unionpay_ico.gif"></td>
            <td><img src="pic/alipay_ico.gif"></td>
        </tr>
    </table>
</div>

</body>
</html>