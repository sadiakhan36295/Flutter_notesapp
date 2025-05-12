import 'package:flutter/material.dart';
import 'package:notes_app/presentation/widgets/note_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Notes')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Replace with provider data count
        itemBuilder: (context, index) => const NoteCard(
          title: 'Sample Note',
          description: 'This is a description of the note.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-note');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
