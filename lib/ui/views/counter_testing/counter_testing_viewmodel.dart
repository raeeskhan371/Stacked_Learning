import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CounterTestingViewModel extends BaseViewModel {
  final counter = ValueNotifier<int>(0);

  void increment() {
    counter.value++;
  }
}
