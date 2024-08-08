import 'package:flutter/foundation.dart';

class AppProvider with ChangeNotifier{
  List<String> timelist = [];
  void InCrement(){
    final newtime = DateTime.now().toIso8601String();
    timelist.add(newtime);
    notifyListeners();
  }
}