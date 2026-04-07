import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The destination screen reachable from multiple entry points.
/// After landing here, press the back button to see what remains
/// in the stack for each strategy.
class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.flag, size: 64, color: Colors.teal),
              const SizedBox(height: 16),
              Text(
                'You reached Destination!',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Now press the back button (or swipe back) and observe:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '• go()  →  back goes to Stack Demo Home\n'
                        '   ✅ clean stack, ❌ Steps 1–3 are gone –\n'
                        '      you cannot navigate back through the flow',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '• push()  →  back goes to Step 3\n'
                        '   ✅ back works, ❌ full chain still in stack',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '• popUntil workaround  →  back goes to Home\n'
                        '   ✅ correct, ⚠️  fragile – hard-coded pop count',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              OutlinedButton(
                onPressed: () => context.go('/stack-demo-intro/stack-demo'),
                child: const Text('Back to Stack Demo Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
