<%@ page import="atg.servlet.*"%>
<dsp:page>

	<dsp:importbean bean="/atg/dynamo/Configuration" />
	<dsp:importbean bean="/cds/form/SampleFormHandler"/>
	<dsp:importbean bean="/cds/Customer"/>

	<head>
<title>cds-web JSP Index Page</title>
	</head>
	<body>
		<%-- Sample Form Handler --%>
		<dsp:form action="sampleTest.jsp">
			<!-- Default form error handling support -->
			<dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">
				<dsp:oparam name="output">
					<strong><dsp:valueof param="message" /></strong>
					<br>
				</dsp:oparam>
				<dsp:oparam name="outputStart">
					<li>
				</dsp:oparam>
				<dsp:oparam name="outputEnd">
					</li>
				</dsp:oparam>
			</dsp:droplet>

			<p>
				Name:
				<dsp:input type="text" bean="SampleFormHandler.name" size="15" />
			</p>
			<p>
				Email: <input type="text" name="email" />
			</p>
			<dsp:input bean="SampleFormHandler.successURL" type="hidden"
				value="sampleTest.jsp" required="true" />
			<p>
				Submit:
				<dsp:input type="submit" value="Submit Button"
					bean="SampleFormHandler.submit" />
			</p>
			<%-- Test Value Output --%>
							<p>Customer name is: <dsp:valueof bean="Customer.name" /></p>

	<%-- Sample  Droplet --%>
							<dsp:droplet name="/cds/droplet/SampleDroplet">
								<dsp:param bean="Customer" name="client"/>
								<dsp:oparam name="profile">
									<h1>Hello dear <dsp:valueof param="profile.name" /></h1>
								</dsp:oparam>
								<dsp:oparam name="date">
									<p>Current date is: <dsp:valueof param="date" /></p>
								</dsp:oparam>
								<dsp:param name="dformat" value="dd/MM/yyyy" />
								<dsp:oparam name="localParam">
									Trololo text is after date <dsp:valueof param="localParam" />
								</dsp:oparam>
							</dsp:droplet>
			
		</dsp:form>

	</body>
</dsp:page>
<%-- @version $Id: //product/Eclipse/version/10.2/plugins/atg.project/templates/index.jsp#1 $$Change: 735822 $--%>
