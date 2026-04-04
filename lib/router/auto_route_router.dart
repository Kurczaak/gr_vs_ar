import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  ];
}
