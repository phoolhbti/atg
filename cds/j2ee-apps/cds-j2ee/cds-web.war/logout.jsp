<dsp:page>
	<!DOCTYPE html>
	<html lang="en">
<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
<body>

	<div class="container">

		<dsp:form action="logout.jsp" method="post" iclass="form-signin">
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
			 <p>Thanks for coming by!  Click below to log out: <p>
			<!-- defines the URL to go to on success (relative to 'action')-->
			
		<dsp:input bean="/atg/userprofiling/ProfileFormHandler.logoutSuccessURL" type="hidden" value="home.jsp"/>
        <dsp:input bean="/atg/userprofiling/ProfileFormHandler.logout" type="Submit" value="Logout" iclass="btn btn-lg btn-primary btn-block" />
		</dsp:form>

	</div>
	<!-- /container -->


	<dsp:include page="common/footer.jsp"></dsp:include>
</body>
	</html>
</dsp:page>
