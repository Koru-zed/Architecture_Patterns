import 'package:architecture_patterns/src/mvp/model/counter_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterPresenterProvider =
    StateNotifierProvider<CounterPresenter, CounterModel>(
        (ref) => CounterPresenter(CounterModel(0)));

class CounterPresenter extends StateNotifier<CounterModel> {
  CounterPresenter(super.state);

  int get count => state.count;

  void increment() {
    state.increment();
    state = CounterModel(state.count);
  }

  void decrement() {
    state.decrement();
    state = CounterModel(state.count);
  }

  void reset() {
    state = CounterModel(0);
  }
}
