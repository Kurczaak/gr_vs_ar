import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The details screen displayed on top of a tab's navigator stack.
class TabDetailsScreen extends StatelessWidget {
  const TabDetailsScreen({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details – Section $label')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Details for section $label',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
