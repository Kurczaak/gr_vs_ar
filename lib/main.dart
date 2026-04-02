import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/home_screen.dart';

void main() {
  runApp(MainGoRouterApp());
}

class MainGoRouterApp extends StatelessWidget {
  MainGoRouterApp({super.key});

  // GoRouter configuration
  final _router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
