<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#wrap_div{
	background-color: pink;
}
#loginbox{
	border:2px pink dotted;
	
}
/* #btn_submit{
	background-color:black;
	border:1px pink solid;
	color:pink;
	
} */
</style>
<div id="row">
	<div class="container">
		<div id="loginbox" class="col-md-4 col-md-offset-4" >
			<form action="<c:url value='/seed/prac/gotoLoginProcess.do'/>" method="post">
				${isNotMember}
				<div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="id" name="id" placeholder="id">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" name="pwd"id="pwd" placeholder="Password">
			    </div>
			  </div>
			  <div class="form-group">d
			    <div class="col-sm-offset-2 col-sm-10">
			      <div class="checkbox">
			        
			      </div>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" id="btn_submit"class="btn btn-danger">Sign in</button>
			    </div>
			  </div>
			</form>
		</div>
	</div>
</div>