<dsp:page>
<dsp:importbean bean="/atg/userprofiling/Profile"/>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Central Drug Store</a>
        </div>
        
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <dsp:droplet name="/atg/dynamo/droplet/Switch">
                                <dsp:param bean="Profile.transient" name="value"/>
                                <dsp:oparam name="true">                               
                              <li> <a href="login.jsp">Sign In</a>  </li>
                              <li> <a href="newProfile.jsp">Sign Up</a> </li>                          
                               </dsp:oparam>
                                <dsp:oparam name="false">
                                <li> <a href="updateProfile.jsp">Welcome <dsp:valueof bean="Profile.firstName" /></a></li>
                                 <li> <a href="logout.jsp">Log Out</a> </li>
                             </dsp:oparam>
                            </dsp:droplet>
          </ul>
          <dsp:include page="search.jsp"></dsp:include>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    </dsp:page>
