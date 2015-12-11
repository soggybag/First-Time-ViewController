# First-Time-ViewController

The example presented here shows a very basic arrangement that could be used to add an onboarding view to an app. 
The first view is only viewed the first time the app is loaded. A key value is set with NSUserDefaults to 
mark when the app has been viewed for the first time. The app checks this value if the value is true, it loads the 
app view rather than the firts view. 

First view contains a button that transitions to the app view. 

The app is structured as three view controllers. ViewController is an empty view that displays either FirstViewController, 
or AppViewController as a child view. 
