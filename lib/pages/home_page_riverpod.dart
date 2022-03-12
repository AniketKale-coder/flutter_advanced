import 'package:flutter/material.dart';
import 'package:flutter_advanced/providers/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageRiverpod extends ConsumerWidget {
  const HomePageRiverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider).count;

    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: Center(child: Text(count.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider).increment();
        },
      ),
    );
  }
}
