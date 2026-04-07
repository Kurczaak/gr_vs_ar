import 'package:flutter/material.dart';

class TypeSafeProductScreen extends StatelessWidget {
  const TypeSafeProductScreen({
    required this.productId,
    required this.name,
    required this.price,
    super.key,
  });

  final int productId;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('productId: $productId  (int – path param)'),
            Text('name: $name  (String – query param)'),
            Text('price: $price  (double – query param)'),
          ],
        ),
      ),
    );
  }
}
