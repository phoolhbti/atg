<%@ taglib uri="/dspTaglib" prefix="dsp" %>
<dsp:page>
<dsp:importbean bean="/dyanmusic/EmployeeFormHandler"/>

<HTML>
  <HEAD>
    <TITLE>New Employee</TITLE>
  </HEAD>
  <BODY>

    
    <table width="700" cellpadding="8">
      <tr>
        <!-- Sidebar -->
        <td width="100" bgcolor="ghostwhite" valign="top">
          <dsp:include page="empindex.jsp"></dsp:include> 
    
        </td>
        <!-- Page Body -->

        <td valign="top">
          <font face="Verdana,Geneva,Arial" size="-1">
           <!-- *** Start page content *** -->
           <dsp:form action="newEmployee.jsp" method="post">
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
                 <table cellspacing="10">
                 	<tr>
                 		<td valing="middle">Name:</td>
                 		<td valing="middle"><dsp:input bean="/dynamusic/EmployeeFormHandler.value.name" name="name" size="24" type="text" requird="<%=true%>"></dsp:input></td>
                 	</tr>
                 	<tr>
                 		<td valing="middle">City:</td>
                 		<td valing="middle"><dsp:input bean="/dynamusic/EmployeeFormHandler.value.city" name="city" size="24" type="text"></dsp:input></td>
                 	</tr>
                 	<tr>
                 		<td valing="middle">Salary:</td>
                 		<td valing="middle"><dsp:input bean="/dynamusic/EmployeeFormHandler.value.salary" name="salary" size="24" type="text" ></dsp:input></td>
                 	</tr>
                 	<tr>
                 		<td>&nbsp;</td>
                 		<td>
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.create" type="submit" value="Create New Employee"/>
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.createSuccessURL" type="hidden" value="empindex.jsp"/>
                 		</td>
                 		
                 	</tr>
                 </table>
           </dsp:form>
           
			


          <!-- *** End content *** -->
          
          </font>
        </td>
    </table>
  </BODY>
</HTML>
</dsp:page>

