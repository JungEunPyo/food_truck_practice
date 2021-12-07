<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title> 게시판글내용 : 푸드트럭 나들목</title>
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
           <!-- 
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
            --> 
          </div>
        </div>
      </nav>
      <div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center; ">게시판 글보기</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글제목</td>
						<td colspan="2">${info.title}</td>
        
            
					</tr>
          <!--
					<tr>
						<td>작성자</td>
						<td colspan="2">info.getUserID() --%></td>
					</tr>
				-->
					<tr>
						<td>내용</td>
						<td colspan="2"style="min-height: 200px; text-align: center;">${info.content}</td>
         </tr>
				</tbody>
			</table>
			<a href="<c:url value='/boardlist'/>" class="btn btn-secondary">목록</a>
			
			<!--
				if (userID != null && userID.equals(.getUserID())) {
			
					<a href="update.jsp?bbsID==  " class="btn btn-primary">수정</a>
					<a href="deleteAction.jsp?bbsID== bbsID " class="btn btn-primary">삭제</a>
			
				}
			-->
			</div>
			</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>