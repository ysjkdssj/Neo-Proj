<%@page import="vo.ProductVO"%>
<%@page import="vo.CartVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CartDAO"%>
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

<body>
	<header>
		<div class="background">
			<a href="/main.jsp"><img src="/images/logimg/logo.png"
				alt="SH Delivery" id="logo-img"></a>
			<nav>
				<ul>
					<li class="mainMenu"><a href="#">로그인</a>
						<ul class="subMenu">
							<li><a href="/html/logfornt/log.jsp">로그인</a></li>
							<li><a href="#">로그아웃</a></li>
							<li><a href="/html/logfornt/new.jsp">회원가입</a></li>
						</ul></li>

					<li class="mainMenu"><a href="/html/menu/drink.jsp">음료수</a></li>

					<li class="mainMenu"><a href="/html/menu/barde.jsp">제과제빵</a></li>

					<li class="mainMenu"><a href="/html/menu/candy.jsp">캔디류</a></li>

					<li class="mainMenu"><a href="/html/menu/yum.jsp">식사류</a></li>
				</ul>
			</nav>
		</div>
	</header>


	<section>
		<table>
			<thead>
				<tr>
					<th>
						id
					</th>
					<th>
						이름
					</th>
					<th>
						가격
					</th>
					<th>
						수량
					</th>
					<th>
						전체가격
					</th>
					<th>
						삭제버튼
					</th>
					<th>
						수량추가
					</th>
					<th>
						수량감소
					</th>
				</tr>
			</thead>
			<tbody>
			<% 
				MemberVO login = (MemberVO) session.getAttribute("loginOK");
				if(login == null) {
					out.println("<script>");
					out.println("alert('먼저 로그인 하십시오.');");
					out.println("history.back()");
					out.println("</script>");
				} else{
				
				ArrayList<CartVO> list = new CartDAO().getCartList(login.getMemberId());
				
				for(int i = 0; i < list.size(); i++){
					CartVO cart = list.get(i);
					ProductVO product = cart.getProduct();
			%>
				<tr>
					<td><%=cart.getCart_id()%></td>
					<td><%=product.getProduct_name()%></td>
					<td><%=product.getProduct_price()%></td>
					<td><%=cart.getCart_count()%></td>
					<td>
						<form action="/deletecart" method="get">
							<button>삭제</button>
							<input type="hidden" value="<%=cart.getCart_id()%>" name="id">
						</form>
					</td>
					<td>
						<form action="/countup" method="get">
							<input type="hidden" value="<%=cart.getCart_id()%>" name="id">
							<button>수량추가</button>
						</form>
					</td>
					<td>
						<form action="/countdown" method="get">
							<input type="hidden" value="<%=cart.getCart_id()%>" name="id">
							<button>수량감소</button>
						</form>
					</td>
				</tr>
			<% 
				}}
			%>
			</tbody>
		</table>
	</section>


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