import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/router/auto_route/auto_route_router.dart';
import 'package:gr_vs_ar/router/auto_route/deeplink_builder.dart';
import 'package:gr_vs_ar/router/go_router/go_router_router.dart';

void main() {
  runApp(ComparisonApp());
}

class ComparisonApp extends StatelessWidget {
  ComparisonApp({super.key});

  final _goRouterRouter = GoRouterRouter.router();
  final _autoRouteRouter = AutoRouteRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _autoRouteRouter.config(
        deepLinkBuilder: AutoRouteConfig.deeplinkBuilder,
      ),
      title: 'GoRouter vs AutoRoute',
      theme: ThemeData(primarySwatch: Colors.blue),
      // _SplitScreen(_goRouterRouter, _autoRouteRouter),
    );
  }
}

class GoRouterPanel extends StatelessWidget {
  const GoRouterPanel({super.key, required this.router});

  // GoRouter configuration
  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}

class AutoRoutePanel extends StatelessWidget {
  const AutoRoutePanel({super.key, required this.router});

  final AutoRouteRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(
        deepLinkBuilder: AutoRouteConfig.deeplinkBuilder,
      ),
    );
  }
}

class _SplitScreen extends StatelessWidget {
  const _SplitScreen(this._goRouterRouter, this._autoRouteRouter);

  final GoRouter _goRouterRouter;
  final AutoRouteRouter _autoRouteRouter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                _PanelHeader(title: 'GoRouter', color: Colors.blue),
                Expanded(child: GoRouterPanel(router: _goRouterRouter)),
              ],
            ),
          ),
          const VerticalDivider(width: 2, thickness: 2),
          Expanded(
            child: Column(
              children: [
                _PanelHeader(title: 'AutoRoute', color: Colors.green),
                Expanded(child: AutoRoutePanel(router: _autoRouteRouter)),
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
