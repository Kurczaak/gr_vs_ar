import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/stack_demo/step_screen.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a Strategy'),
        leading: BackButton(onPressed: context.pop),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Strategy A ─────────────────────────────────────────────────
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => context.push(
                '/stack-demo-intro/stack-demo/step/1',
                extra: StackDemoStrategy.pushNamed,
              ),
              child: const Text('Strategy A – pushNamed()'),
            ),
            const SizedBox(height: 12),
            const Text(
              '✅ Clean stack  ❌ Intermediate screens are lost',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 32),

            // ── Strategy B ─────────────────────────────────────────────────
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => context.push(
                '/stack-demo-intro/stack-demo/step/1',
                extra: StackDemoStrategy.goNamed,
              ),
              child: const Text('Strategy B – goNamed()'),
            ),
            const SizedBox(height: 12),
            const Text(
              '✅ Back works  ❌ Full chain stays in memory',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 32),

            // ── Strategy C ─────────────────────────────────────────────────
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => context.push(
                '/stack-demo-intro/stack-demo/step/1',
                extra: StackDemoStrategy.popUntilWorkaround,
              ),
              child: const Text('Strategy C – popUntil workaround'),
            ),
            const SizedBox(height: 12),
            const Text(
              '✅ Correct result  ⚠️  Hardcoded pop count',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
