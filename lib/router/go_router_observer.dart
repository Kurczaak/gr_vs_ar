import 'package:flutter/material.dart';

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint(
      'GoRouter didPush: ${route.settings.name} '
      '(from: ${previousRoute?.settings.name})',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint(
      'GoRouter didPop: ${route.settings.name} '
      '(back to: ${previousRoute?.settings.name})',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint(
      'GoRouter didReplace: ${oldRoute?.settings.name} '
      '→ ${newRoute?.settings.name}',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('GoRouter didRemove: ${route.settings.name}');
  }
}
