import 'package:flutter/material.dart';
import 'package:flutter_advanced/pages/home_page_hooks.dart';
import 'package:flutter_advanced/pages/home_page_riverpod.dart';
// import 'package:flutter_advanced/models/counter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_advanced/pages/home_page_provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageHooks(),
    );
  }
}
