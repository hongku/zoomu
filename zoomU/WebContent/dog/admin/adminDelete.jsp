<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<c:if test="${ requestScope.check == true }">
		<script type="text/javascript">
			alert("글 삭제 완료");
		</script>
	</c:if>
	<c:if test="${ requestScope.check == false }">
		<script type="text/javascript">
			alert("글 삭제 실패");
		</script>
	</c:if>
		<c:if test="${ requestScope.check == null }">
		<script type="text/javascript">
			alert("Error");
		</script>
	</c:if>
	<meta http-equiv="Refresh" content = "0; url='adminForm.do'"/>
</body>
</html>