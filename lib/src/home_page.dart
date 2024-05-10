import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:architecture_patterns/src/mvc/controller/counter_controller.dart';
import 'package:architecture_patterns/src/mvc/model/counter_model.dart';
import 'package:architecture_patterns/src/mvp/presenter/counter_presenter.dart';
import 'package:architecture_patterns/src/mvvm/view_model/counter_vm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> pages = ["MVC", "MVP", "MVVM"];

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'MVC-MVP-MVVM Counter with Riverpod',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple[100],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                3,
                (index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple[50],
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed("/${pages[index]}"),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            child: Text(
                              "${pages[index]} Architecture",
                            ),
                          )),
                    )),
          ),
        ),
        floatingActionButton: Consumer(builder: (context, ref, widget) {
          return FloatingActionButton(
            onPressed: () => _reset(ref),
            child: const Icon(Icons.restart_alt_rounded),
          );
        }));
  }

  void _reset(WidgetRef ref) {
    // Reset Coounter MVC
    CounterController(ref.read(counterModelProvider)).reset();
    // Reset Coounter MVP
    ref.read(counterProvider).reset();
    // Reset Coounter MVVM
    ref.read(counterProviderVM.notifier).reset();
  }
}
