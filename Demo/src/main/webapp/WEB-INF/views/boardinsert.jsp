<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>게시판글쓰기 : 푸드트럭 나들목</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6uwn1n1eo"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="shortcut icon" href="images/foodtruck_logo2.png" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>
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
      <div class="container" style="height:100px; text-align:center;" >
		<span style="font-weight: bold; color: #f6ac2c; font-size: 40px;">푸드트럭 게시판<br></span><br>
	</div>
     <div class="container">
    <form action="boardinsert" method="post">
      <div class="form-group">
        <label for="subject">제목</label>
        <input type="text" class="form-control" id="subject" name="title" placeholder="제목을 입력하세요.">
      </div>
      <!--<div class="form-group">
        <label for="writer">작성자</label>
        <input type="text" class="form-control" id="writer" name="writer" placeholder="내용을 입력하세요.">
      </div>
    -->
      <div class="form-group">
        <label for=content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="3"></textarea>
      </div>
      <br></br>
      <div style="text-align:center">
      <button type="submit" class="btn btn-primary">작성</button>
      </div>
    </form>
</div>

</body>
</html>