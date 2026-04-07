// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_safe_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$typeSafeDemoRoute];

RouteBase get $typeSafeDemoRoute => GoRouteData.$route(
  path: '/type-safe-demo',
  factory: $TypeSafeDemoRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: ':productId',
      factory: $TypeSafeProductRoute._fromState,
    ),
  ],
);

mixin $TypeSafeDemoRoute on GoRouteData {
  static TypeSafeDemoRoute _fromState(GoRouterState state) =>
      const TypeSafeDemoRoute();

  @override
  String get location => GoRouteData.$location('/type-safe-demo');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $TypeSafeProductRoute on GoRouteData {
  static TypeSafeProductRoute _fromState(GoRouterState state) =>
      TypeSafeProductRoute(
        productId: int.parse(state.pathParameters['productId']!),
        name: state.uri.queryParameters['name']!,
        price: double.parse(state.uri.queryParameters['price']!),
      );

  TypeSafeProductRoute get _self => this as TypeSafeProductRoute;

  @override
  String get location => GoRouteData.$location(
    '/type-safe-demo/${Uri.encodeComponent(_self.productId.toString())}',
    queryParams: {'name': _self.name, 'price': _self.price.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
