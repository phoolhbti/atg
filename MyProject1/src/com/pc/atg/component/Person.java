package com.pc.atg.component;

public class Person {
	private String name;
	private int age;
	private Weather weather;
	private Weather[] cityWeathers;

	  public Person () {
		  System.out.println ("constructing Person");
	  }
	  public String getName () { return name; }
	  public void setName (String name) {
		  System.out.println ("setting name to " + name);
		  this.name = name;
		  }
	  public int getAge () { return age; }
	  public void setAge (int age) { 
		  System.out.println ("setting age to " + age);
		  this.age = age;
		  }
	  public Weather getWeather () { return weather; }
	  public void setWeather (Weather weather) {
	    System.out.println ("setting weather to " + weather.getCurrentWeather());
	    this.weather = weather;
	  }
	public Weather[] getCityWeathers() {
		return cityWeathers;
	}
	public void setCityWeathers(Weather[] cityWeathers) {
		this.cityWeathers = cityWeathers;
	}
}
