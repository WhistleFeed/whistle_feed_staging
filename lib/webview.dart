import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whistle_feed_staging/whistlefeed_provider.dart';


class MyWebViewForWhistlefeed extends StatefulWidget {
  String rooturlforWebview="";


  @override
  _MyWebViewForBuddyClubState createState() => _MyWebViewForBuddyClubState();
  static String routeName = "/myWebViewforbuddyloan";
}

class _MyWebViewForBuddyClubState extends State<MyWebViewForWhistlefeed> {
  String rooturlforWebview="";


  bool isPageLoading = true;
  bool isToShowBackButton=false;

  int progressBar = 0;


  bool delayToAvoidGlitch = true;
  bool pacmanResult = false;

  @override
  void initState() {

    Timer(Duration(seconds: 2), () {
      setState(() {
        print(rooturlforWebview+"gbvjdfbvjds");
        delayToAvoidGlitch = false;
        rooturlforWebview   = ModalRoute
            .of(context)
            .settings
            .arguments;
      }

      );

    }
    );
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
  }

  InAppWebViewController webView;



  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    print("my webview url is $rooturlforWebview $isToShowBackButton");
    rooturlforWebview=Provider.of<Whistle_Provider>(context,listen:true).webviewurl;

    return rooturlforWebview==""?Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    ):Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: AppBar(
            leading: !isToShowBackButton?Container():IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Container(
              padding: EdgeInsets.only(right: 40),
              child: Center(
                  child: Text('Whistle Feed')
              ),
            )
        ),
      ),

      body: delayToAvoidGlitch ? Container() : InAppWebView(
        initialUrl: rooturlforWebview,
        initialHeaders: {},
        onLoadError: (controller,url,code,msg)async{
          if (url.contains("market://details")) {
            print("url contains market field "+url);

            if (await canLaunch(url))
              await launch(url);
          }
          if(url.contains(url)) {
            return;
          }



          if(Platform.isIOS)
          {
            print("root url is for launch in browser $rooturlforWebview");
          }

          print("launch url error");

        },
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
              debuggingEnabled: false, useOnDownloadStart: true),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          webView = controller;
        },
        onLoadStart: (InAppWebViewController controller, String url) async {
          print("on load start $url");

          if (url.contains("market://details")) {
            print("url contains market field ");
            if (await canLaunch(url))
              await launch(url);
          }


          isPageLoading = true;
        },
        onLoadStop: (InAppWebViewController controller, String url) async {
          if (url.contains("market://details")) {
            print("url contains market field ");
            if (await canLaunch(url))
              await launch(url);
          }
          print("on load stop $url");
          isPageLoading = false;
        },
        onDownloadStart: (controller, url) async {

        },
      ),
    );

  }


}