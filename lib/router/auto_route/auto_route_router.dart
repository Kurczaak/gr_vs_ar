import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gr_vs_ar/pages/deeplink_product_screen.dart';
import 'package:gr_vs_ar/pages/deeplink_user_screen.dart';
import 'package:gr_vs_ar/pages/full_of_parameters_screen.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';
import 'package:gr_vs_ar/router/router_type.dart';

part 'auto_route_router.gr.dart';

@AutoRouterConfig()
class AutoRouteRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: FullOfParametersRoute.page),
    AutoRoute(page: DeeplinkUserRoute.page, path: '/user/:id'),
    AutoRoute(page: DeeplinkProductRoute.page, path: '/product/:id'),
  ];
}
