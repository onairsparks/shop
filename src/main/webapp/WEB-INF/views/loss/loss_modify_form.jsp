<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수정사항을 입력해주세요</title>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/bus_board.css">
		<script type="text/javascript">
			function send() {
				var f = document.f;
				
				if(f.subject.value == ''){
					alert("제목을 입력하세요");
					return;
				}
				
				if(f.content.value.trim() == ''){
					alert("내용은 한 글자 이상 입력해야 합니다");
					return;
				}
				
				if(f.pwd.value.trim() == ''){
					alert("비밀번호를 입력하세요");
					return;
				}
				
				f.submit();
			}
		</script>
	</head>
	<body>
	<div id="main_box">
		
		<div id="head">
			<h1>
				<a href="main_home.do" id="home">HOME</a>
			</h1>

			<ul id="my_bar">
				<li><a href="#" id="log" onclick="location.href='login_view.do'">로그인</a></li>
				<li><a href="#" id="mypag">마이페이지</a></li>
			</ul>
		</div>
		
		
		<ul id="community_bar">
			<li><a href="#">소개</a>
				<ul>
					<li><a href="#">만든사람들</a></li>
					<li><a href="#">제작사유</a></li>
				</ul>
			</li>

			<li><a href="#">버스정보</a></li>

			<li>
				<a href="#">커뮤니티</a>
				<ul>
					<li><a href="notice_list.do">공지사항</a></li>
						<li><a href="free_list.do">자유게시판</a></li>
				</ul>
			</li>

			<li>
				<a href="#">고객센터</a>
				<ul>
					<li><a href="loss_list.do">분실물센터</a></li>
					<li><a href="qna_list.do">Q &amp; A</a></li>
				</ul>
			</li>
		</ul> 
		<div id="list">
			<div>
				<ul>
					<li>고객센터</li>
					<li><a href="loss_list.do">분실물센터</a></li>
					<li><a href="qna_list.do">Q&A</a></li>
				</ul>
			</div>
	<form action="loss_modify.do" name="f" method="post">
		<table border="1" align="center">
			<caption>::수정사항을 입력해주세요::</caption>
			<tr>
				<th width="120" height="25">제목</th>
				<td width="250"><input name="subject" value="${ vo.subject }"></td>
			</tr>
			<tr>
				<th width="120" height="250">내용</th>
				<td width="250"><textarea name="content" rows="10" cols="70">${ vo.content }</textarea> </td>
			</tr>
			<tr>
				<th width="120" height="25">비밀번호</th>
				<td width="250"><input type="password" name="pwd" value="${ vo.pwd }">
				<input type="hidden" name="idx" value="${ vo.idx }"></td>
			</tr>
			<tr>
				<td colspan="3"><input value="수정" type="button" onclick="send();"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	</body>
</html>