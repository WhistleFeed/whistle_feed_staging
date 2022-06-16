import 'package:flutter/material.dart';
import 'package:whistle_feed_staging/whistlefeed_provider.dart';
import 'MyAdShowListener.dart';
import 'webview.dart';
import 'whistlefeed.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  _myappstate createState()=> _myappstate();
}
class _myappstate extends State<MyApp>
{

  @override
  void initState() {
    super.initState();
  }

  MyAdShowListener adShowListener=MyAdShowListener();
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (context)=> Whistle_Provider(),
   child: MaterialApp (
     routes: {
       '/Whistlecta_webview': (context) => MyWebViewForWhistlefeed(""),
     },
     title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home:Whistle_feed('116378385233oOAaL_4',4,false,adShowListener),
   ),
   );
  }


}

