import 'package:my_stacked_notes/app/app.bottomsheets.dart';
import 'package:my_stacked_notes/app/app.dialogs.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/models/note_model.dart';
import 'package:my_stacked_notes/services/note_service.dart';
import 'package:my_stacked_notes/ui/common/app_strings.dart';
import 'package:my_stacked_notes/ui/views/login/login_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _noteService = locator<NoteService>();
  final _navigationServices = locator<NavigationService>();

  void addNote() {
    final note =
        NoteModel(title: "Raees ", description: "Raees khan is Great Person");

    _noteService.addNote(note);
    rebuildUi();
  }

  void deleteNote(int index) {
    _noteService.deleteNote(index);
    rebuildUi();
  }

  void updateNote(int index) {
    _noteService.updateNote(index,
        NoteModel(title: "Developer", description: "I am Flutter Developer"));
    rebuildUi();
  }

  void logout() {
    _navigationServices.clearStackAndShow(Routes.loginView);
  }

  List<NoteModel> get notes => _noteService.notes;

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
