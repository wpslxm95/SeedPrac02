<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<p>Ajax 테스트 입니다.</p>

<script type="text/javascript">
	$(function() {
		$("#button1").click(function() {
			var dan = $("#dan").val();

			$.ajax({
				type : "post",
				url : "result",
				data : "dan=" + dan,
				success : function(data) {//콜백함수 (처리 완료시 실행됨)
					$("#result").html(data);
				}
			});
		});
	});
</script>
<script type="text/javascript">
	function login() {
		var userid = $("#userid").val(); //id태그에 입력한 값
		var passwd = $("#passwd").val(); //pw태그에 입력한 값
		if (userid == "") { //빈값이면
			alert("아이디를 입력하세요.");
		$("#userid").focus(); //입력 포커스 이동
		return; //함수 종료			
		} //if
		if (passwd == "") { //빈값이면
			alert("비밀번호를 입력하세요.");
		$("#passwd").focus(); //입력 포커스 이동
		return; //함수 종료
		}
		document.form1.submit(); //action 주소로 전송
	}
	$(function() { //웹페이지가 로딩된 후 자동으로 실행되는 부분
		$("#btnLogin").click(function() {
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			//쿼리스트링(변수명=값&변수면=값)
			var param = "userid=" + userid + "&passwd=" + passwd;
		
	$.ajax({
		type : "post",
		url : "result2",
		data : param,
		success : function(data) { //콜백함수(서버의 처리 완료 후)
			$("#div1").html(data); //화면갱신
			}
		});
	});
});
</script>
</head>

</html>
</head>
<body>
<!-- 
동기적 방식(synchronized) 순서대로 작업 진행
비동기적 방식(asynchronized) 동시에 진행(백그라운드에서 실행됨)
 -->
 <h2>동기식(single thread): 새로고침 깜빡임</h2>
 <form action="result">
   단을 입력하세요 <input type="text" name="dan">
   <input type="submit" value="확인">
 </form>
 
 <h2>비동기식(multi thread): 새로고침 안깜빡임</h2>
   단을 입력하세요 <input type="text" id="dan">
   <input type="button" id="button1"  value="확인">
   <div id="result">결과 출력 영역</div>
 
<h2>ajax(비동기적인 방식)</h2>
	아이디 : <input type="text" id="userid" name="userid"><br>
	비번 : <input type="password" id="passwd" name="passwd">
	<input type="button" value="확인" id="btnLogin">
	<div id="div1">결과 출력 영역</div>

</body>
