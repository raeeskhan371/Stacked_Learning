import 'package:my_stacked_notes/models/note_model.dart';

class NoteService {
  final List<NoteModel> _notes = [];
  List<NoteModel> get notes => _notes;

  void addNote(NoteModel note) {
    _notes.add(note);
  }

  void updateNote(int index, NoteModel updateNote) {
    _notes[index] = updateNote;
  }

  void deleteNote(int index) {
    _notes.removeAt(index);
  }
}
