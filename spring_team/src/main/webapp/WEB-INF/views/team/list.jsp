<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="util" uri="/ELFunctions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function read(teamno){
	let url = "read";
	url += "?teamno=" + teamno;
	url += "&col=${col}";
	url += "&word=${word}";
	url += "&nowPage=${nowPage}";

	location.href=url;
	
}
</script>
</head>
<body>
<div class="container mt-3">
  <h2>팀 목록</h2>
  <form action="list">
	<div class="row mt-3 mb-3">
		<div class="col">
			<select class="form-select" name="col">
				<option value="tname" <c:if test="${col == 'tname' }"> </c:if>>이름</option>
				<option value="phone" <c:if test="${col == 'phone' }"> </c:if>>전화번호</option>
				<option value="skill" <c:if test="${col == 'skill' }"> </c:if>>스킬</option>
				<option value="address" <c:if test="${col == 'address' }"> </c:if>>주소</option>
				<option value="total" <c:if test="${col == 'total' }"> </c:if>>전체출력</option>
			</select>
		</div>
		<div class="col">
			<input type="search" class="form-control" name="word"
				required="required" value="${word}">
		</div>
		<div class="col">
			<button type="submit" class="btn btn-primary">검색</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='create'">등록</button>
		</div>
	</div>
  </form>
  <table class="table table-striped table-hover caption-top">
  	<caption>팀 목록</caption>
    <thead>
      <tr>
        <th>번호</th>
        <th>이름</th>
        <th>스킬</th>
        <th>전화번호</th>
        <th>주소</th>
        <th>우편번호</th>
        <th>성별</th>
        <th>등록일</th>
      </tr>
    </thead>
    <tbody>
   	<c:choose>
      <c:when test="${empty list}">
      	<tr><td colspan="8">등록된 팀이 없습니다.</td></tr>
      </c:when>
      <c:otherwise>
        <c:forEach var="dto" items="${list }" varStatus="status">
	      <tr>
	        <td>${status.count }</td>
	        <td>
	        	<a href="javascript:read('${dto.teamno}')">${dto.tname}</a>
	        	<c:if test="${util:newImg(fn:substring(dto.rdate,0,10))}">
		        	<img src="/images/new.gif">
		        </c:if>	
        	</td>
	        <td>${dto.skill }</td>
	        <td>${dto.phone }</td>
	        <td>${dto.address }</td>
	        <td>${dto.zipcode }</td>
	        <td>
	        	<c:choose>
	        		<c:when test="${dto.gender=='남성' }">
	        			${dto.gender}
	        			<i class="bi bi-gender-male"></i>
	        		</c:when>
	        		<c:otherwise>
	        			${dto.gender}
	        			<i class="bi bi-gender-female"></i>
	        		</c:otherwise>
	        	</c:choose>
	        </td>
	        <td>${dto.rdate }</td>
	      </tr>
      	</c:forEach>
      </c:otherwise>
    </c:choose>
    </tbody>
  </table>
  ${paging }
</div>
</body>
</html>