<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function update(teamno){
	let url = "update";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	url += "&teamno="+teamno;

	location.href = url;
}

function del(teamno){
	let url = "delete";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	url += "&teamno="+teamno;

	location.href = url;
}

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
  <h2>조회</h2>
  <ul class="list-group">
    <li class="list-group-item">이름: ${dto.tname }</li>
    <li class="list-group-item">스킬: ${dto.skill }</li>
    <li class="list-group-item">전화번호: ${dto.phone }</li>
    <li class="list-group-item">주소: ${dto.address }</li>
    <li class="list-group-item">우편번호: ${dto.zipcode }</li>
    <li class="list-group-item">성별: ${dto.gender }</li>
    <li class="list-group-item">등록일: ${dto.rdate }</li>
  </ul>
  
  <div class="mt-3 mb-5">
	  <button type="button" class="btn btn-dark" onclick="location.href='create'">생성</button>
	  <button type="button" class="btn btn-dark" onclick="update(${dto.teamno})">수정</button>
	  <button type="button" class="btn btn-dark" onclick="del(${dto.teamno})">삭제</button>
	  <button type="button" class="btn btn-dark" onclick="list()">목록</button>
  </div>
  
</div>
</body>
</html>