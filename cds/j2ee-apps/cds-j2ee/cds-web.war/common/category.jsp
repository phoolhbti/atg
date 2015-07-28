
<dsp:page>
     <div class="col-md-3">    
  <p class="lead">Shop Name</p>
          <dsp:droplet name="/atg/dynamo/droplet/RQLQueryForEach">
            <dsp:param name="queryRQL" value='ALL ORDER BY name'/>
            <dsp:param name="repository" value="/cds/repository/DrugsRepository"/>
            <dsp:param name="itemDescriptor" value="category"/>
            <dsp:oparam name="outputStart">
              <div class="list-group">
            </dsp:oparam>
            <dsp:oparam name="outputEnd">
              </div>
            </dsp:oparam>
            <dsp:oparam name="output">             
                <dsp:a href="../categoryList.jsp" iclass="list-group-item">
                  <dsp:param name="itemId" param="element.id" />
                  <dsp:valueof param="element.name"/>
                </dsp:a>  
            </dsp:oparam>
            <dsp:oparam name="empty">
              <p>No Category currently available, sorry.
            </dsp:oparam>
          </dsp:droplet>


   </div>      
</dsp:page>

