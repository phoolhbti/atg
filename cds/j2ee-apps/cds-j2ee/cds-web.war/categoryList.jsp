<dsp:page>
<dsp:importbean bean="/atg/userprofiling/Profile"/>
	<!DOCTYPE html>
	<html lang="en">
<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
<body role="document">
	<!-- Fixed navbar -->
	<dsp:include page="common/topNav.jsp"></dsp:include>
	<div class="container theme-showcase" role="main">
		<div class="row">
			<!-- Catagery  start.. -->			
             <dsp:include page="common/category.jsp"></dsp:include>
            <!-- Catagery  end. -->
             <div class="col-md-9">
              <div class="row">
             <dsp:include page="common/featuredProduct.jsp"></dsp:include>
             </div>
		</div>
	</div>
	<!-- /container -->
	<dsp:include page="common/copyright.jsp"></dsp:include>
	<dsp:include page="common/footer.jsp"></dsp:include>
</body>
	</html>
</dsp:page>
