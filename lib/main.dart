import 'package:flutter/material.dart';
import 'package:whistle_feed_staging/whistlefeed_provider.dart';
import 'MyAdShowListener.dart';
import 'webview.dart';
import 'whistlefeed.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class ShowWhistleAdds extends StatefulWidget {
  String publishetoken="";
  int pencilzize=1;
  bool testmoade=false;
  MyAdShowListener adShowListener=MyAdShowListener();
  ShowWhistleAdds(this.publishetoken,this.pencilzize,this.testmoade,this.adShowListener);

  _myappstate createState()=> _myappstate(this.publishetoken,this.pencilzize,this.testmoade,this.adShowListener);
}
class _myappstate extends State<ShowWhistleAdds>
{
  String publishetoken='';
  int pencilsize;
  MyAdShowListener adShowListener=MyAdShowListener();
  bool testmode=false;


  _myappstate(this.publishetoken,this.pencilsize,this.testmode,this.adShowListener);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (context)=> Whistle_Provider(),
   child: MaterialApp (
     routes: {
       '/Whistlecta_webview': (context) => MyWebViewForWhistlefeed(),
     },
     title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home:Whistle_feed(publishetoken,pencilsize,false,adShowListener),
   ),
   );
  }


}

