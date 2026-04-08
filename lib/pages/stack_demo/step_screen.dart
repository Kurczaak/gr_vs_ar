import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum StackDemoStrategy { pushNamed, goNamed, popUntilWorkaround }

/// A generic "step" screen used for steps 1, 2, and 3 in the flow.
class StepScreen extends StatelessWidget {
  const StepScreen({required this.step, required this.strategy, super.key});

  final int step;
  final StackDemoStrategy strategy;

  bool get _isLastStep => step == 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step $step'),
        leading: BackButton(onPressed: context.pop),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You are on Step $step.\n'
              'Strategy: ${strategy.name}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Current stack: ${_stackDescription(context)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 32),
            if (!_isLastStep)
              ElevatedButton(
                onPressed: () => context.push(
                  '/stack-demo-intro/stack-demo/step/${step + 1}',
                  extra: strategy,
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
      StackDemoStrategy.pushNamed => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade700,
          foregroundColor: Colors.white,
        ),
        onPressed: () => context.pushNamed('destination'),
        child: const Text('pushNamed(\'destination\')'),
      ),
      StackDemoStrategy.goNamed => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange.shade700,
          foregroundColor: Colors.white,
        ),
        onPressed: () => context.goNamed('destination'),
        child: const Text('goNamed(\'destination\')'),
      ),
      StackDemoStrategy.popUntilWorkaround => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple.shade700,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          // Workaround: pop all 3 steps manually, then push destination.
          // ⚠️  This hard-codes the number of pops (3).
          // If this screen is reached from a different flow with 2 steps,
          // we'd pop too many or too few – there's no GoRouter API to
          // "pop until a named route".
          context.pop(); // pop step 3
          context.pop(); // pop step 2
          context.pop(); // pop step 1
          context.push('/stack-demo-intro/stack-demo/destination');
        },
        child: const Text('popUntil workaround → Destination'),
      ),
    };
  }

  String _stackDescription(BuildContext context) {
    // RouteMatchList isn't public API, so we approximate with the path.
    final location = GoRouterState.of(context).uri.toString();
    return location;
  }
}
