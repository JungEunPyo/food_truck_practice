<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6uwn1n1eo"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>
    <nav class="navbar navbar-dark bg-dark" >
        <div class="container-fluid">
          <a class="navbar-brand" href="#">푸드트럭 나들목</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="index">홈</a>
              <a class="nav-link" href="./process">푸드트럭창업과정</a>
              <a class="nav-link" href="./area">상권분석</a>
            </div>
          </div>
        </div>
      </nav>
      <div id="map" style="width:100%;height:800px;"></div>
     <div>
        <!-- <table>
       <c:forEach var="loca" items="${locations}">
            <tr>
                <td>${loca.prmisnZoneNm}</td>
                <td>${loca.lnmadr}</td>
                <td>${loca.rdnmadr}</td>
                <td>${loca.latitude}</td>
                <td>${loca.longitude}</td>
            </tr>
       </c:forEach>
    </table> -->
     </div>
<script>

var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
});

var markers = [];
var infoWindows =[];
var list = [];
// function receiveArray(pageNO) {
//     $.ajax({
//         url: "/api/getData/" + pageNO ,
//         type: "GET",
//         success: function(data) { showData(data); console.log(data)},
//         error: function(e) {alert("통신실패"); console.log(e);}
//     });
// }  
// for(var pageNO = 0; pageNO < 5; pageNO++){
//   receiveArray(pageNO);

// }
function receiveArray() {
    $.ajax({
        url: "/api/getDataByDB/" ,
        type: "GET",
        success: function(data) { showData(data); console.log(data)},
        error: function(e) {alert("통신실패"); console.log(e);}
    });
}  
receiveArray();
var markers = [];
var infoWindows =[];
function showData(list){
  
  for(var i = 0; i < list.length; i++){
   // if(list[i].latitude == 0)continue
    var marker = new naver.maps.Marker({
        map: map,
        title: list[i].prmisnZoneNm,
        position: new naver.maps.LatLng(list[i].latitude, list[i].longitude)
    });
   
    var infoWindow = new naver.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:10px;"> <b>"'+  list[i].prmisnZoneNm +'"</b>.</div>'
    })
    markers.push(marker);
    infoWindows.push(infoWindow);
}
for (var i = 0; i < markers.length; i++) {
    showMarker(map, markers[i]);
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}
naver.maps.Event.addListener(marker, "click", function(e){
  if(infoWindow.getMap()){
    infoWindow.close();
  }else{
    infoWindow
  }
})
}



function getClickHandler(seq){
  return function(e){
    var marker = markers[seq], infoWindow = infoWindows[seq];
    if(infoWindow.getMap()){
      infoWindow.close();
    }else{
      infoWindow.open(map, marker);
    }
  }
}
function showMarker(map, marker) {

if (marker.setMap()) return;
marker.setMap(map);
}

function hideMarker(map, marker) {

if (!marker.setMap()) return;
marker.setMap(null);
}


</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>