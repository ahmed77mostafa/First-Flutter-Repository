import 'package:flutter/material.dart';
import 'package:teslaapi/models/api_model.dart';
import 'package:teslaapi/services/api_service.dart';

class TeslaProvider extends ChangeNotifier{
  TeslaModel? teslaModel;

  getTeslaData() async{
    teslaModel = await TeslaService.getTeslaService();
    notifyListeners();
  }
}