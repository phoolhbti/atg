<dsp:page>
<dsp:importbean bean="/atg/userprofiling/Profile"/>
<dsp:importbean bean="/cds/form/ProductSearchFormHandler"/>
	<!DOCTYPE html>
	<html lang="en">
<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
<body role="document">
	<!-- Fixed navbar -->
	<dsp:include page="common/topNav.jsp"></dsp:include>
	<div class="container theme-showcase" role="main">
		 <hgroup class="mb20">
		<h1>Search Results</h1>
		<h2 class="lead"><strong class="text-danger">3</strong> results were found for the search for <strong class="text-danger">Lorem</strong></h2>								
	</hgroup>

    <section class="col-xs-12 col-sm-6 col-md-12">
	<dsp:droplet name="/atg/dynamo/droplet/ForEach">
	<dsp:param bean="ProductSearchFormHandler.searchResults" name="array"/>
	<dsp:oparam name="output">
		<article class="search-result row">
			<div class="col-xs-12 col-sm-12 col-md-3">
				<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-2">
				<ul class="meta-search">
					<li><i class="glyphicon glyphicon-calendar"></i> <span>02/15/2014</span></li>
					<li><i class="glyphicon glyphicon-time"></i> <span>4:28 pm</span></li>
					<li><i class="glyphicon glyphicon-tags"></i> <span>People</span></li>
				</ul>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-7 excerpet">
				<h3><dsp:a href="productDetails.jsp">
					<dsp:param name="itemId" param="element.product_id"/>
					<dsp:valueof param="element.name"/>
				</dsp:a></h3>
				<p><dsp:valueof param="element.shortdescription"/></p>						
                <span class="plus"><a href="#" title="Lorem ipsum"><i class="glyphicon glyphicon-plus"></i></a></span>
			</div>
			<span class="clearfix borda"></span>
		</article>
		</dsp:oparam>
</dsp:droplet>
       		

	</section>
	</div>
	<!-- /container -->
	<dsp:include page="common/copyright.jsp"></dsp:include>
	<dsp:include page="common/footer.jsp"></dsp:include>
</body>
	</html>
</dsp:page>
