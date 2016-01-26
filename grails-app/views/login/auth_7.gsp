<html>
<head>

    <title><g:message code='springSecurity.login.title'/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="font-awesome.min.css"/>
    <style>


    *{margin:0; padding:0}
    body{background:#294072; font-family: 'Source Sans Pro', sans-serif}
    .form{width:400px; margin:0 auto; background:#1C2B4A; margin-top:150px}
    .header{height:44px; background:#17233B}
    .header h2{height:44px; line-height:44px; color:#fff; text-align:center}
    .login{padding:0 20px}
    .login span.un{width:10%; text-align:center; color:#0C6; border-radius:3px 0 0 3px}
    .text{background:#12192C; width:90%; border-radius:0 3px 3px 0; border:none; outline:none; color:#999; font-family: 'Source Sans Pro', sans-serif}
    .text,.login span.un{display:inline-block; vertical-align:top; height:40px; line-height:40px; background:#12192C;}

    .btn{height:40px; border:none; background:#0C6; width:100%; outline:none; font-family: 'Source Sans Pro', sans-serif; font-size:20px; font-weight:bold; color:#eee; border-bottom:solid 3px #093; border-radius:3px; cursor:pointer}
    ul li{height:40px; margin:15px 0; list-style:none}
    .span{display:table; width:100%; font-size:14px;}
    .ch{display:inline-block; width:50%; color:#CCC}
    .ch a{color:#CCC; text-decoration:none}
    .ch:nth-child(2){text-align:right}
    /*social*/
    .social{height:30px; line-height:30px; display:table; width:100%}
    .social div{display:inline-block; width:42%; color:#eee; font-size:12px; text-align:center; border-radius:3px}
    .social div i.fa{font-size:16px; line-height:30px}
    .fb{background:#3B5A9A; border-bottom:solid 3px #036} .tw{background:#2CA8D2; margin-left:16%; border-bottom:solid 3px #3399CC}
    /*bottom*/
    .sign{width:90%; padding:0 5%; height:50px; display:table; background:#17233B}
    .sign div{display:inline-block; width:50%; line-height:50px; color:#ccc; font-size:14px}
    .up{text-align:right}
    .up a{display:block; background:#096; text-align:center; height:35px; line-height:35px; width:50%; font-size:16px; text-decoration:none; color:#eee; border-bottom:solid 3px #006633; border-radius:3px; font-weight:bold; margin-left:50%}
    @media(max-width:480px){ .form{width:100%}}
    </style>




</head>

<body>
<div class="form">
    <div class="header"><h2>Sign In2</h2></div>
<div id="login">



        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">

            <div class="sign-in">
            <ul>
            <li>
                UserName
                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
            </li>

            <li>
                Password&nbsp;
                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
            </li>


            <li id="remember_me_holder">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
            </li>

            <li>
                <input type="submit" id="submit" class="btn" value="${message(code: 'springSecurity.login.button')}"/>
            </li>
                </ul>
                </div>
        </form>

</div>
<div class="social">
    <div class="fb"> <facebookAuth:connect /></div>
    <div class="tw"><i class="fa fa-twitter"></i> &nbsp;  Login With Twitter</div>

</div><br/>
    <div class="sign">
        <div class="need">Need new account ?</div>
        <g:form controller="registrationDetails">
            <div class="up"><g:actionSubmit value="Sign up" action="create"/></div>
        </g:form>
    </div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</div>
</body>
</html>