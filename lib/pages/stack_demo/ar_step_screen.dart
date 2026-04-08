import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gr_vs_ar/router/auto_route_router.dart';

enum ArStackDemoStrategy { push, pushAndPopUntil }

@RoutePage()
class ArStepScreen extends StatelessWidget {
  const ArStepScreen({required this.step, required this.strategy, super.key});

  final int step;
  final ArStackDemoStrategy strategy;

  bool get _isLastStep => step == 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step $step'),
        leading: BackButton(onPressed: () => context.router.pop()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You are on Step $step.\nStrategy: ${strategy.name}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 32),
            if (!_isLastStep)
              ElevatedButton(
                onPressed: () => context.router.push(
                  ArStepRoute(step: step + 1, strategy: strategy),
                ),
                child: Text('Go to Step ${step + 1}'),
              ),
            if (_isLastStep) ...[
              const Text(
                'Now navigate to Destination.\nWatch what happens to the back-stack.',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 16),
              _buildNavigateButton(context),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildNavigateButton(BuildContext context) {
    return switch (strategy) {
      ArStackDemoStrategy.push => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade700,
          foregroundColor: Colors.white,
        ),
        onPressed: () => context.router.push(const ArDestinationRoute()),
        child: const Text('push() → Destination'),
      ),
      ArStackDemoStrategy.pushAndPopUntil => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange.shade700,
          foregroundColor: Colors.white,
        ),
        onPressed: () => context.router.pushAndPopUntil(
          const ArDestinationRoute(),
          predicate: (route) => route.settings.name == ArStackDemoRoute.name,
        ),
        child: const Text('pushAndPopUntil() → Destination'),
      ),
    };
  }
}
