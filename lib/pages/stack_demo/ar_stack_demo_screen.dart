import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gr_vs_ar/pages/stack_demo/ar_step_screen.dart';
import 'package:gr_vs_ar/router/auto_route_router.dart';

@RoutePage()
class ArStackDemoScreen extends StatelessWidget {
  const ArStackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a Strategy'),
        leading: BackButton(onPressed: () => context.router.pop()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Strategy A ────────────────────────────────────────────────
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => context.router.push(
                ArStepRoute(step: 1, strategy: ArStackDemoStrategy.push),
              ),
              child: const Text('Strategy A – push()'),
            ),
            const SizedBox(height: 8),
            const Text(
              '✅ Back works  ❌ Full chain stays in stack',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 32),

            // ── Strategy B ────────────────────────────────────────────────
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => context.router.push(
                ArStepRoute(
                  step: 1,
                  strategy: ArStackDemoStrategy.pushAndPopUntil,
                ),
              ),
              child: const Text('Strategy B – pushAndPopUntil()'),
            ),
            const SizedBox(height: 8),
            const Text(
              '✅ Clean stack  ✅ No hardcoded pop count',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
