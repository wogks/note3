import 'package:note_work/data/source/note_db.dart';
import 'package:note_work/domain/model/note.dart';
import 'package:note_work/domain/repository/note_repository.dart';

class NoteRepositoryImple implements NoteRepository {
  final NoteDb db;

  NoteRepositoryImple(this.db);

  @override
  Future<void> deleteNote(Note note) async {
    await db.deleteNote(note);
  }

  @override
  Future<List<Note>> getNotes() async {
    return db.getNotes();
  }

  @override
  Future<Note?> getNotesById(int id) async {
    return db.getNotesById(id);
  }

  @override
  Future<void> insertNote(Note note) async {
    await db.insertNote(note);
  }

  @override
  Future updateNote(Note note)async {
    await db.updateNote(note);
  }
}
