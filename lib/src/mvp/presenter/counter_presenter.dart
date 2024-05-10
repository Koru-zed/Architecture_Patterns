import 'package:architecture_patterns/src/mvp/model/counter_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider =
    StateProvider<CounterModel>(
        (ref) => CounterModel(0));

class CounterPresenter {
  final WidgetRef ref;
  final CounterModel model;

  CounterPresenter(this.ref, this.model);

  int get count => model.count;

  void increment() {
    model.increment();
    updateUI();
  }

  void decrement() {
    model.decrement();
    updateUI();
  }

  void reset() {
    model.reset();
    updateUI();
  }

  void updateUI() {
    ref.read(counterProvider.notifier).state = model;
  }
}
