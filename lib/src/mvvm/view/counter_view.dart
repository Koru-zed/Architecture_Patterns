import 'package:flutter/material.dart';
import 'package:architecture_patterns/src/mvvm/view_model/counter_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPageMVVM extends ConsumerWidget {
  const CounterPageMVVM({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterVM = ref.watch(counterProviderVM);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MVVM Counter with Riverpod',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${counterVM.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => ref.read(counterProviderVM.notifier).increment(),
            heroTag: 'Increment MVVM',
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => ref.read(counterProviderVM.notifier).decrement(),
            heroTag: 'Decrement MVVM',
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
