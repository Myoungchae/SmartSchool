<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
  <title>Main</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>">
  <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
  <script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>"></script>
  <script type="text/javaScript" language="javascript" defer="defer">
  $( document ).ready(function() {
	  
  });
  
  function signup(){
	  location.href="<c:url value='/home.do'/>";
  }
  
  function check(){
	  if( $("#user_name").val() == ''){
		  alert("이름을 입력하세요");
		  return false;
	  }
	  if( $("#user_phone").val() == ''){
		  alert("전화번호를 입력하세요");
		  return false;
	  }
	  if( $('#user_id').val() == ''){
		  alert("아이디를 입력하세요");
		  return false;
	  }
	  if( $("#user_pw1").val() == ''){
		  alert("비밀번호를 입력하세요");
		  return false;
	  }
	  if( $("#user_pw2").val() == ''){
		  alert("비밀번호 재확인을 입력하세요");
		  return false;
	  }
	  if( $("#user_email").val() == ''){
		  alert("이메일을 입력하세요");
		  return false;
	  }
	  if( $('#user_pw1').val() != $('#user_pw2').val() ){
		  alert("비밀번호가 일치하지 않습니다.");
		  return false;
	  }
	  else if ( $('#user_pw1').val() == $('#user_pw2').val() ){		
		  return true;
	  }
  }
  
  </script>
</head>
<body>

<div class="container">
  <h1>회원 가입</h1>
  <div class="panel panel-body">
    <!-- 회원가입 창 -->
    <div class="panel-heading">
    <!--컨트롤러에 login.do만들고 method를 post로 설정해서 값을 주소창에서 숨긴다.-->
    <form method="post" action="<c:url value='/login.do'/>">
      <div class="mb-3 mt-3">
	    <label for="user_name" class="form-label">이름:</label>
	    <input type="text" class="form-control" id="user_name" placeholder="이름을 입력하세요" name="user_name">
	  </div>
	   <div class="mb-3 mt-3">
	    <label for="user_phone" class="form-label">전화번호:</label>
	    <input type="text" class="form-control" id="user_phone" placeholder="전화번호를 입력하세요" name="user_phone">
	  </div>
	  <div class="mb-3 mt-3">
	    <label for="user_id" class="form-label">아이디:</label>
	    <input type="text" class="form-control" id="user_id" placeholder="아이디를 입력하세요" name="user_id">
	  </div>
	  <div class="mb-3">
	    <label for="user_pw1" class="form-label">비밀번호:</label>
	    <input type="text" class="form-control" id="user_pw1" placeholder="비밀번호를 입력하세요" name="user_pw1">
	  </div>
	  <div class="mb-3">
	    <label for="user_pw2" class="form-label">비밀번호 재입력:</label>
	    <input type="text" class="form-control" id="user_pw2" placeholder="비밀번호를 다시 입력해 주세요" name="user_pw2">
	  </div>
	  <div class="mb-3 mt-3">
	    <label for="user_eamil" class="form-label">이메일:</label>
	    <input type="text" class="form-control" id="user_eamil" placeholder="이메일을 입력하세요" name="user_eamil">
	  </div>
	<!--   <div class="form-check mb-3">
	    <label class="form-check-label">
	      <input class="form-check-input" type="checkbox" name="remember"> Remember me
	    </label>
	  </div> -->
	  <!--로그인 버튼 구현-->
	  <!--로그인누르면 빈칸일때는 알림 틀리면 틀리다고 알림 맞으면 메인화면으로 넘어간다 return check().-->
	  <button type="submit" class="btn btn-primary" onclick="return check()" >등록</button>
	  <!--회원가입 버튼 구현-->
	</form>
    </div>
  </div>
</div>

</body>
</html>