import 'package:flutter/material.dart';
import 'package:flutter_advanced/providers/all.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageHooks extends HookConsumerWidget {
  const HomePageHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = useState(0);
    // final text = useAnimationController();

    final counter = ref.watch(counterProvider);

    useEffect(() {
      //InitState

      return () {
        //Dispose
      };
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: Center(child: Text(counter.count.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
      ),
    );
  }
}
