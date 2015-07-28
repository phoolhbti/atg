<dsp:page>
<dsp:importbean bean="/cds/form/ProductSearchFormHandler"/>
<dsp:form iclass="navbar-form" action="searchResults.jsp">
	<dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">
					<dsp:oparam name="output">
						<li><strong><dsp:valueof param="message"/></strong></li>
					</dsp:oparam>
					<dsp:oparam name="outputStart">
						<ul>
					</dsp:oparam>
					<dsp:oparam name="outputEnd">
						</ul>
					</dsp:oparam>
				</dsp:droplet>
	<div class="input-group">
		<dsp:input type="hidden" size="40" bean="ProductSearchFormHandler.successURL" value="searchResults.jsp" />
		<dsp:input type="text" iclass="form-control"  bean="ProductSearchFormHandler.keywordInput" />
		
		<span class="input-group-btn">
		<dsp:input type="submit"  iclass="btn btn-default" value="search" bean="ProductSearchFormHandler.search" >
			<span class="glyphicon glyphicon-search">
					<span class="sr-only">Search...</span>
				</span>
		</dsp:input>			
		</span>
	</div>
</dsp:form>
</dsp:page>
