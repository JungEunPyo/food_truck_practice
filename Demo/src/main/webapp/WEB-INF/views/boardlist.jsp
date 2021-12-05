<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>게시판 : 푸드트럭 나들목</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6uwn1n1eo"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="shortcut icon" href="images/foodtruck_logo2.png" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body style="background-image: url('images/.'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
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
      
    <div class="container" style="height:50px";></div>
	<div class="container" style="height:100px; text-align:center;" >
		<span style="font-weight: bold; color: #f6ac2c; font-size: 40px;">푸드트럭 게시판<br></span><br>
	</div>
	<div>
	<table class="table table-hover table-responsive" style="text-align: center; border: 2px solid #dddddd; width:80%; margin: auto;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="./boardview">안녕하세요</a></td>
						<td>홍길동</td>
					</tr>
				</tbody>
			</table>
			<br></br>
			<div class=container style="text-align:right;">
			<span><a href="./boardinsert" class="btn btn-secondary">글쓰기</a></span>
			</div>
		</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>