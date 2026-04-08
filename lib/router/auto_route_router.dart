import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gr_vs_ar/pages/full_of_parameters_screen.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';
import 'package:gr_vs_ar/pages/stack_demo/ar_destination_screen.dart';
import 'package:gr_vs_ar/pages/stack_demo/ar_stack_demo_intro_screen.dart';
import 'package:gr_vs_ar/pages/stack_demo/ar_stack_demo_screen.dart';
import 'package:gr_vs_ar/pages/stack_demo/ar_step_screen.dart';
import 'package:gr_vs_ar/router/router_type.dart';

part 'auto_route_router.gr.dart';

@AutoRouterConfig()
class AutoRouteRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: FullOfParametersRoute.page),
    AutoRoute(page: ArStackDemoIntroRoute.page, path: '/ar-stack-demo-intro'),
    AutoRoute(page: ArStackDemoRoute.page, path: '/ar-stack-demo'),
    AutoRoute(page: ArStepRoute.page, path: '/ar-stack-demo/step/:step'),
    AutoRoute(
      page: ArDestinationRoute.page,
      path: '/ar-stack-demo/destination',
    ),
  ];
}
