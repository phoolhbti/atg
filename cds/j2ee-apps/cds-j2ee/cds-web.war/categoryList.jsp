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
			 Hello world..22. <dsp:valueof param="categoryId"/><br/>
			 <dsp:getvalueof var="omap" param="productIds"/>
			 <dsp:droplet name="/atg/dynamo/droplet/ForEach">				
				 <dsp:param name="array" value={omap}/>
				<dsp:oparam name="outputStart">
				<ul>
				</dsp:oparam>
				<dsp:oparam name="outputEnd">
				</ul>
				</dsp:oparam>
				<dsp:oparam name="output">
				 Key:: <dsp:valueof param="key" /> <br />
   Value :: <dsp:valueof param="element" /> <br /> 
				</dsp:oparam>
				<dsp:oparam name="empty">
					No concerts found for this venue.
				</dsp:oparam>
				<dsp:valueof param="count"/> 
			</dsp:droplet>
			 
<dsp:valueof param="productIds"/>			 
			<dsp:droplet name="/cds/droplet/CategoryProductDroplet">				
			</dsp:droplet>
			 
             </div>
		</div>
	</div>
	<!-- /container -->
	<dsp:include page="common/copyright.jsp"></dsp:include>
	<dsp:include page="common/footer.jsp"></dsp:include>
</body>
	</html>
</dsp:page>
