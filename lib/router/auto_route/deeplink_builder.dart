import 'dart:async';

import 'package:auto_route/auto_route.dart';

abstract final class AutoRouteConfig {
  static FutureOr<DeepLink> deeplinkBuilder(PlatformDeepLink deepLink) {
    if (deepLink.path.startsWith('/user') ||
        deepLink.path.startsWith('/product')) {
      // continue with the platform link
      return deepLink;
    } else {
      return DeepLink.defaultPath;
    }
  }
}
