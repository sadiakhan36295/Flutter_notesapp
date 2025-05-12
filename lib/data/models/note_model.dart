class NoteModel {
  final String id;
  final String title;
  final String description;

  NoteModel({required this.id, required this.title, required this.description});

  factory NoteModel.fromMap(Map<String, dynamic> data, String docId) {
    return NoteModel(
      id: docId,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'description': description};
  }
}
