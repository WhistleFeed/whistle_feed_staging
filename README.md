# whistle_feed_staging

Whistle_feed Ads plugin for Flutter Applications. This plugin is able to display Whistle_feed Ads.

## Getting Started

 #Note
some third-party plugins are used  
* we used providers(if while using our library if you alredy initlized provider check it,if you are getting error on provider you can remove your provider or else fine)
  same for http,package_info url_launcher

This Dart package will utilize the plugin, **whistle_feed_staging**, so to quickly and easily implement ads into a Flutter app.

 # Sign Up and Get Your Publisher token here
 [!website link](https://publisher.whistle.mobi/)

 Note:- Without Any publisher token you will not get any Whistle Adds.


 #initilize the plugin of latest version
 And so, for this version, add this to your package's pubspec.yaml file instead:
 yaml dependencies: whistle_feed_staging: latest version

#Adds Showing Error
1) You are not given the publisher token,
2) passing addlistener as null,\
3) Minimum pencil size is 1
4) Maximum pencil size is 4

#pixelerrors
Note: The adds initilization in UI starts with Container widget with height.


##for example
1 pencil = 1 cube , Maximum cube will be 4
Note :-  1) The below containeer heights is miniumum.
required fields from developer : publisher token and pencil size (minimum size is 1 and maximum size is 4)


#case 1 : if you want 1 cube Ui initialization will be
Container(
  height: 110,
   child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),
)
![1 cube adds]()


#case 2: if you want 2 cubes Ui initialization will be
Container(
  height: 220,
   child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),
)
![2 cube adds]()

#case 3: if you want 3 cubes Ui initialization will be
Container(
height: 330,
child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),)
![3 cube adds]()


#case 4: if you want 4 cubes Ui initialization will be
Container(
height: 440,
child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),
)
![4 cube adds]()

#Github repository for reference
![github](https://github.com/prakashvalueleaf/whistle_feed_staging)



