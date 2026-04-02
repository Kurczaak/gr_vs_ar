import 'package:auto_route/auto_route.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';

part 'auto_route_router.gr.dart';

@AutoRouterConfig()
class AutoRouteRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: HomeRoute.page)];
}
