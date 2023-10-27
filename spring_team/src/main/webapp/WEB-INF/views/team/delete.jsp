<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
p#red{
	color : red;
}
</style>
<script type="text/javascript">
function list(){
	let url = "list";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";

	location.href = url;
}
</script>
</head>
<body>
<div class="container mt-3">
	<h2>팀 삭제</h2>
	<p id='red'>삭제하면 복구할 수 없습니다</p>
	<form action="delete" method="post">
		<input type="hidden" name="teamno" value="${param.teamno}">
		<input type="hidden" name="nowPage" value="${param.nowPage}">
		<input type="hidden" name="col" value="${param.col}">
		<input type="hidden" name="word" value="${param.word}">
		<div class="row">
			<div class="col">
				<button class="btn btn-dark">삭제</button>
				<button class="btn btn-dark" onclick="list()">취소</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>