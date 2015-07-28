package com.cds;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import atg.nucleus.GenericService;
import atg.repository.Repository;
import atg.repository.RepositoryException;
import atg.repository.RepositoryItem;

public class ProductList extends GenericService {
	private Repository repository;
	private String itemDescriptor;
	private int howMany;
	private boolean random;
	private List<Product> products;
	private String[] productIds;
	
	//bean property: repository
	public Repository getRepository() {
		return repository;
	}
	public void setRepository(Repository repository) {
		this.repository = repository;
	}
	//bean property: itemDescriptor
	public String getItemDescriptor() {
		return itemDescriptor;
	}
	public void setItemDescriptor(String itemDescriptor) {
		this.itemDescriptor = itemDescriptor;
	}
	//bean property: howMany
	public int getHowMany() {
		return howMany;
	}
	public void setHowMany(int howMany) {
		if (howMany < 1) {
			howMany = 1;
			if (isLoggingDebug())
				logDebug ("howMany was set too low; resetting it to 1");
		}
		if (howMany > 9) {
			howMany = 9;
			if (isLoggingDebug())
				logDebug ("howMany was set too high; resetting it to 9");
		}

		this.howMany = howMany;
	}
	//bean property: random
	public boolean isRandom() {
		return random;
	}
	public void setRandom(boolean random) {
		this.random = random;
	}
	//bean property: productIds
	public String[] getProductIds() {
		return productIds;
	}
	public void setProductIds(String[] productIds) {
		this.productIds = productIds;
		if (products==null)
			products = new ArrayList <Product> ();
		if (isLoggingDebug())
			logDebug("setProductIds called -- emptying and reloading featured product titles.");
		products.clear();
		loadProducts();
	}
	//bean property: songs
	public List<Product> getProducts() {
		if (products==null) {
			if (isLoggingDebug())
				logDebug("getProducts called for first time -- loading featured product titles now.");	
			products = new ArrayList <Product> ();
			loadProducts();
		}
		// if random is true, shuffle the List
		if (random)
			Collections.shuffle(products);
		
		//copy first howMany of the products into FeaturedSongs and return them
		List<Product> featuredProducts = new ArrayList<Product>();
		int numReturned = 0;
		for (int i=0;i < getHowMany() && i < products.size();i++) {
			featuredProducts.add(i, products.get(i));	
			numReturned = i+1;
		}
		if (isLoggingDebug())
			logDebug("getProducts called, returning " + numReturned + " product titles.");	
		return featuredProducts;
	}
	public void setProducts(List<Product> products) {
		if (isLoggingDebug())
			logDebug("setProducts called with " + products);
		this.products = products;
	}
	//helper method loadProducts
	public void loadProducts() {
		// Populate the locally stored list of songs.
		// Note this is completely hard-coded to simplify things for
		// this training lab that just introduces Nucleus components.
		// In the real world we would use a slot component but that is
		// beyond the scope of this training course.
		
		// need to get a list of ids, either from the properties file
		// (in property productIds) or else from a default list
		if (productIds==null) {
			String [] defaultProductIds={"1001","1002","2001",
					"2002","3001","3002","4001","4002","5001"};
			productIds = defaultProductIds;
		}
		RepositoryItem currentProduct = null;
	try {
		for(int i=0;i<productIds.length;i++) {
			currentProduct = getRepository().getItem(productIds[i],"product");
			if (currentProduct!=null) {
				Product prod=new Product();
				prod.setName((String) currentProduct.getPropertyValue("name"));
				prod.setPrice((String) currentProduct.getPropertyValue("price"));
				prod.setShortdescription((String) currentProduct.getPropertyValue("shortdescription"));	
				prod.setProductId((String) currentProduct.getPropertyValue("product_id"));
				products.add(prod);	
				//products.add((String) currentProduct.getPropertyValue("price"));	
			} else {
				if (isLoggingError())
					logError("couldn't find a product with id: " + productIds[i]);	
			}
		}
		} catch (RepositoryException e) {
			e.printStackTrace();
		}		
	}
	
	// constructor
	public ProductList () {
	}
}
