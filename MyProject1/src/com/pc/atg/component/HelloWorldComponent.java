package com.pc.atg.component;

import atg.nucleus.GenericService;
import atg.nucleus.ServiceException;

public class HelloWorldComponent extends GenericService{

	 public String firstStr = "Dummy Value"; /* This value will be overwritten */

	    public String getFirstStr() {
	        return firstStr;
	    }

	    public void setFirstStr(String firstStr) {
	        this.firstStr = firstStr;
	    }

	    @Override
	    public void doStartService() throws ServiceException {
	        super.doStartService();
	        System.out.println("Hello ATG Component!");
	    }

	    @Override
	    public void doStopService() throws ServiceException {
	        super.doStopService();
	        System.out.println("Hello ATG Component! Stops now!");
	    }
}
