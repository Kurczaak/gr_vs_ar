import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StackDemoIntroScreen extends StatelessWidget {
  const StackDemoIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('go() vs push() – The Problem'),
        leading: BackButton(onPressed: context.pop),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'The Problem',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              const Text(
                'We have a linear flow:\n'
                'Home → Step 1 → Step 2 → Step 3\n\n'
                'From Step 3 we want to navigate to a Destination screen '
                'and end up with only "Stack Demo → Destination" in the '
                'back-stack — so the user doesn\'t have to press back '
                'through every step to get out.\n\n'
                'GoRouter gives us three options, each with its own '
                'trade-off. Tap the button below to compare them.',
              ),
              const SizedBox(height: 32),
              Text(
                'Why is this hard?',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              const Text(
                'The core issue is that GoRouter has no single atomic API '
                'to "pop N screens and push a new one". The three available '
                'strategies are:\n\n'
                '• go()  – replaces the whole stack from the URL hierarchy\n'
                '• push()  – adds on top, old screens stay alive\n'
                '• manual pop() loop + push()  – fragile, hardcoded count\n\n'
                'auto_route solves this cleanly with replaceAll([...]).',
              ),
              const SizedBox(height: 48),
              ElevatedButton.icon(
                onPressed: () => context.pushNamed('stack-demo'),
                icon: const Icon(Icons.play_arrow),
                label: const Text('See the strategies'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
