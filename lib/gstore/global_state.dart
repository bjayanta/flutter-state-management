import 'package:flutter/material.dart';

class GState with ChangeNotifier{
  List<String> _data = ["data 1", "data 2", "data 3", "data 4", "data 5"];

  List<String> get data {
    return [..._data];
  }

  void addData(String data) {
    _data.insert(0, data);

    // notify the system
    notifyListeners();
  }
}