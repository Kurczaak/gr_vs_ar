import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeeplinkUserScreen extends StatelessWidget {
  const DeeplinkUserScreen({super.key, @PathParam('id') required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: Center(child: Text('User id: $id')),
    );
  }
}
