<%@ page import="java.util.List"  %>
<%@ page import="java.util.Map"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	
	<a href="../home/main">Home</a>

	<h2>회원가입</h2>
	
	<script type="text/javascript">
		function AccountForm__submit(form) {
// 			입력값을 콘솔에 확인. value= 입력값. 입력체크....
			// 			console.log('form.loginId.value : ' + form.loginId.value);
			// 			console.log('form.loginId.value.trim() : '
			// 					+ form.loginId.value.trim());
			// 			console.log('form.loginId.value.trim : ' + form.loginId.value.trim);
			// 			console.log('form.loginPw.value : ' + form.loginPw.value);
			// 			console.log('form.loginPwConfirm.value : '
			// 					+ form.loginPwConfirm.value);
			// 			console.log('form.name.value : ' + form.name.value);
			// 			form.loginId.value = form.loginId.value.trim();
			// 			console.log("loginId : " + loginId);
			
			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			let loginPwConfirm = form.loginPwConfirm.value.trim();
			let name = form.name.value.trim();
 		
			if(loginId.length == 0) {
				// 3. 중복 아이디를 확인하기 위해서는 DB에서의 Id 정보를 가져와야 하므로 DoAccount에서 진행.
				alert('아이디를 입력하세요.');
				return;
			}
			if(loginPw.length == 0) {
				alert('비밀번호를 입력하세요.');
				return;
			}
			if(loginPwConfirm.length == 0) {
				alert('비밀번호 확인을 입력하세요.');
				return;
			}
			// 2. 비밀번호 일치 확인
			if (loginPw != loginPwConfirm) {
				alert('비밀번호를 다시 확인해주세요.');
				// 2-1. 불일치 할 경우. 어느부분에서 틀린지 모르니 다시 입력을 위해 pw에 포커스를 줌.
				form.loginPw.focus();
				return;
			}
			if(name.length == 0) {
				alert('닉네임을 입력하세요.');
				return;
			}
			// 1. 입력체크 확인 된다면! 서브밋!
			form.submit();
		}
	</script>
	
	<form method="POST" action="doAccount"
		onsubmit="AccountForm__submit(this); return false;">
		<div>
			아이디 : 
			<input autocomplete="off" type="text" placeholder="ID" name="loginId"/>
		</div>
		<div>
			비밀번호 : 
			<input autocomplete="off" type="password" placeholder="PW" name="loginPw"/>
		</div>
		<div>
			비밀번호 확인 : 
			<input autocomplete="off" type="password" placeholder="Pw check" name="loginPwConfirm"/>
		</div>
		<div>
			이름 : 
			<input autocomplete="off" type="text" placeholder="이름" name="name"/>
		</div>
		<button type="submit">가입</button>
	</form>
	
	<div><a style="color: yellowgreen" href="../article/list">리스트로 돌아가기</a></div>
	
</body>
</html>