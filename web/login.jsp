<%--
  Created by IntelliJ IDEA.
  User: lu
  Date: 18-3-5
  Time: 下午9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>便利驿站</title>
  <link rel="stylesheet" type="text/css" href="myStyle.css"/>

</head>
<body>
<!--导航栏-->
<nav>欢迎光临本店请
  <a href="" style="color:blue">登录</a>,新用户?&nbsp;
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
      <td><h1>登录</h1></td>
    </tr>
  </table>
</div>

<!--中间内容-->
<table align="center" width="100%">
  <tr style="height: 90px"><td></td></tr>
  <tr>
    <td style="width:100%;height: 500px;background-color:#d30140;" align="center">
      <table style="background:url(pic/login-bg.png) no-repeat center;margin: 0px;height: 500px;width: 1258px">
        <tr>
          <td width="80%"></td>
          <td width="10%">
            <form class="round">
              <table align="center">
                <tr><td><input placeholder="用户名" class="lineEdit"></td></tr>
                <tr><td><input placeholder="密 码" type="password" class="lineEdit"></td></tr>
                <tr><td><button type="submit" style="width:220px;background-color: #6970a5;color: white">登录</button></td></tr>
                <tr><td align="left"><input type="checkbox" name="autologin" style="color: #6970a5"><font style="color: #6970a5">&nbsp;自动登录</font></td></tr>
                <tr align="left">
                  <td>
                    <table>
                      <tr>
                        <td><a href="" style="color: #6970a5">忘记密码?</a></td>
                        <td><div class="vline" style="height: 20px"></div></td>
                        <td><a href="register.jsp" style="color: #6970a5">注册</a></td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </form>
          </td>
          <td width="10%"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

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
