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
             <dsp:droplet name="/atg/dynamo/droplet/RQLQueryForEach">
                    <dsp:param name="queryRQL" value="ALL ORDER BY name" />
                    <dsp:param name="itemDescriptor" value="product" />
                    <dsp:param name="repository" value="/cds/repository/DrugsRepository"/>
                    <dsp:oparam name="outputStart">
                      
                    </dsp:oparam>
                    <dsp:oparam name="outputEnd">
                      
                    </dsp:oparam>
                    <dsp:oparam name="output"> 
                    <div class="col-sm-4 col-lg-4 col-md-4">                 
                   <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><dsp:valueof param="element.price"/></h4>
                                <h4><dsp:a href="productDetails.jsp">
								<dsp:param name="itemId" param="element.product_id" />
								<dsp:valueof param="element.name"/>
								</dsp:a>
                                </h4>
                                <p><dsp:valueof param="element.shortdescription"/></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right"><dsp:valueof param="element"/></p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                        </div>
                    </dsp:oparam>
                    <dsp:oparam name="empty">
                      No featured product this week.
                    </dsp:oparam>
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
