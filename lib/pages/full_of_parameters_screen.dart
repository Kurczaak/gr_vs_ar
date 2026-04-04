import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FullOfParametersScreen extends StatelessWidget {
  const FullOfParametersScreen({super.key, required this.args});

  final FullOfParametersScreenArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('User name: ${args.userName}'),
            ElevatedButton(
              onPressed: args.simpleCallback,
              child: Text('Call simple callback'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await args.asyncCallback(42);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Async callback result: $result')),
                  );
                }
              },
              child: Text('Call async callback'),
            ),
            Text('Non-serializable data: ${args.nonSerializable.name}'),
          ],
        ),
      ),
    );
  }
}

class FullOfParametersScreenArgs {
  final String userName;
  final VoidCallback simpleCallback;
  final Future<String> Function(int) asyncCallback;
  final NonSerializableClass nonSerializable;

  FullOfParametersScreenArgs({
    required this.userName,
    required this.simpleCallback,
    required this.asyncCallback,
    required this.nonSerializable,
  });
}

class NonSerializableClass {
  final String name;
  NonSerializableClass(this.name);
}
