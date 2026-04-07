import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/type_safe_demo/type_safe_demo_screen.dart';
import 'package:gr_vs_ar/pages/type_safe_demo/type_safe_product_screen.dart';

part 'type_safe_routes.g.dart';

@TypedGoRoute<TypeSafeDemoRoute>(
  path: '/type-safe-demo',
  routes: [TypedGoRoute<TypeSafeProductRoute>(path: ':productId')],
)
@immutable
class TypeSafeDemoRoute extends GoRouteData with $TypeSafeDemoRoute {
  const TypeSafeDemoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TypeSafeDemoScreen();
}

@immutable
class TypeSafeProductRoute extends GoRouteData with $TypeSafeProductRoute {
  const TypeSafeProductRoute({
    required this.productId, // path param  → /type-safe-demo/:productId
    required this.name, // query param → ?name=...
    required this.price, // query param → ?price=... (typed double)
  });
  final int productId;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      TypeSafeProductScreen(productId: productId, name: name, price: price);
}
