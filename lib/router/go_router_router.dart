import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/full_of_parameters_screen.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';
import 'package:gr_vs_ar/router/router_type.dart';

class GoRouterRouter {
  static GoRouter router() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) =>
              const HomeScreen(routerType: RouterType.goRouter),
        ),
        GoRoute(
          path: '/fullOfParameters',
          name: 'fullOfParameters',
          builder: (context, state) {
            // Extract parameters from the state if needed
            return FullOfParametersScreen(
              args: state.extra as FullOfParametersScreenArgs,
            );
          },
        ),
      ],
    );
  }
}
