import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constants.dart';
import 'package:news/api/end_points.dart';
import 'package:news/models/source_response.dart';
class ApiManager {
  static Future<SourceResponse> getSources() async{
    try{
      Uri url=Uri.https(
        ApiConstants.baseUrl,
        EndPoints.sourceApi,
        {
          'apiKey':ApiConstants.api_key
        }
      );
    var response = await  http.get(url);
   var stringBody= response.body;
   var json=jsonDecode(stringBody);
   return SourceResponse.fromJson(json);
    }catch(e){
      rethrow;
    }

  }
}