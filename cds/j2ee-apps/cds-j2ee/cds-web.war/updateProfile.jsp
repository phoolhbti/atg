<dsp:page>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>
<!DOCTYPE html>
	<html lang="en">
<dsp:include page="common/header.jsp">
	<dsp:param name="pagename" value="Home Page" />
</dsp:include>
<body>
<dsp:include page="common/topNav.jsp"></dsp:include>
	<div class="container"> 
    
          
          <!-- *** Start page content *** -->

          <dsp:form action="updateProfile.jsp" method="post">
          
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

            <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Personal info</h3>
        
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <dsp:input bean="ProfileFormHandler.value.firstName" iclass="form-control"  type="text"/> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <dsp:input bean="ProfileFormHandler.value.lastName" iclass="form-control"  type="text"/> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Company:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
             <dsp:input bean="ProfileFormHandler.value.email" iclass="form-control"  type="email"/> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Time Zone:</label>
            <div class="col-lg-8">
              <div class="ui-select">
                <select id="user_time_zone" class="form-control">
                  <option value="Hawaii">(GMT-10:00) Hawaii</option>
                  <option value="Alaska">(GMT-09:00) Alaska</option>
                  <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                  <option value="Arizona">(GMT-07:00) Arizona</option>
                  <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                  <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                  <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                  <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                </select>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Username:</label>
            <div class="col-md-8">
              <dsp:input bean="ProfileFormHandler.value.login" iclass="form-control"  type="text"/> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
               <dsp:input bean="ProfileFormHandler.value.password" iclass="form-control"  type="password"/> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
             <dsp:input bean="ProfileFormHandler.value.confirmpassword" iclass="form-control"  type="password"/>           
         </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">              
              <dsp:input bean="/atg/userprofiling/ProfileFormHandler.updateSuccessURL" type="hidden" value="home.jsp"/>
            <dsp:input bean="/atg/userprofiling/ProfileFormHandler.update" iclass="btn btn-primary" type="Submit" value="Update"/>
              <span></span>             
              <dsp:input bean="/atg/userprofiling/ProfileFormHandler.cancelURL" type="hidden" value="home.jsp"/>
              <dsp:input bean="/atg/userprofiling/ProfileFormHandler.cancel" iclass="btn btn-default" type="Submit" value="Cancel"/>
            </div>
          </div>
        </form>
      </div>
  </div>
   </dsp:form>
                        
          <!-- *** End real content *** -->
          
         
    </div>
  </BODY>
</HTML>
</dsp:page>
