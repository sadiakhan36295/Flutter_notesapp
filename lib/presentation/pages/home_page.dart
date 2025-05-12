import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/providers/note_provider.dart';
import '../widgets/note_card.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesAsync = ref.watch(notesStreamProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: notesAsync.when(
        data: (notes) => notes.isEmpty
            ? const Center(child: Text('No notes yet.',
            style: TextStyle(color: Colors.blue, fontSize: 18),
            ))
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: notes.length,
                itemBuilder: (context, index) => NoteCard(
                  title: notes[index].title,
                  description: notes[index].description,
                ),
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/add-note'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
