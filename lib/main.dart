import 'package:flutter/material.dart';
import 'package:gr_vs_ar/router/auto_route_router.dart';
import 'package:gr_vs_ar/router/go_router_router.dart';

void main() {
  runApp(ComparisonApp());
}

class ComparisonApp extends StatelessWidget {
  const ComparisonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoRouter vs AutoRoute',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _SplitScreen(),
    );
  }
}

class GoRouterPanel extends StatelessWidget {
  GoRouterPanel({super.key});

  // GoRouter configuration
  final _router = GoRouterRouter.router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}

class AutoRoutePanel extends StatelessWidget {
  AutoRoutePanel({super.key});

  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AutoRouteRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}

class _SplitScreen extends StatelessWidget {
  const _SplitScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                _PanelHeader(title: 'GoRouter', color: Colors.blue),
                Expanded(child: GoRouterPanel()),
              ],
            ),
          ),
          const VerticalDivider(width: 2, thickness: 2),
          Expanded(
            child: Column(
              children: [
                _PanelHeader(title: 'AutoRoute', color: Colors.green),
                Expanded(child: GoRouterPanel()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PanelHeader extends StatelessWidget {
  final String title;
  final Color color;

  const _PanelHeader({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
