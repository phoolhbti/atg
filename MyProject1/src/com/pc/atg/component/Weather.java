package com.pc.atg.component;

public class Weather {
	  private String currentWeather;

	  public Weather () {
	    System.out.println ("constructing Weather");
	  }
	  public String getCurrentWeather () {
	    return currentWeather;
	  }
	  public void setCurrentWeather (String currentWeather) {
	    System.out.println ("setting currentWeather to " + currentWeather);
	    this.currentWeather = currentWeather;
	  }
	}