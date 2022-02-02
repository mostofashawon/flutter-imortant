import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClickStateChange extends StateNotifier<int> {
  ClickStateChange(int initial) : super(initial);

  void increment() {
    state++;
  }
}
