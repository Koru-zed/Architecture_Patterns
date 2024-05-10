import 'package:architecture_patterns/src/mvvm/model/counter_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProviderVM = StateNotifierProvider<CounterVM, CounterModel>(
    (ref) => CounterVM(CounterModel()));

class CounterVM extends StateNotifier<CounterModel> {
  CounterVM(super.state);

  int get count => state.count;

  void increment() {
    state = CounterModel(count: state.count + 1);
  }

  void decrement() {
    state = CounterModel(count: state.count - 1);
  }

  void reset() {
    state = CounterModel();
  }
}
