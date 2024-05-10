import 'package:architecture_patterns/src/mvc/model/counter_model.dart';

class CounterController {
  final CounterModel counterModel;
  CounterController(this.counterModel);

  int get count => counterModel.count;

  void increment() => counterModel.increment();
  void decrement() => counterModel.decrement();
  void reset() => counterModel.reset();
}
