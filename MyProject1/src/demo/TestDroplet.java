package demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;

import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;

public class TestDroplet  extends DynamoServlet {
String myname;
public String getMyname() {
	return myname;
}
public void setMyname(String myname) {
	this.myname = myname;
}
public TestDroplet () {
   System.out.println ("InTestDroplet Constructor");
}
public void service (DynamoHttpServletRequest request, DynamoHttpServletResponse response) throws ServletException, IOException {
ServletOutputStream out = response.getOutputStream ();
   out.println ("Hello World! My name is "+myname);
}

}