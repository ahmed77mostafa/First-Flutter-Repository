import 'package:dio/dio.dart';
import 'package:teslaapi/models/api_model.dart';

class TeslaService{
  static Dio dio = Dio();

  static Future<TeslaModel> getTeslaService() async{
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/everything?q=tesla&from=2024-10-04&sortBy=publishedAt&apiKey=6560270b4cd043d09f9e200f82e64afe");
      if(response.statusCode == 200){
        print("AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
        return TeslaModel.fromJson(response.data);
      }
      else{
        throw Exception("Failed to load tesla data!");
      }
    }
    catch(e){
      throw Exception('Error $e');
    }
  }
}