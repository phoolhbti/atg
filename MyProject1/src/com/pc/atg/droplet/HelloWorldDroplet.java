package com.pc.atg.droplet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;

import atg.core.util.StringUtils;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;

public class HelloWorldDroplet extends DynamoServlet {

	public HelloWorldDroplet(){
		System.out.print("Hello world droplet.....");
	}
    public void service(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse) throws ServletException, IOException {
            //This will allow you to pass a parameter to the droplet eg: hello.jsp?who=Peter
    	ServletOutputStream out = pResponse.getOutputStream ();
        out.println ("Hello World! My name i form droplet....s ");
        String who = pRequest.getParameter("who");

        //Do a check on whether to display the default value or the one passed in
        if (StringUtils.isEmpty(who)) {
            //'toWhom' is the name of the param on the JSP page
            pRequest.setParameter("toWhom", "World");
        } else {
            pRequest.setParameter("toWhom", who);
        }
        //'output' is the name of the 'oparam' on the JSP page.
        pRequest.serviceParameter("output", pRequest, pResponse);
        }
}