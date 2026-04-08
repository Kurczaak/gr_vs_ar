import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArDestinationScreen extends StatelessWidget {
  const ArDestinationScreen({super.key});

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
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Now press back and observe:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '• push()  →  back goes to Step 3\n'
                        '   ✅ back works, ❌ full chain still in stack',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '• pushAndPopUntil()  →  back goes to Pick a Strategy\n'
                        '   ✅ clean stack, ✅ no hardcoded pop count',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              OutlinedButton(
                onPressed: () => context.router.pop(),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
