import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_stacked_notes/app/app.bottomsheets.dart';
import 'package:my_stacked_notes/app/app.dialogs.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/firebase_options.dart';
import 'package:my_stacked_notes/ui/views/counter_testing/counter_testing_view.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterTestingView(),
      initialRoute: Routes.counterTestingView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
