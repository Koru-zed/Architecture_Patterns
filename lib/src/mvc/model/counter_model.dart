import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterModelProvider = ChangeNotifierProvider((ref) => CounterModel(0));

class CounterModel extends ChangeNotifier {
  int count;
  CounterModel(this.count);


  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void reset() {
    count = 0;
    notifyListeners();
  }
}
