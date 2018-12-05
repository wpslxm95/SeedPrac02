<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="mainContent">
	<c:if test="${empty sessionScope.id }">
		<div id="NoLogin" class="col-md-8 col-md-offset-2">
			<p>로그인해라</p>
		</div>
	</c:if>
	<c:if test="${not empty sessionScope.id  }">
		<div id="NoLogin" class="col-md-8 col-md-offset-2">
		
			<p>${sessionScope.id }야 환영한다</p>
		</div>
	</c:if>
</div>