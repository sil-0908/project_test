<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/user/user_signin.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="/resources/js/user/user_signin.js"></script>
<!-- Google -->
<meta name="google-signin-client_id" content="967788525797-huq32simk5h35o6faii7nlbi86822e6l.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<!-- Google -->
<!-- kakao -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- kakao -->
<!-- naver -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"charset="utf-8"></script>
</head>
<body>
	<header>
		<div class="header_logo">
			<img src="/resources/img/user/logo.png" alt="">
		</div>
	</header>
	<section>
		<div class="section_loginform">
			<span class="login"><span class="login_text">로그인</span><small><a href="/user/find">비밀번호를 잊어버리셨나요?</a></small></span>
			<form method="post" action="signin_check">
				<div>
					<div class="input_text">
						<input type="text" name="id" placeholder="ID" autocomplete="off" class="input_size">
						<span id="id" class="formSpans"></span>
					</div>
					<div class="input_text">
						<input type="password" name="password" placeholder="비밀번호" autocomplete="off" class="input_size">
						<span id="password" class="formSpans"></span>
						<!-- test="${message == 'error' } - 조건식 : 컨트롤러에서 들고오는 메세지-->

					</div>
					<button class="login_submit">로그인</button>
					<c:if test="${message == 'error' }">
            				<div class="error_text">아이디 또는 비밀번호가 일치하지 않습니다.</div>
         			</c:if>                    
				</div> 
			</form>
			
			<span class="division_line"> <br>다른 방법으로 로그인하기</span>
                  
			<div class="image-div">
				<div id="button_area"> 
					<div class="naverIcon" id="naverIdLogin"><img src="/resources/img/user/iconNaver.svg"></div>
				</div>
				<div onclick="kakaoLogin()">
					<div class="kakaoIcon"><img src="/resources/img/user/iconKakao.svg" alt=""></div>
				</div>
				<div onclick="location.href='https://www.facebook.com/login'">
					<div class="faceIcon"><img src="/resources/img/user/iconFace.svg" alt=""></div>
				</div>
			</div>
                  
			<div>
				<span class="signup_text"> <br>혹시 아직 회원이 아닌가요? </span>
				<br>
				<form method="get" action="/user/signup">
					<button class="signup">회원가입</button>
				</form>
			</div>
		</div>
	</section>
	<footer>

	</footer>
<script src="/resources/js/api/google.js"></script>
<script src="/resources/js/api/kakao.js"></script>
<script src="/resources/js/api/naver.js"></script>
</body>
</html>