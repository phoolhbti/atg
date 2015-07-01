# atg
ATG Sample Component ,Droplet,FormHandler
Work with ATG Components
[ Note : Successful completion of the Exercise 1: 06‐Components in Dynamusic is required to complete the
practices in the rest of the course. It is essential that you have a working Dynamusic J2EE web application in
place and that you are comfortable working in Eclipse in order to complete the remaining exercises. If you
started but did not complete the exercises, please continue from where you left off and complete the lab before
proceeding.
Please take help from your instructor to complete Exercise 1. ]
Exercise 2: Modifying component configurations
Objective: After completing this exercise, you will be able to modify the configuration of existing
components.
Problem Statement
Set the default SMTP email “from” address to an application-specific value for Dynamusic.
Steps -
Modify the /atg/dynamo/service/SMTPEmail component
1. View the ATG Component Browser in Eclipse by selecting Window  Show view
Other… ATG ATG Component Browser
2. In the component browser, navigate to and double-click the /atg/dynamo/
service/SMTPEmail component. Change the configured value of the defaultFrom property
to customerservice@dynamusic.com and click Save.
3. In the Eclipse Package Explorer, open /Dynamusic/config/atg/dynamo/
service/SMTPEmail.properties and observe that your new property value has been
recorded. Note: You may need to refresh your project to see the change. To do so, right click on the
Dynamusic project folder and select Refresh.
4. SMTPEmail.properties
# /atg/dynamo/service/SMTPEmail
#Tue Jun 09 21:17:38 IST 2015
defaultFrom=customerservice@dynamusic.com
5. Redeploy the Dynamusic and restart server. (Type Ctrl-C in the command window to stop the
currently running server, and then restart JBoss as before using the up arrow to return to the
previous command.)
6. Go to the ATG Dynamo Admin UI
(http://localhost:8080/dyn/admin).
7. Select the Component Browser and browse to the SMTPEmail component.
8. Scroll down to the Properties table, and verify that the live property value of
SMTPEmail.defaultFrom is set correctly.
Exercise 3: Creating a component
Objective: After completing this exercise, you will be able to create components based on existing Java
classes.
Problem Statement: Create a component to retrieve a list of featured songs from the Songs
Repository (this repository is configured in the provided Dynamusic-Base module). A real-world
application would probably use a targeter and a slot component, and business users would use the ATG
Business Control Center (BCC) to set up the rules and triggering logic. This introductory practice uses a
simplified approach. When instantiated, the dynamusic.SongList class will retrieve a list of featured
song titles based on a hard-coded list (if no song IDs are configured, it will retrieve nine song titles by
default). When getSongs() is called, it will return a subset of this list (based on settings in the
howMany and random properties).
Create a new component based on a custom class
1. A custom class called dynamusic.SongList, which includes a songs String array property, has
been provided in the Dynamusic-Base module.
2. In the Component Browser in Eclipse, right-click on the dynamusic folder (not the Dynamusic
project) from the configuration hierarchy and select New Component .
3. Specify the appropriate values for the component (as shown below), select
Edit Component after wizard completion and click Finish.
Click Finish and get below screen
4. It will be create \config\dynamusic\FeaturedSongs.properties file –
(You will need to create the dynamusic folder if not existing in the eclipse)
# /dynamusic/FeaturedSongs
#Fri Jan 02 14:05:48 IST 2015
$class=dynamusic.SongList
$description=SongList
$scope=global
howMany=4
itemDescriptor=song
loggingDebug=true
loggingError=true
loggingInfo=true
loggingTrace=false
loggingWarning=true
random=false
repository=/dynamusic/SongsRepository
Start the component and view its live configuration values
5. Navigate to the home page of the ATG Dynamo Admin UI
(http://localhost:8080/dyn/admin). Click the Component Browser link and browse the
/dynamusic configuration folder. The FeaturedSongs component is not displayed because it
hasn’t been started (you’ll do that in the lesson titled Dynamic Pages by using it in a JSP). You can
start it right now and view its properties by appending the component name to the URL for the
/dynamusic folder in the Admin UI:
http://localhost:8080/dyn/admin/nucleus/dynamusic/FeaturedSongs
6. Click the songs property link to see the list of song titles.
7. Remember that the FeaturedSongs Nucleus component has global scope. This means that
after the component is started, it stays live as long as the server keeps running (there is a way to shut
down a live instance in the ACC, but that is only intended for developer testing). Live property values on
global components can be changed by your application or by developer tools.
8. Click the link for the component name (FeaturedSongs) at the top of the page. Click the
howMany property. Enter the number 3 into the New Value box and click the Change Value button.
Now click FeaturedSongs again (at the top of the page), and then click the songs property to once
again see the list of song titles. Scroll down and you should now see only three song titles listed. By
default, the component loads nine songs as featured songs (stored internally), but the number returned
in the songs property is controlled by the howMany property.
In the next practice, you will be writing logic into the home page to make a call to display the
FeaturedSongs.songs component property. After that page is working successfully, you will
reconfigure the howMany and random properties and test the results.
