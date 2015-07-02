<%@ taglib uri="/dspTaglib" prefix="dsp" %>
<dsp:page>


<HTML>
  <HEAD>
    <TITLE>Employee Details...</TITLE>
  </HEAD>
  <BODY>

    
    <table width="700" cellpadding="8">
      <tr>
        <!-- Sidebar -->
        <td width="100" bgcolor="ghostwhite" valign="top">
          <dsp:include page="newEmployee.jsp"></dsp:include> 
    
        </td>
        <!-- Page Body -->

        <td valign="top">
          <font face="Verdana,Geneva,Arial" size="-1">
           <!-- *** Start page content *** -->
			<dsp:droplet name="/atg/dynamo/droplet/RQLQueryForEach">
				<dsp:param name="queryRQL" value="ALL ORDER BY name"/>
				<dsp:param name="repository" value="/dynamusic/EmployeeRepository"/>
				<dsp:param name="itemDescriptor" value="employee"/>
				<dsp:oparam name="outputStart">
				 <ul>
				</dsp:oparam>
				<dsp:oparam name="outputEnd">
				 </ul>
				</dsp:oparam>
				<dsp:oparam name="output">
					<li>
					<dsp:a href="employeeDetails.jsp">
							<dsp:param name="itemId" param="element.id"></dsp:param>
							<dsp:valueof param="element.name"></dsp:valueof>						
					</dsp:a>
					</li>
				
				</dsp:oparam>
				<dsp:oparam name="empty">
				 <p>Currently No employee aviable...sorry..
				</dsp:oparam>
			</dsp:droplet>


          <!-- *** End content *** -->
          
          </font>
        </td>
    </table>
  </BODY>
</HTML>
</dsp:page>

