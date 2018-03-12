function ajaxCheckAccount() {
  var account = $("#account").val()
  var opt = "checkAccount";
  $.ajax({
    type:"POST",
    url: "/ajaxQuery.jsp",
    dataType:"text",
    data:{
      opt:opt,
      id:account
    },
    success:function(data){
      if(data==1){
        $("#accountTips").text("  该用户名已存在！");
      } else {
        $("#accountTips").text("");
      }
    }
  });
}

function ajaxCheckTel() {
  var tel = $("#tel").val()
  var opt = "checkTel";
  $.ajax({
    type:"POST",
    url: "/ajaxQuery.jsp",
    dataType:"text",
    data:{
      opt:opt,
      tel:tel
    },
    success:function(data){
      if(data==1){
        $("#telTips").html("该手机号已被注册!")
        $("#sendVC").css('display','none')//隐藏发送短信按钮
      }
      else{
        $("#telTips").html("")
        $("#sendVC").css('display','inline-block')
      }
    }
  });
}

function comparePassword() {//验证密码是否一致
  var password1=$("#password").val()
  var password2=$("#passwordConfirm").val()
  if(password1==password2){
    $("#passwordNotEqual").html("")
    $("#registerButton").removeAttr("disabled")
  }
  else{
    $("#passwordNotEqual").html("&nbsp;&nbsp;*密码不相同")
    $("#registerButton").attr("disabled","true")
  }
}

function checkPassword() {//检验密码是否合法
  var password=$('#password').val()
  var tips=$('#passwordTips')
  var reg = /[A-Za-z0-9]{6,20}/
  if(reg.test(password)){
    $("#registerButton").removeAttr("disabled")
    tips.html('')
    comparePassword()
  }
  else{
    tips.html('密码不合法(6-20位字符,可由大小写英文,数字组成')
    $("#registerButton").attr("disabled","true")
  }
}

function __checkMail() {
  var email=$('#email').val()
  var OK=false;
  for(var i=0;i<email.length;++i){
    if(email[i]=='@'&&i>0&&i+1<email.length){
      for(var j=i+1;j<email.length;++j){
        if(email[j]=='@'){
          return false
        }
      }
      OK=true
      break
    }
  }
  return OK
}

function checkMail() {
  var tips=$('#emailTips')
  if(!__checkMail()){
    tips.html('&nbsp;*邮箱不合法');
    $("#registerButton").attr("disabled","true")
  }
  else{
    tips.html("");
    $("#registerButton").removeAttr("disabled")
  }
}

function checkTel() {
  var tel=$('#tel').val()
  var tips=$('#telTips')
  var sendVC=$('#sendVC')

  var telReg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; //正则表达式验证手机号(13x,15x,18x号段)

  if(telReg.test((tel))){//手机号是否合法
    ajaxCheckTel()
  }
  else{
    tips.html('&nbsp;*手机号不合法')
    sendVC.css('display','none')//隐藏发送短信按钮
  }
}

function __checkVc() {
  var vc=$('#vc').val()
  var date=new Date()
  var seconds=date.getSeconds()
  return (seconds%2)==0
}

function checkVc() {
  var tips=$('#vcTips')
  if(__checkVc()){
    tips.html("")
    $("#registerButton").removeAttr("disabled")
  }
  else{
    tips.html('&nbsp;验证码不正确')
    $("#registerButton").attr("disabled","true")
  }
}

function sendVc() {
  /*
  * 发送验证码
  * */
  var btn=$('#sendVC')
  btn.attr("disabled","true")
  var waitTime=60
  function setTime() {
    if(waitTime<=0){
      btn.html('发送验证码')
      btn.removeAttr("disabled")
      return
    }
    else {
      btn.html(waitTime + 's&nbsp;后可重新发送')
      waitTime-=1
    }
    setTimeout(function(){
      setTime()},1000
    )
  }
  setTime()
}