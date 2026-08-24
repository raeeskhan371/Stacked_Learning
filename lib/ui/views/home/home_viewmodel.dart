import 'package:flutter/material.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/models/note_model.dart';
import 'package:my_stacked_notes/services/note_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _noteService = locator<NoteService>();
  final _navigationServices = locator<NavigationService>();

  void goToAddView() {
    _navigationServices.navigateToAddnoteView();
  }

  Stream<List<NoteModel>> fetchingNotes() {
    debugPrint("i  fetchingNotes() CALLED");
    return _noteService.fetchingNotes();
  }

  Future<void> deleteNote(String id) async {
    await _noteService.deleteNote(id);
  }
}
