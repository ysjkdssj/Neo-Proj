<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SH Delivery</title>
<!-- css  -->
<link rel="stylesheet" href="/css/sub/sub.css">
<!-- js  -->
<script src="/js/jquery-3.1.1.min.js"></script>
<script src="/js/showping.js"></script>
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
	<header>
		<div class="background">
			<a href="/main.jsp"><img src="/images/logo.png"
				alt="SH Delivery" id="logo-img"></a>
			<nav>
				<ul>
					<li class="mainMenu"><a href="#">로그인</a>
						<ul class="subMenu">
							<li><a href="/html/logfornt/log.jsp">로그인</a></li>
							<li><a href="/html/logfornt/new.jsp">회원가입</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul></li>
					<li class="mainMenu"><a href="/html/menu/drink.jsp">음료수</a></li>
					<li class="mainMenu"><a href="/html/menu/barde.jsp">제과제빵</a>
					</li>

					<li class="mainMenu"><a href="/html/menu/candy.jsp">캔디류</a></li>

					<li class="mainMenu"><a href="/html/menu/yum.jsp">식사류</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- 주문 조정 -->
	<div id="oner">
		<form class="oner-container">
			<div id="close">
				<i class="fa-solid fa-xmark"></i>
			</div>
			<h2>임시 삼품명</h2>
			<div>
				<p>
					개당 가격 : <span class="price">0</span>원
				</p>
				<div>
					<input type="number" value="0">
				</div>
				<p>
					전체 가격 <span class="price-sum">0</span>원
				</p>
			</div>
			<div class="basket_btn" data-name="">
				<i class="fa-solid fa-cart-arrow-down"></i>
			</div>
		</form>
	</div>

	<!-- 선택창-->
	<div class="container">
		<div class="title">상품 리스트</div>
		<div id="goods-list">
			<div class="detail">
				<img src="/images/tan.jpg" alt="사이다" class="img-test">
				<div class="goods-info">
					<button data-price="18000" class="basket_btn">
						<i class="fa-solid fa-cart-arrow-down"></i>
					</button>
				</div>
			</div>
			<!-- 상품 목록-->
			<div class="detail">
				<img src="" alt="" class="img-test">
				<div class="goods-info">
					<button data-price="2500" class="basket_btn">
						<i class="fa-solid fa-cart-arrow-down"></i>
					</button>
				</div>
			</div>

			<div class="detail">
				<img src="" alt="" class="img-test">
				<div class="goods-info">
					<button data-price="4500" class="basket_btn">
						<i class="fa-solid fa-cart-arrow-down"></i>
					</button>
				</div>
			</div>

			<div class="detail">
				<img src="" alt="" class="img-test">
				<div class="goods-info">
					<button data-price="1890" class="basket_btn">
						<i class="fa-solid fa-cart-arrow-down"></i>
					</button>
				</div>
			</div>

			<div class="detail">
				<img src="" alt="" class="img-test">
				<div class="goods-info">
					<button data-price="3000" class="basket_btn">
						<i class="fa-solid fa-cart-arrow-down"></i>
					</button>
				</div>
			</div>
		</div>

	</div>

	<footer>
		<div class="background">
			<a href="#" class="footerLogo"> <img
				src="/images/logimg/logo.png" alt="대부분은 버그입니다." class="logo-img2">
			</a>
			<p>copyright&copy; All rights reserved SH Delivery</p>
			<ul class="sns">
				<li><a href="#"><img src="/images/logimg/sns1.jpg"
						alt="sns이미지1"></a></li>
				<li><a href="#"><img src="/images/logimg/sns2.jpg"
						alt="sns이미지2"></a></li>
				<li><a href="https://open.kakao.com/o/sEZq8moc"><img
						src="/images/logimg/sns3.jpg" alt="sns이미지3"></a></li>
			</ul>
		</div>
	</footer>

	<script src="/js/main.js"></script>
	<script src="/js/oner.js"></script>

</body>

</html>