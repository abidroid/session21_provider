

import 'package:flutter/material.dart';


// state management
class CounterProvider extends ChangeNotifier{

  int count = 10;

  void increment(){
    count++;
    notifyListeners();
  }


  void decrement(){
    count--;
    notifyListeners();
  }

}