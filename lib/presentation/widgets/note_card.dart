import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String description;

  const NoteCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
