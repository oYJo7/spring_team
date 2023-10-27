<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkIn(f){
    if (f.tname.value == ""){
        alert("이름을 입력하세요");
        f.tname.focus()
        return false;
    }
    if (f.phone.value == ""){
        alert("전화번호를 입력하세요");
        f.phone.focus();
        return false;
    }
    if (f.address.value == ""){
        alert("주소를 입력하세요");
        f.address.focus();
        return false;
	}
    if (f.zipcode.value == ""){
        alert("우편번호를 입력하세요");
        f.zipcode.focus();
        return false;
	}
    
    var patt = new RegExp("[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}");
    var res = patt.test( $("#phone").val());

    if( !patt.test( $("#phone").val()) ){
        alert("전화번호를 정확히 입력하여 주십시오.");
        return false;
    }

}
</script>
</head>
<body>
<div class="container my-3">
  <h2>팀 수정</h2>
  <form action="update" method="post" onsubmit="return checkIn(this)">
  	<input type="hidden" id="hgender" name="gender" value="남성">
    <div class="mb-3 mt-3">
      <label for="tname">이름:</label>
      <input type="text" class="form-control" id="tname" value="${dto.tname }" name="tname">
    </div>
    <div class="mb-3 mt-3">
      <label for="skills">스킬:</label>
      <c:choose>
	     <c:when test="${dto.skill.indexOf('Python')!=-1}">
		      <div class="form-check">
			  	<input class="form-check-input" type="checkbox" id="python" name="skills" value="Python" checked>
			  	<label class="form-check-label" for="python">
			    	Python
			  	</label>
			  </div>
		  </c:when>
		  <c:otherwise>
		  	  <div class="form-check">
			  	<input class="form-check-input" type="checkbox" id="python" name="skills" value="Python">
			  	<label class="form-check-label" for="python">
			    	Python
			  	</label>
			  </div>
		  </c:otherwise>
	  </c:choose>
	  <c:choose>
	     <c:when test="${dto.skill.indexOf('JAVA')!=-1}">
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="java" name="skills" value="JAVA" checked>
			    <label class="form-check-label" for="java">
			      JAVA
			    </label>
			  </div>
	     </c:when>
	     <c:otherwise>
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="java" name="skills" value="JAVA">
			    <label class="form-check-label" for="java">
			      JAVA
			    </label>
			  </div>
	     </c:otherwise>
	  </c:choose>
	  
	  <c:choose>
	     <c:when test="${dto.skill.indexOf('C')!=-1}">
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="C" name="skills" value="C" checked> 
			    <label class="form-check-label" for="C">
			      C
			    </label>
			  </div>
	     </c:when>
	     <c:otherwise>
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="C" name="skills" value="C">
			    <label class="form-check-label" for="C">
			      C
			    </label>
		    </div>
	     </c:otherwise>
	  </c:choose>
	  
	  <c:choose>
	     <c:when test="${dto.skill.indexOf('Spring')!=-1}">
	     	 <div class="form-check">
			    <input class="form-check-input" type="checkbox" id="Spring" name="skills" value="Spring" checked>
			    <label class="form-check-label" for="Spring">
			      Spring
			    </label>
			  </div>
	     </c:when>
	     <c:otherwise>
	     	 <div class="form-check">
			    <input class="form-check-input" type="checkbox" id="Spring" name="skills" value="Spring">
			    <label class="form-check-label" for="Spring">
			      Spring
			    </label>
			  </div>
	     </c:otherwise>
	  </c:choose>
	 
	  <c:choose>
	     <c:when test="${dto.skill.indexOf('JSP')!=-1}">
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="JSP" name="skills" value="JSP" checked>
			    <label class="form-check-label" for="JSP">
			      JSP
			    </label>
			  </div>
	     </c:when>
	     <c:otherwise>
	     	<div class="form-check">
			    <input class="form-check-input" type="checkbox" id="JSP" name="skills" value="JSP">
			    <label class="form-check-label" for="JSP">
			      JSP
			    </label>
			  </div>
	     </c:otherwise>
	  </c:choose>
	  
    </div>
    <div class="mb-3 mt-3">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" value="${dto.phone }" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13">
    </div>
    <div class="mb-3 mt-3">
      <label for="address">주소:</label>
      <input type="text" class="form-control" id="address" value="${dto.address }" name="address">
    </div>
    <div class="mb-3 mt-3">
      <label for="zipcode">우편번호:</label>
      <input type="text" class="form-control" id="zipcode" value="${dto.zipcode }" name="zipcode" pattern="[0-9]{5}" maxlength="5">
    </div>
    <div class="mb-3 mt-3">
      <label>성별:</label>
      	<c:choose>
	      	<c:when test="${dto.gender == '남성' }">
		      	<div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault" id="men" onclick="gen(this)" checked>
				  <label class="form-check-label" for="men">
				    남성
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault" id="women" onclick="gen(this)">
				  <label class="form-check-label" for="women">
				    여성
				  </label>
				</div>
			</c:when>
			<c:otherwise>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault" id="men" onclick="gen(this)" >
				  <label class="form-check-label" for="men">
				    남성
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault" id="women" onclick="gen(this)" checked>
				  <label class="form-check-label" for="women">
				    여성
				  </label>
				</div>
			</c:otherwise>
		</c:choose>
    </div>

    <button type="submit" class="btn btn-primary">수정</button>
  </form>
</div>

<script type="text/javascript">
function gen(e){
	var gender = document.getElementById("hgender");
	if (e.id == "men"){
		gender.value="남성";
	}else{
		gender.value="여성";
	}
}
</script>

</body>
</html>