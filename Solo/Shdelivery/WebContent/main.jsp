<%@page import="vo.MemberVO"%>
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
<link rel="stylesheet" href="/css/main/main.css">
<!-- js  -->
<script src="/js/jquery-3.1.1.min.js"></script>


</head>

<%
	MemberVO login = (MemberVO) session.getAttribute("loginOK");
%>

<body>
	<header>
		<div class="background">
			<a href="/main.jsp"><img src="/images/logimg/logo.png"
				alt="SH Delivery" id="logo-img"></a>
			</h1>
			<nav>
				<ul>
					<%
						if (login == null) {
					%>
					<li class="mainMenu"><a href="#">회원정보</a>
                        <ul class="subMenu">
                            <li><a href="/html/logfornt/log.jsp">로그인</a></li>
                            <li><a href="/html/logfornt/new.jsp">회원가입</a></li>
                        </ul></li>
					<%
						} else {
					%>
					<li class="mainMenu"><a href="#">회원정보</a>
                        <ul class="subMenu">
                            <li><a href="/logout" id="logout"> 로그아웃 </a></li>
                            <li><a href="/html/cart/veiwshoping.jsp">주문내역</a></li>
                        </ul></li>
					<%
						}
					%>

					<li class="mainMenu"><a href="/html/menu/drink.jsp">음료수</a></li>

					<li class="mainMenu"><a href="/html/menu/barde.jsp">제과제빵</a></li>

					<li class="mainMenu"><a href="/html/menu/candy.jsp">캔디류</a></li>

					<li class="mainMenu"><a href="/html/menu/yum.jsp">식사류</a></li>
					
				</ul>
			</nav>
		</div>
	</header>



	<footer>
		<div class="background">
			<a href="#" class="footerLogo"> <img
				src="/images/logimg/logo.png" alt="대부분은 버그입니다." class="logo-img2">
			</a>
			<p>copyright&copy; All rights reserved SH Delivery</p>
			<ul class="sns">
				<li><a
					href="https://www.facebook.com/profile.php?id=100052563275398"><img
						src="/images/logimg/sns1.jpg" alt="sns이미지1"></a></li>
				<li><a
					href="https://www.instagram.com/p/ChtmnZBhTnj/?igshid=YmMyMTA2M2Y="><img
						src="/images/logimg/sns2.jpg" alt="sns이미지2"></a></li>
				<li><a href="https://open.kakao.com/o/sEZq8moc"><img
						src="/images/logimg/sns3.jpg" alt="sns이미지3"></a></li>
			</ul>
		</div>
	</footer>

	<script src="/js/main.js"></script>

</body>

</html>