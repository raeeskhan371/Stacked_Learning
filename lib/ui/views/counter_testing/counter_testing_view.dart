import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_stacked_notes/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'counter_testing_viewmodel.dart';

class CounterTestingView extends StackedView<CounterTestingViewModel> {
  const CounterTestingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterTestingViewModel viewModel,
    Widget? child,
  ) {
    debugPrint("t CounterScreen Rebuild");
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }

  @override
  CounterTestingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterTestingViewModel();
}
