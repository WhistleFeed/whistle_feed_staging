# whistle_feed_staging

Whistle_feed Ads plugin for Flutter Applications. This plugin is able to display Whistle_feed Ads.

## Getting Started

 # Note

This plugin depends on other plugins like Provider , http , package_info and url_launcher .  
*  Plugin uses provider package (while using this library if you already initialized provider then check it,if you are getting error on provider you can remove your provider or else fine)
  same for http,package_info url_launcher

This Dart package will utilize the plugin, **whistle_feed_staging**, so to quickly and easily implement ads into a Flutter app.

 # Sign Up and Get Your Publisher token here
 [!website link](https://publisher.whistle.mobi/)

 Note:- Publisher token is required to serve the ads.


 # initialize the plugin of latest version
 And so, for this version, add this to your package's pubspec.yaml file instead:
 yaml dependencies: whistle_feed_staging: latest version

# Troubleshooting steps if ads are not showing.
1) Check if correct publisher token provided,
2) Passing addslistener as null or object of the class,
3) Minimum pencil size is 1
4) Maximum pencil size is 4

# pixelerrors
Note: If pixel error is encountered kindly check sufficient height is provided which is proportional to pencil sizes.Also one can copy code from the website based on how many pencil ads one wants to show


## for example
1 pencil = 1 cube , Maximum cube will be 4
Note :-  1) The below containeer heights is miniumum.
required fields from developer : publisher token and pencil size (minimum size is 1 and maximum size is 4)


## case 1 : if you want 1 cube Ui initialization will be

# Container(height: 110, child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),)


![1 cube adds](https://github.com/prakashvalueleaf/whistle_feed_staging/blob/master/pencil1.png)


## case 2: if you want 2 cubes Ui initialization will be

# Container(height: 220,child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),


![2 cube adds](https://github.com/prakashvalueleaf/whistle_feed_staging/blob/master/pencil2.png)

## case 3: if you want 3 cubes Ui initialization will be
# Container(height: 330, child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),)


![3 cube adds](https://github.com/prakashvalueleaf/whistle_feed_staging/blob/master/pencil3.png)


## case 4: if you want 4 cubes Ui initialization will be
# Container(height: 440, child: ShowWhistleAdds('---publisher_token---',---pencil-size---,false,adShowListener),)


![4 cube adds](https://github.com/prakashvalueleaf/whistle_feed_staging/blob/master/pencil4.png)

# Github repository for reference

[github_repository](https://github.com/prakashvalueleaf/whistle_feed_staging)



