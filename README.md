# whistle_feed_staging

A Library to publish multiple lenders adds in your Mobile Apps.
## Getting Started

 #Note
some third-party plugins are used  
* we used providers(if while using our library if you alredy initlized provider check it,if you are getting error on provider you can remove your provider or else fine)
  same for http,package_info url_launcher

This Dart package will utilize the plugin, **whistle_feed_staging**, so to quickly and easily implement ads into a Flutter app.

 # Sign Up and Get Your Publisher token here
 Note:- Without Any publisher tokn you will not get any Whistle Adds.
 https://publisher.whistle.mobi/

 #initilize the plugin of latest version
 And so, for this version, add this to your package's pubspec.yaml file instead:
 yaml dependencies: whistle_feed_staging: latest version

#Adds Showing Error
1) You are not given the publisher token,
2) passing addlistener as null,

#pixelerrors
Note: The adds initilization in UI starts with Container widget with height.


##for example
1 pencil = 1 cube , Maximum cube will be 4
Note :- The below containeer heights is miniumum.

case 1: if developer want 1 cube Ui initialization will be
Container(
  height: 110,
   child: ShowWhistleAdds('116378385233oOAaL_4',1,false,adShowListener),
)
![1 cube adds](https://user-images.githubusercontent.com/32497443/60682408-e652af80-9e58-11e9-9c7a-259b0b0c6577.jpg)


case 2: if developer want 2 cubes Ui initialization will be
Container(
  height: 220,
   child: ShowWhistleAdds('116378385233oOAaL_4',2,false,adShowListener),
)
case 3: if developer want 3 cubes Ui initialization will be
Container(
height: 330,
child: ShowWhistleAdds('116378385233oOAaL_4',3,false,adShowListener),
)

case 4: if developer want 3 cubes Ui initialization will be
Container(
height: 440,
child: ShowWhistleAdds('116378385233oOAaL_4',4,false,adShowListener),
)














