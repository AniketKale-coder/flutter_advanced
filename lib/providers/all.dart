import 'package:flutter_advanced/models/counter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = ChangeNotifierProvider((ref) {
  return Counter();
});
