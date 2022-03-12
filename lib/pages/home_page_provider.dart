import 'package:flutter/material.dart';
import 'package:flutter_advanced/models/counter.dart';
import 'package:provider/provider.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<Counter>(context).count;

    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: Center(child: Text(count.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
      ),
    );
  }
}
