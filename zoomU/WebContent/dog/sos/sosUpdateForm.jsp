<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<!DOCTYPE html>
<html>
<title>SOS 글쓰기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- 페이지 설정 -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 부트스트랩 -->
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<!-- 커스텀 CSS -->
	<link href="/dog/css/custom-dog.css?ver=1.1" rel="stylesheet">
	<link href="/dog/css/mang_css.css?ver=1.1" rel="stylesheet">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/dog/headerMenu.jsp" />
<c:if test="${ requestScope.check == true }">
	<!-- 본문 -->
	<form action="sosUpdatePro.do" method="post">
		<div class="container">
			<h3 class = "center">SOS 글 수정</h3>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-sm-6 form-group">
							제목<input type="text" name="stitle" required="required"
							class="form-control" placeholder="제목 입력" value = "${ requestScope.vo.stitle }">
							<br/>
							전화번호<input type="text" name="stell" required="required"
							class="form-control" placeholder="전화번호 입력" value = "${ requestScope.vo.stell }">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-sm-6 form-group">
							주소
							<select class="form-control" name="sarea">
								<option value = "서울" selected = "selected">서울</option>
								<option value = "경기도">경기도</option>
								<option value = "인천">인천</option>
								<option value = "강원도">강원도</option>
								<option value = "대구">대구</option>
								<option value = "대전">대전</option>
								<option value = "부산">부산</option>
								<option value = "울산">울산</option>
								<option value = "광주">광주</option>
								<option value = "제주">제주</option>
							</select>
							<br/>
							<input type="text" name= "sarea" placeholder= "나머지 주소를 입력하세요"
							required = "required" class="form-control" value = "${ requestScope.vo.sarea }">
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="row">
						신고내용
						<textarea class="form-control" rows="10" name="setc"
						placeholder="SOS 내용을 입력해주세요">${ requestScope.vo.setc }</textarea>
						<br/>
					</div>
				</div>
				<!-- db sql문 where에 들어갈 snum 넘겨주기 -->
				<input type= "hidden" value = "${ requestScope.vo.snum }" name = "snum"/>
				<div class="col-md-12 form-group">
					<div class="row">
						<input type="button" value="목록보기" class="btn btn_c pull-right"
							onclick="javascript:window.location='sosListForm.do'">&nbsp;&nbsp;
						<button class="btn btn_c pull-right" type="submit">글수정</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</c:if>
<c:if test="${ requestScope.check == false }">
	<script type="text/javascript">
		alert("본인만 수정 할 수 있습니다.");
	</script>
	<meta http-equiv="Refresh" content = "0; url='sosListForm.do'"/>
</c:if>

</body>
</html>