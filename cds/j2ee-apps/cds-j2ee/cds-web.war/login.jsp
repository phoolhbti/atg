<dsp:page>
	<!DOCTYPE html>
	<html lang="en">
<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
<body>

	<div class="container">

		<dsp:form action="login.jsp" method="post" iclass="form-signin">
			<!-- Default form error handling support -->
			<dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">
				<dsp:oparam name="output">
					<b><dsp:valueof param="message" /></b>
					<br>
				</dsp:oparam>
				<dsp:oparam name="outputStart">
					<LI>
				</dsp:oparam>
				<dsp:oparam name="outputEnd">
					</LI>
				</dsp:oparam>
			</dsp:droplet>
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="inputEmail" class="sr-only">User Name</label>
			<dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.login"
				name="login" size="24" type="text" iclass="form-control" />
			<label for="inputPassword" class="sr-only">Password</label>
			<dsp:input
				bean="/atg/userprofiling/ProfileFormHandler.value.password"
				name="password" size="24" type="password" iclass="form-control" />
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<!-- defines the URL to go to on success (relative to 'action')-->
			<dsp:input
				bean="/atg/userprofiling/ProfileFormHandler.loginSuccessURL"
				type="hidden" value="home.jsp" />
			<dsp:input bean="/atg/userprofiling/ProfileFormHandler.login"
				type="Submit" value="Login"
				iclass="btn btn-lg btn-primary btn-block" />

		</dsp:form>

	</div>
	<!-- /container -->


	<dsp:include page="common/footer.jsp"></dsp:include>
</body>
	</html>
</dsp:page>
