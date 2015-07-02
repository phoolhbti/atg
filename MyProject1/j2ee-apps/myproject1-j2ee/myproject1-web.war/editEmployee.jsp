<%@ taglib uri="/dspTaglib" prefix="dsp" %>
<dsp:page>
<dsp:importbean bean="/dyanmusic/EmployeeFormHandler"/>

<HTML>
  <HEAD>
    <TITLE>Edit Employee</TITLE>
  </HEAD>
  <BODY>

    
    <table width="700" cellpadding="8">
      <tr>
        <!-- Sidebar -->
        <td width="100" bgcolor="ghostwhite" valign="top">
          <dsp:a href="empidex.jsp">Employee Home</dsp:a>
    	<dsp:a href="editEmployee.jsp">Edit Employee</dsp:a>
        </td>
        <!-- Page Body -->

        <td valign="top">
          <font face="Verdana,Geneva,Arial" size="-1">
           <!-- *** Start page content *** -->
          <dsp:setvalue/>
           <dsp:form action="editEmployee.jsp" method="post">
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
                 <dsp:input bean="EmployeeFormHandler.repositoryId" paramvalue="empId" name="empId" type="hidden"></dsp:input>
                 <table cellspacing="10">
                 <tr>
                 		<td valing="middle">Emp Id:</td>
                 		<td valing="middle"><dsp:input bean="/dynamusic/EmployeeFormHandler.value.id" name="id" size="24" type="text" requird="<%=true%>"></dsp:input></td>
                 	</tr>
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
                 		<td>
                 		<dsp:getvalueof id="aId" param="empId">
                 		 <dsp:input bean="/dynamusic/EmployeeFormHandler.updateSuccessURL" type="hidden" value='<%="employeeDetails.jsp?itemId="+aId %>'/>
                 		</dsp:getvalueof>
                 		
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.deleteSuccessURL" type="hidden" value="empindex.jsp"/>
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.createSuccessURL" type="hidden" value="empindex.jsp"/>
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.update" type="submit" value="Save Change"/>
                 		<dsp:input bean="/dynamusic/EmployeeFormHandler.delete" type="submit" value="Delete Employee"/>
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

