<%@ taglib uri="/dspTaglib" prefix="dsp" %>
<dsp:page>
	<dsp:importbean bean="/atg/targeting/RepositoryLookup"/>
<HTML>
  <HEAD>
    <TITLE>Employee Details...</TITLE>
  </HEAD>
  <BODY>
<dsp:droplet name="/pc/atg/EmployeeLookupDroplet">
	<dsp:param param="itemId" name="id"/>
	<dsp:oparam name="empty">
		Employee with Id <dsp:valueof param="itemId">None</dsp:valueof> not found..
	</dsp:oparam>
	<dsp:oparam name="output">
		<table width="700" cellpadding="8">
		      <tr>
		        <!-- Sidebar -->
		        <td width="100" bgcolor="ghostwhite" valign="top">
		          <dsp:include page="newEmployee.jsp"></dsp:include> 
		        </td>
		        <!-- Page Body -->
		        <td valign="top">
		        <font face="Verdana,Geneva,Arial" size="-1">
		        	<table border="0">
			        	<tr>
			        		<td>Name:<dsp:valueof param="element.name"></dsp:valueof></td>
			        	</tr>
			        	<tr>
			        		<td>City:<dsp:valueof param="element.city"></dsp:valueof></td>
			        	</tr>
			        	<tr>
			        		<td>Salary:<dsp:valueof param="element.salary"></dsp:valueof></td>
			        	</tr>
			        	<tr>
			        		<td>&nbsp;</td>
			        		<td>
			        			<b><dsp:a href="editEmployee.jsp"><dsp:param name="empId" param="element.id"/>Edit Employee</dsp:a></b>
			        		</td>
			        	</tr>
		        	</table>
		        </font>
		      </td>
		   </tr>
        	</table>
	</dsp:oparam>
</dsp:droplet>
</BODY>
</HTML>
</dsp:page>

