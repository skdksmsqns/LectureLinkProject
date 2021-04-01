<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>サポートセンター</title>
<script src="https://kit.fontawesome.com/3e23d516a6.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  	#map{
  	 position: relative;
  	 left: 350px;
  	}
  	#customer_Support_Text{
  	  position: relative;
  	  left: 350px;
  	  height: 180px;
	  width: 55%;
	  background-color: #FFEFD5;
  	}
  	
  	#phone{
  		position: absolute;
  		top: 43px;
  		left: 15px;
  		height: 115px;
	  	width: 35%;
  		background-color: #FFFAFA;
  	}
  	
  	#businessHours{
  		position: absolute;
  		top: 43px;
  		right: 250px;
  		height: 115px;
	  	width: 33%;
  		background-color: #FFFAFA;		
  	}
  	
  	#contactMail{
  		position: absolute;
  		top: 43px;
  		right: 4px;
  		height: 115px;
	  	width: 28%;
  		background-color: #FFFAFA;		
  	}
  
  </style>
</head>
<body>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="goMain">Logo</a>
				<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="go_qna">お問い合わせフォーム</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="go_notice">告知フォーム</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="go_payment.do">決済フォーム </a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="go_Lecture_List?reqPage=1">講義リストへ </a>
						</li>
					<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					マイページ
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="go_Attending_Lecture.do">受講中の講義リストへ</a>
						<a class="dropdown-item" href="go_Attended_Lecture.do">受講済みの講義リスト</a>
						<a class="dropdown-item" href="go_Member_Profile.do">お客様の情報閲覧・修正</a>
					</div>
				
					<c:choose>
					<c:when  test="${members_info==null && admin==null}">
						<li class="nav-item">
							<a class="nav-link" href="go_login">ログイン</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="go_account">会員登録</a>
						</li>
					</c:when>
					<c:when test="${members_info!=null || admin!=null}">
						<li class="nav-item">
							<a class="nav-link" href="logout">ログアウト</a>
						</li>
					</c:when>
					</c:choose>
					<c:if test="${admin!=null}">
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
							管理者メニュー
						</a>
						<div class="dropdown-menu">
						<a class="dropdown-item" href="admin_memberList.admin">会員情報管理フォーム</a>
						<a class="dropdown-item" href="go_Lecture_Insert.admin">講義情報管理フォーム</a>						
						<a class="dropdown-item" href="go_Cutomer_Information.admin">会員情報分析</a>
						<a class="dropdown-item" href="go_Attend_Lecture.admin">受講者分析</a>
						<a class="dropdown-item" href="go_about_Pay.admin">決済情報通計</a>						
						</div>
						</li>
					</c:if>
					<li class="nav-item">
						<a class="nav-link" href="go_Customer_Support">サポートセンター </a>
					</li>
				</ul>
			</nav>
		<br>
		
		<h1 align="center">お客様の力になれるよう努力をする〇〇〇になります。</h1>
		<h3 align="center">サーポトセンター</h3>
		<div id="map" style="width:800px; height:300px" ></div>

		<script type="text/javascript" charset="utf-8" src="https://map.yahooapis.jp/js/V1/jsapi?appid=dj00aiZpPXU0YkRSdjNPeG0wRCZzPWNvbnN1bWVyc2VjcmV0Jng9ZTI-"></script>
			<script type="text/javascript">
			window.onload = function(){
			   var ymap = new Y.Map("map", {configure : {
			       doubleClickZoom : true,
			       scrollWheelZoom : true,
			       dragging : true,
			       enableOpenStreetMap: true
			   }});
			   var homeMarker = new Y.HomeControl();
			   var ScaleControl = new Y.ScaleControl();
			   var SliderZoomControlVertical = new Y.SliderZoomControlVertical();
			   ymap.addControl(homeMarker);
			   ymap.addControl(ScaleControl);
			   ymap.addControl(SliderZoomControlVertical); 
			   ymap.drawMap(new Y.LatLng(35.6823946,139.773155), 18, Y.LayerSetId.NORMAL);
			   
			}			 
			</script>
		<p align="center"> 東京都中央区日本橋2丁目1-10 <br />
			柳屋ビル255F<br />
			交通：東京メトロ銀座線・東西線、都営地下鉄浅草線日本橋駅B-5またはB-7出口方面</p>
		<div id="customer_Support_Text" align="center">
			<p style="font-size:x-large;">お客様の隣で支えるサービスを志向します。</p>
			<div id="phone" align="center">
				<p style="font-size:xx-large;">  連絡先： <br />
				123-4567</p> 
			</div>
			<div id="businessHours" align="center">
				<p style="font-size:large;">
					月~金曜日　ただし国民の祝日、年末年始等当社指定休日を除く<br />
					09:00 ~ 18:00</p>
			</div>
			<div id="contactMail" align="center">
				<p style="font-size: 15px">メールアドレス: aa@aa.aa.com<br />
					ラインID； ID:GLB_Customer_Support<br />
					業務時間： 09:00~18:00</p>
			</div>
			
		</div>
		<%@ include file ="/companyLogo.jsp" %>
</body>
</html>