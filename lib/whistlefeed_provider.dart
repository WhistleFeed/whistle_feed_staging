import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:whistle_feed_staging/utils.dart';
import 'package:whistle_feed_staging/whistle_feed_model.dart';
class Whistle_Provider extends ChangeNotifier {

  List<Campaindata> _campagainlist = [];
  WhistleFeedModel whistleFeedModel;
  List<Data> data;
  List<List<Campaindata>>campaignList = [];
  List<Campaindata> firstpencillist;
  List<Campaindata> seconfpencil;
  List<Campaindata> thirdpencil;
  List<Campaindata> fourthpencil;

  Future<WhistleFeedModel> get_whistle_Feed_Adds(String publisher_token, int size,String platform) async {
    var headers = {
      'Content-Type': 'text/plain',
      'Cookie': 'ci_session=ept5brqr1v9smenbgkptqu19vkggme9m'
    };
    var request = http.Request('POST',
        Uri.parse(
            'https://feed-api.whistle.mobi/Display_ads_api/displayAdsApi'));
    request.body =
    '''{"os_name":"${platform}","publisher_token":"$publisher_token","api_called":1,"size":$size,"parentUrl":"https://www.buddyloan.com/"}''';
    request.headers.addAll(headers);

    http.StreamedResponse streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);

    if (streamedResponse.statusCode == 200) {
      final item = json.decode(response.body);
      print(item);


      whistleFeedModel = WhistleFeedModel.fromJson(item);

      print(whistleFeedModel.message);
      if(whistleFeedModel.message=="verified")
      {

        if(adShowListener==null)
          {

            print('Your adding Listener as a Null');


          }
        else if(publisher_token=='')
          {
            print('Please Add your Publisher Token');
          }
        else{
          adShowListener.onAdShowStart();
        }

      }
      else
      {
        adShowListener.onAdShowFailure(whistleFeedModel.message);

      }
      print(whistleFeedModel.data.campgainlist.length);

      _campagainlist = whistleFeedModel.data.campgainlist;
      print(_campagainlist.length);

      firstpencillist= List();
      seconfpencil= List();
      thirdpencil=List();
      fourthpencil=List();

      int firstHalf=(_campagainlist.length/size).toInt();
      int secondHalf=_campagainlist.length-firstHalf;
      int thirdHalf= (_campagainlist.length/size).toInt();
      int divided = firstHalf-secondHalf;

      if(size==1)
      {

        firstpencillist.addAll(_campagainlist.sublist(0,_campagainlist.length));

      }
      else if(size==2)
      {
        firstpencillist.addAll(_campagainlist.sublist(0,firstHalf));
        seconfpencil.addAll(_campagainlist.sublist(firstHalf,_campagainlist.length));
      }
      else if(size==3)
      {
        secondHalf=_campagainlist.length-firstHalf;
        firstpencillist.addAll(_campagainlist.sublist(0,firstHalf));
        seconfpencil.addAll(_campagainlist.sublist(firstHalf,(secondHalf)));
        thirdpencil.addAll(_campagainlist.sublist(secondHalf,_campagainlist.length));
        int chunks=(_campagainlist.length/size).toInt();
        int howManyExtraHave=_campagainlist.length-(3*chunks);
        print("extrra ${howManyExtraHave}");


      }
      else if(size==4) {
        secondHalf=firstHalf+firstHalf;
        thirdHalf=secondHalf+firstHalf;
        int fourthHalf=thirdHalf+firstHalf;
        int chunks=(_campagainlist.length/size).toInt();
        int howManyExtra=_campagainlist.length-(4*chunks);
        print("print remaining ${howManyExtra}");

        firstpencillist.addAll(_campagainlist.sublist(0,firstHalf));
        seconfpencil.addAll(_campagainlist.sublist(firstHalf,secondHalf));
        thirdpencil.addAll(_campagainlist.sublist(secondHalf,thirdHalf));
        fourthpencil.addAll(_campagainlist.sublist(thirdHalf,fourthHalf));

        if(howManyExtra>0)
        {
          if(howManyExtra==1)
          {
            fourthpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+1));
          }
          else  if(howManyExtra==2)
          {
            thirdpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+1));
            fourthpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+2));
          }
          else  if(howManyExtra==3)
          {
            seconfpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+1));
            thirdpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+2));
            fourthpencil.addAll(_campagainlist.sublist(fourthHalf,fourthHalf+3));
          }
        }









      }


    }
    else {
      print(streamedResponse.reasonPhrase);
    }

    notifyListeners();
  }

}
