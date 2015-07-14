<dsp:page> 
				<dsp:droplet name="/atg/dynamo/droplet/ForEach">
                    <dsp:param bean="/cds/FeaturedProducts.products" name="array"/>
                    <dsp:oparam name="outputStart">
                      
                    </dsp:oparam>
                    <dsp:oparam name="outputEnd">
                      
                    </dsp:oparam>
                    <dsp:oparam name="output"> 
                    <div class="col-sm-4 col-lg-4 col-md-4">                 
                   <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$50</h4>
                                <h4><a href="#"><dsp:valueof param="element"/></a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
                  
             
             </dsp:page>
