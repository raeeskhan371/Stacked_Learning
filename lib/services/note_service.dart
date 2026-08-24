import 'package:flutter/foundation.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/models/note_model.dart';
import 'package:my_stacked_notes/services/firebase_service.dart';
import 'package:stacked_services/stacked_services.dart';

class NoteService {
  final _firebaseFirebaseServices = locator<FirebaseService>();
  final _navigationServices = locator<NavigationService>();

  Future<void> addNote(NoteModel note) async {
    debugPrint("[FirebaseServices] Firestore: AddNote processing Start");
    final uid = _firebaseFirebaseServices.Authentication.currentUser?.uid;

    await _firebaseFirebaseServices.FirebaseStorage.collection("Users")
        .doc(uid)
        .collection("Notes")
        .doc()
        .set(note.toMap());
    debugPrint("[FirebaseServices] Firestore: AddNote processing End");
  }

  Stream<List<NoteModel>> fetchingNotes() {
    debugPrint("i  Firestore Stream CREATED");
    debugPrint("[FirebaseServices] FireStore: fetchingNotes processing Start");
    final uid = _firebaseFirebaseServices.Authentication.currentUser?.uid;

    final noteData =
        _firebaseFirebaseServices.FirebaseStorage.collection("Users")
            .doc(uid)
            .collection("Notes")
            .snapshots();

    return noteData.map((snapshot) {
      final notes = snapshot.docs.map((doc) {
        return NoteModel.fromMap(doc.data(), doc.id);
      }).toList();

      debugPrint("[FirebaseServices] FireStore: fetchingNotes processing End");

      return notes;
    });
  }

  Future<void> deleteNote(String id) async {
    debugPrint("[FirebaseServices] FireStore: deleteNote processing Start");

    final uid = _firebaseFirebaseServices.Authentication.currentUser?.uid;
    await _firebaseFirebaseServices.FirebaseStorage.collection("Users")
        .doc(uid)
        .collection("Notes")
        .doc(id)
        .delete();
    debugPrint("[FirebaseServices] FireStore: deleteNote processing End");
  }
}
