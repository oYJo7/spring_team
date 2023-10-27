<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    var phonePatt = new RegExp("[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}");
    var res = phonePatt.test( $("#phone").val());

    if( !phonePatt.test( $("#phone").val()) ){
        alert("전화번호를 정확히 입력해주세요.");
        return false;
    }
    
    var zipcodePatt = new RegExp("[0-9]{5}");
    var res = zipcodePatt.test( $("#zipcode").val());

    if( !zipcodePatt.test( $("#zipcode").val()) ){
        alert("우편번호를 정확히 입력해주세요.");
        return false;
    }
    
    let python = document.getElementById("python");
    let java = document.getElementById("java");
    let c = document.getElementById("c");
    let spring = document.getElementById("spring");
    let jsp = document.getElementById("jsp");
    if (!python.checked && !java.checked  && !c.checked  && !spring.checked && !jsp.checked ){
    	alert("스킬을 하나 이상 선택해주세요.");
        return false;
    }

}
</script>
</head>
<body>
<div class="container my-3">
  <h2>팀 등록</h2>
  <form action="create" method="post" onsubmit="return checkIn(this)">
  	<input type="hidden" id="hgender" name="gender" value="남성">
    <div class="mb-3 mt-3">
      <label for="tname">이름:</label>
      <input type="text" class="form-control" id="tname" placeholder="이름을 입력하세요." name="tname">
    </div>
    <div class="mb-3 mt-3">
      <label for="skills">스킬:</label>
      <p>※ 1개 이상 선택하세요.</p>
      <div class="form-check">
	  	<input class="form-check-input" type="checkbox" id="python" name="skills" value="Python" checked>
	  	<label class="form-check-label" for="python">
	    	Python
	  	</label>
	  </div>
	  <div class="form-check">
	    <input class="form-check-input" type="checkbox" id="java" name="skills" value="JAVA">
	    <label class="form-check-label" for="java">
	      JAVA
	    </label>
	  </div>
	  <div class="form-check">
	    <input class="form-check-input" type="checkbox" id="c" name="skills" value="C">
	    <label class="form-check-label" for="C">
	      C
	    </label>
	  </div>
	  <div class="form-check">
	    <input class="form-check-input" type="checkbox" id="spring" name="skills" value="Spring">
	    <label class="form-check-label" for="Spring">
	      Spring
	    </label>
	  </div>
	  <div class="form-check">
	    <input class="form-check-input" type="checkbox" id="jsp" name="skills" value="JSP">
	    <label class="form-check-label" for="JSP">
	      JSP
	    </label>
	  </div>
    </div>
    <div class="mb-3 mt-3">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" placeholder="전화번호를 입력하세요. ex. 000-0000-0000" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13">
    </div>
    <div class="mb-3 mt-3">
      <label for="address">주소:</label>
      <input type="text" class="form-control" id="address" placeholder="주소를 입력하세요." name="address">
    </div>
    <div class="mb-3 mt-3">
      <label for="zipcode">우편번호:</label>
      <input type="text" class="form-control" id="zipcode" placeholder="우편번호를 입력하세요. ex. 00000" name="zipcode" pattern="[0-9]{5}" maxlength="5">
    </div>
    <div class="mb-3 mt-3">
      <label>성별:</label>
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
    </div>

    <button type="submit" class="btn btn-primary">등록</button>
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