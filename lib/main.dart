import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:architecture_patterns/src/home_page.dart';
import 'package:architecture_patterns/src/mvc/view/counter_view.dart';
import 'package:architecture_patterns/src/mvp/view/counter_view.dart';
import 'package:architecture_patterns/src/mvvm/view/counter_view.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        "/MVC": (context) => const CounterPageMVC(),
        "/MVP": (context) => const CounterPageMVP(),
        "/MVVM": (context) => const CounterPageMVVM(),
      },
    );
  }
}
