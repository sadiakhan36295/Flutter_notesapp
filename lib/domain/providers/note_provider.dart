import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/models/note_model.dart';

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final noteRepositoryProvider = Provider<NoteRepository>((ref) {
  final firestore = ref.watch(firestoreProvider);
  return NoteRepository(firestore);
});

final notesStreamProvider = StreamProvider<List<NoteModel>>((ref) {
  final repo = ref.watch(noteRepositoryProvider);
  return repo.getNotesStream();
});

class NoteRepository {
  final FirebaseFirestore _firestore;
  NoteRepository(this._firestore);

  Stream<List<NoteModel>> getNotesStream() {
    return _firestore.collection('notes').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => NoteModel.fromMap(doc.data(), doc.id)).toList());
  }

  Future<void> addNote(String title, String description) async {
    await _firestore.collection('notes').add({'title': title, 'description': description});
  }

  Future<void> deleteNote(String id) async {
    await _firestore.collection('notes').doc(id).delete();
  }
}
