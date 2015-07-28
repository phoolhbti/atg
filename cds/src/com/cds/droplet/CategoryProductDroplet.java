package com.cds.droplet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import atg.repository.Repository;
import atg.repository.RepositoryException;
import atg.repository.RepositoryItem;
import atg.servlet.DynamoServlet;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;


public class CategoryProductDroplet extends DynamoServlet{	
	private Repository repository;
	public void service(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
		throws ServletException, IOException {
				String categoryId = pRequest.getParameter("categoryId");
				 ServletOutputStream out = pResponse.getOutputStream ();
				    out.println ("<h1> category added:"+categoryId+".</h1>");
				    RepositoryItem currentCategory = null;
				    try {
				    	currentCategory = getRepository().getItem(categoryId,"category");
				    	Object typeofProductList=currentCategory.getPropertyValue("productList");
				    	out.println ("<h1> ProductId's :"+typeofProductList.toString()+".</h1>");
					} catch (RepositoryException e) {
						
						e.printStackTrace();
					}
				
		}
	public Repository getRepository() {
		return repository;
	}
	public void setRepository(Repository repository) {
		this.repository = repository;
	}
}
