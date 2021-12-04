<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>푸드트럭 나들목</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6uwn1n1eo"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="shortcut icon" href="images/foodtruck_logo2.png" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body style="background-color: #eef8fb;">
    <nav class="navbar navbar-dark bg-dark" >
        <div class="container-fluid">
          <a class="navbar-brand" href="index"><span style="font-weight: bold;">푸드트럭 나들목</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="./process">푸드트럭 창업절차</a>
              <a class="nav-link active" aria-current="page" href="map">푸드트럭 허가구역</a>     
              <a class="nav-link" href="./area">상권분석</a>
            </div>
          </div>
        </div>
      </nav>
      
      <div class="container-fluid" style="border-radius: 30px; text-align: center;">
       <div class="row">
        <div class="col">
         <p><span style="font-weight: bold;"><br><br>※ 푸드트럭 허가구역 클릭 시 나타나는 주소의 동을 복사해 <span style="color: #3e94e4;">상권분석</span>에 붙여넣기 해주세요.</span></p>
        </div>
       </div>
      </div>
      
      <script>
      function toggleDiv() {
        const div = document.getElementById('my_div');
  
        if(div.style.display === 'none')  {
           div.style.display = 'block';
        }
        else {
           div.style.display = 'none';
        }
      } 
      </script>
      
      <div class="container">
       <div class="row" style="text-align: center;">
        <div class="col">
         <input type='button'
                value='더 자세히'
                onclick='toggleDiv()'
                id="myButton"/>
        </div>
       </div>
      </div>
      
      <div id='my_div' style="display:none; margin: 10px 0px 0px 0px;">
       <div class="container">
        <div class="row" >
         <div class="col-sm-6 col-md-6" style="text-align: right;">
          <img src="images/samsumg.png" height="250px" alt="주소 동 복사" style="border-style: groove;">
          <p><span style="font-weight: bold"><br>① 원하는 푸드트럭 허가구역 장소 <br>클릭 후 '동'을 복사(Ctrl+C)</span></p>
         </div>
         <div class="col-sm-6 col-md-6" style="text-align: left;">
          <img src="images/dong_V2.png" height="250px" alt="주소 동 붙여넣기" style="border-style: groove;">
          <p><span style="font-weight: bold"><br>② 상권분석 페이지로 이동 후 <br>붙여넣기(Ctrl+V)</span></p>
         </div>
        </div>
       </div>
      </div>
      
      
      <div class="container-fluid" style="margin: 20px 0px 20px 0px;">
       <div id="map" style="width:100%; height:800px; border-style: groove; border-radius: 30px;"></div>
      </div>
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
function receiveArray() {
    $.ajax({
        url: "/api/getDataByDB/" ,
        type: "GET",
        success: function(data) { showData(data); console.log(data)},
        error: function(e) {alert("통신실패"); console.log(e);}
    });
}  
function receiveArrayNoDb(){
  for(var i = 0; i < 5; i++){
  $.ajax({
        url: "/api/getData/"  + i,
        type: "GET",
        success: function(data) { showData(data); console.log(data)},
        error: function(e) {alert("통신실패"); console.log(e);}
    });
  }
}
//receiveArray();
receiveArrayNoDb();
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
        content: '<div style="width:150px;text-align:center;padding:10px;"> <b>"'+  list[i].prmisnZoneNm + '" <br> ' + list[i].lnmadr +'</b>.</div>'
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