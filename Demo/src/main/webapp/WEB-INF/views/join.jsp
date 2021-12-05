<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>회원가입 : 푸드트럭 나들목</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6uwn1n1eo"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="shortcut icon" href="images/foodtruck_logo2.png" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body style="background-image: url('images/background.png'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
    <nav class="navbar navbar-dark bg-dark" >
        <div class="container-fluid">
          <a class="navbar-brand" href="index"><span style="font-weight: bold;">푸드트럭 나들목</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
         
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          	<a class="nav-link" href="./join">회원가입</a>
            <a class="nav-link" href="./login">로그인</a>
          </div>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="./process">푸드트럭 창업절차</a>
              <a class="nav-link" href="./map">푸드트럭 허가구역</a>
              <a class="nav-link" href="./area">상권분석</a>
              <a class="nav-link" href="./boardlist">게시판</a>
            </div>
           <%-- 
           <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <a class="nav-link" href="./logot">로그아웃</a>
          </div>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="./process">푸드트럭 창업절차</a>
              <a class="nav-link" href="./map">푸드트럭 허가구역</a>
              <a class="nav-link" href="./area">상권분석</a>
              <a class="nav-link" href="./boardlist">게시판</a>
            </div>
            --%> 
          </div>
        </div>
      </nav>
	<!-- REGISTRATION FORM -->
	<div class="text-center" style="padding:50px 0">
	<div class="logo" style="color:#f6ac2c">회원가입</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="register-form" class="text-left">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="reg_username" class="sr-only">id</label>
						<input type="text" class="form-control" id="reg_username" name="reg_username" placeholder="">
					</div>
					<div class="form-group">
						<label for="reg_password" class="sr-only">비밀번호</label>
						<input type="password" class="form-control" id="reg_password" name="reg_password" placeholder="">
					</div>
					<div class="form-group">
						<label for="reg_password_confirm" class="sr-only">비밀번호 확인</label>
						<input type="password" class="form-control" id="reg_password_confirm" name="reg_password_confirm" placeholder="">
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">이름</label>
						<input type="text" class="form-control" id="reg_fullname" name="reg_fullname" placeholder="">
					</div>
					
					<div class="form-group login-group-checkbox">
						<input type="radio" class="" name="reg_gender" id="male" placeholder="">
						<label for="male">male</label>
						
						<input type="radio" class="" name="reg_gender" id="female" placeholder="">
						<label for="female">female</label>
					</div>
					
					<div class="form-group login-group-checkbox">
						<input type="checkbox" class="" id="reg_agree" name="reg_agree">
						<label for="reg_agree">위&nbsp;<a href="#">약관</a>에 동의합니다.</label>
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>already have an account? <a href="./login">login here</a></p>
			</div>
		</form>
	</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>