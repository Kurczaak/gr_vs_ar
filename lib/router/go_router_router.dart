import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';

class GoRouterRouter {
  static GoRouter router() {
    return GoRouter(
      routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
    );
  }
}
