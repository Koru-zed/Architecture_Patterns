import 'package:architecture_patterns/src/mvp/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider((ref) => CounterProvider(0));

class CounterProvider extends ChangeNotifier {
  int count;
  CounterProvider(this.count);


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
