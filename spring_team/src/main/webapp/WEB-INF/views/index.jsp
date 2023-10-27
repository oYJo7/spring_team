<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); %> 
 
<!DOCTYPE html> 
<html> 
<head>
  <title>기본페이지</title>
  <meta charset="utf-8">
</head>
<body> 
 
<!--내용-->
    <div class="container m-5">
    <!-- <h3>  The time on the server is ${serverTime}. </h3> -->
      <div class="row mt-3">
        <div class="col-sm-4">
          <h2>테이블 정보</h2>
          <ul class="list-group">
	          <li class="list-group-item">teamno  : PK</li>
	          <li class="list-group-item">tname   : 이름</li>
	          <li class="list-group-item">skills  : java, jsp, spring</li>
	          <li class="list-group-item">phone   : 전화번호</li>
	          <li class="list-group-item">address : 주소</li>
	          <li class="list-group-item">zipcode : 우편번호</li>
	          <li class="list-group-item">gender  : 성별</li>
	          <li class="list-group-item">rdate   : datetime(now()), date(sysdate())</li>
          </ul>
         </div>
          
        <div class="col-sm-4">
          <h2>구현 기능</h2>
          <ul class="list-group">
	          <li class="list-group-item">list : 등록된 팀 목록</li>
	          <li class="list-group-item">create : 팀 등록</li>
	          <li class="list-group-item">read : 팀 정보 조회</li>
	          <li class="list-group-item">update : 팀 정보 수정</li>
	          <li class="list-group-item">delete : 팀 정보 삭제</li>
          </ul>
        </div>
        
        <div class="col-sm-4">
          <h2>추가 기능</h2>
          <ul class="list-group">
	          <li class="list-group-item">list : 검색, 페이징</li>
	          <li class="list-group-item">create : 유효성 검사</li>
          </ul>
        </div>
       
      </div>
    </div>
  </body>
</html>