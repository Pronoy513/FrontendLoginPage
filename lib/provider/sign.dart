import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:abc/models/note.dart';

class NotesProvider with ChangeNotifier {
  List<Note> notes = [];

  void addNote(Note note) {
    notes.add(note);
    notifyListeners();
  }
}
