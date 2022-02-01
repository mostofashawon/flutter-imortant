import 'dart:convert';

import 'package:getx_project/model/data.dart';
import 'package:http/http.dart' as http;


class ApiService {
  static var client = http.Client();


  static Future<List<Data>?> fetchDataFromNetwork() async {
    var listData = <Data>[];
    var response = await client.get(
        'https://jsonplaceholder.typicode.com/users',headers: {"Accept": "application/json"}
    );

    if (response.statusCode == 200) {
      var responseString = json.decode(response.body);
      //response.body
    //  print(responseString);
    //  print(welcomeFromJson(responseString));
    //   return welcomeFromJson(responseString);
     // return responseString;
     // Data data = Data.fromJson(responseString);
       for(var collectData in responseString){
            listData.add(Data.fromJson(collectData));
            print(Data.fromJson(collectData));
           // print(listData);
       }
       print(listData);
      return listData;
    }
  }
}
