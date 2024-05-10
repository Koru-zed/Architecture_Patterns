import 'package:flutter/material.dart';
import 'package:architecture_patterns/src/mvp/presenter/counter_presenter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPageMVP extends ConsumerWidget {
  const CounterPageMVP({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final presenter = CounterPresenter(ref, counter);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MVP Counter with Riverpod',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${presenter.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>
                presenter.increment(),
            heroTag: 'Increment MVP',
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () =>
                presenter.decrement(),
            heroTag: 'Decrement MVP',
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
