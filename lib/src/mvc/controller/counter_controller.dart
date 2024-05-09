import 'package:flutter/material.dart';
import 'package:architecture_patterns/src/mvc/model/counter_model.dart';

class CounterController {
  final CounterModel counterModel;
  CounterController(this.counterModel);

  void increment() => counterModel.increment();
  void decrement() => counterModel.decrement();
  void reset() => counterModel.reset();
}
