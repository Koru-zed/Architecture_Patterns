import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:architecture_patterns/src/mvc/controller/counter_controller.dart';
import 'package:architecture_patterns/src/mvc/model/counter_model.dart';

class CounterPageMVC extends ConsumerWidget {
  const CounterPageMVC({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterController = CounterController(ref.watch(counterModelProvider));

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'MVC Counter with Riverpod',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple[100]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${counterController.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'Increment MVC',
            onPressed: () => counterController.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'Decrement MVC',
            onPressed: () => counterController.decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
