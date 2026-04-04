import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeeplinkProductScreen extends StatelessWidget {
  const DeeplinkProductScreen({
    super.key,
    @PathParam('id') required this.id,
    @QueryParam('color') this.color,
  });

  final String id;
  final String? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product')),
      body: Center(child: Text('Product id: $id  color: ${color ?? 'none'}')),
    );
  }
}
