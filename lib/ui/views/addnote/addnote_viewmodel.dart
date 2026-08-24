import 'package:flutter/foundation.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/models/note_model.dart';
import 'package:my_stacked_notes/services/note_service.dart';
import 'package:my_stacked_notes/ui/views/addnote/addnote_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddnoteViewModel extends FormViewModel with $AddnoteView {
  final _noteService = locator<NoteService>();
  final _navigationServices = locator<NavigationService>();

  Future<void> addNote() async {
    final noteItem = NoteModel(
        title: titleController.text, description: descriptionController.text);
    await _noteService.addNote(noteItem);
    goToHomeScreen();
  }

  void goToHomeScreen() {
    _navigationServices.navigateToHomeView();
  }
}
