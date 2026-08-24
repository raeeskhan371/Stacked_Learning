import 'package:my_stacked_notes/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_stacked_notes/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_stacked_notes/ui/views/home/home_view.dart';
import 'package:my_stacked_notes/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_stacked_notes/services/note_service.dart';
import 'package:my_stacked_notes/ui/views/login/login_view.dart';
import 'package:my_stacked_notes/ui/views/singup/singup_view.dart';

import 'package:my_stacked_notes/services/auth_service.dart';
import 'package:my_stacked_notes/services/firebase_service.dart';
import 'package:my_stacked_notes/ui/views/addnote/addnote_view.dart';
import 'package:my_stacked_notes/ui/views/counter_testing/counter_testing_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SingupView),
    MaterialRoute(page: AddnoteView),
    MaterialRoute(page: CounterTestingView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: NoteService),

    LazySingleton(classType: AuthService),
    LazySingleton(classType: FirebaseService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
