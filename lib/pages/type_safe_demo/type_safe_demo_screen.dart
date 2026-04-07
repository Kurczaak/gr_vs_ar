import 'package:flutter/material.dart';
import 'package:gr_vs_ar/router/type_safe_routes.dart';

class TypeSafeDemoScreen extends StatelessWidget {
  const TypeSafeDemoScreen({super.key});

  static const _products = [
    (id: 1, name: 'Keyboard', price: 129.99),
    (id: 2, name: 'Mouse', price: 49.99),
    (id: 3, name: 'Monitor', price: 399.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Type-safe Routes')),
      body: ListView(
        children: [
          for (final p in _products)
            ListTile(
              title: Text('${p.name} (\$${p.price})'),
              onTap: () => TypeSafeProductRoute(
                productId: p.id,
                name: p.name,
                price: p.price,
              ).push(context),
            ),
        ],
      ),
    );
  }
}
