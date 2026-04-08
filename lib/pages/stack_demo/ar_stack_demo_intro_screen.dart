import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gr_vs_ar/router/auto_route_router.dart';

@RoutePage()
class ArStackDemoIntroScreen extends StatelessWidget {
  const ArStackDemoIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('push vs pushAndPopUntil – AR'),
        leading: BackButton(onPressed: () => context.router.pop()),
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
                'back-stack.\n\n'
                'auto_route solves this cleanly with pushAndPopUntil().',
              ),
              const SizedBox(height: 32),
              Text('Strategies', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              const Text(
                '• push()  – destination added on top, all steps remain\n'
                '• pushAndPopUntil()  – pops until a predicate matches,\n'
                '  then pushes. Clean stack, no hardcoded pop count.',
              ),
              const SizedBox(height: 48),
              ElevatedButton.icon(
                onPressed: () => context.router.push(const ArStackDemoRoute()),
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
