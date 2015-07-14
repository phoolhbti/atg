<dsp:page>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>

<!DOCTYPE html>
	<html lang="en">
	<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
  <BODY>   
<div class="container">
<div class="row">
          <dsp:form action="newProfile.jsp" method="post" iclass="form-signin">
          
            <!-- Default form error handling support -->
            <dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">
              <dsp:oparam name="output">
                <b><dsp:valueof param="message"/></b><br>
              </dsp:oparam>
              <dsp:oparam name="outputStart">
                <LI>
              </dsp:oparam>
              <dsp:oparam name="outputEnd">
                </LI>
              </dsp:oparam>
            </dsp:droplet>

            <h3>Login information (required)</h3>  
            <label for="login">Login:</label>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.login" name="login" size="24" type="text" iclass="form-control"/><br>

            <!-- set this form to require that the supplied password value should be the same
             as the confirm password parameter -->
            <dsp:input bean="ProfileFormHandler.confirmPassword" type="hidden" value="true" iclass="form-control"/>
         
            <label for="password"> Password:</label>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.password" name="password" size="24" type="password" iclass="form-control"/><br>
  
			 <label for="repassword">Retype password to confirm:</label>
            <dsp:input bean="ProfileFormHandler.value.confirmpassword" size="24" type="password" iclass="form-control"/><br>
            <hr>
            <h3>Personal information (optional)</h3>   
            <label for="first"> First name:</label>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.firstName" name="firstName" size="24" type="text" iclass="form-control"/><br>
          
             <label for="last">Last name:</label>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.lastName" name="lastName" size="24" type="text" iclass="form-control"/><br>
            <br>

            <label for="state"> State:</label>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.value.homeAddress.state" name="state" size="2" type="text" iclass="form-control"/><br>
            <br>
            
              <label for="pinfo">Personal info:</label>
            <dsp:textarea bean="/atg/userprofiling/ProfileFormHandler.value.info" name="info" rows="5" cols="40" iclass="form-control"/><br>
            
          
            <!-- defines the URL to go to on success (relative to 'action')-->
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.createSuccessURL" type="hidden" value="home.jsp"/>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.create" type="Submit" value="Register" iclass="btn btn-lg btn-primary btn-block"/>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.cancelURL" type="hidden" value="home.jsp"/>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.cancel" type="Submit" value="Cancel" iclass="btn btn-lg btn-primary btn-block"/>
          

           
          </dsp:form>
                        
          <!-- *** End real content *** -->
       </div>   
     </div>    
    <!-- /container -->
	<dsp:include page="common/copyright.jsp"></dsp:include>
	<dsp:include page="common/footer.jsp"></dsp:include>
  </BODY>
</HTML>
</dsp:page>
