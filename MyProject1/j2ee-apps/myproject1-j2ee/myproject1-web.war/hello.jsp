<%-- JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%-- DSP --%>
<%-- This tag library represents the ATG tags --%>
<%@ taglib uri="/dspTaglib" prefix="dsp" %>

<%-- All, non-static includes will have a wrapping page tag --%>
<dsp:page>
TTTTTTTTTTT
	<dsp:importbean bean="/pc/atg/component/Employee1"/>
	<dsp:importbean bean="/pc/atg/component/EmployeeList1"/>
	
	<dsp:droplet name="/atg/dynamo/droplet/ForEach">
	<dsp:param name="array" bean="EmployeeList1.employee" />
	<dsp:setvalue param="EmployeeList1" paramvalue="element"/>
  <dsp:oparam name="output"> 
		<dsp:valueof param="EmployeeList1.city"/><br/>
		<dsp:valueof param="EmployeeList1.name"/><br/>
  </dsp:oparam> 
</dsp:droplet>
NNNNNNNNNNNN
	Helll.........Name:<dsp:valueof bean="Employee1.name">null</dsp:valueof><br/>
	ID:<dsp:valueof bean="Employee1.id">null</dsp:valueof><br/>
	City:<dsp:valueof bean="Employee1.city">null</dsp:valueof><br/>
	Salary:<dsp:valueof bean="Employee1.salary">null</dsp:valueof><br/>
  <%-- A droplet is almost like a servlet, and here you include the name of the droplet you want to call --%>
    <dsp:droplet name="/pc/atg/droplet/HelloWorldDroplet">
    <%-- An 'output parameter' matches the name of the 'service parameter' in your droplet. You can have multiple of these --%>
     <dsp:oparam name="output">
       <%-- The 'param' matches the name of the 'setParameter' in your droplet and can also be assigned to a jstl variable below --%>
       Hello <dsp:valueof param="toWhom" />
     </dsp:oparam>
  </dsp:droplet>
</dsp:page>