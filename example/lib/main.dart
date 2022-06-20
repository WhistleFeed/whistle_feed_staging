import 'package:flutter/material.dart';
import 'package:whistle_feed_staging/MyAdShowListener.dart';
import 'package:whistle_feed_staging/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  _myappstate createState()=> _myappstate();

}
class _myappstate extends State<MyApp>{

  MyAdShowListener adShowListener = MyAdShowListener();

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Container(
            height: 440,
            child: ShowWhistleAdds('21701655717485nYBzur_3052',4,false,adShowListener),
          )
        ],
      ),
    ),
   );
  }
}

