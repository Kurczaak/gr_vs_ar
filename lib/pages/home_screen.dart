import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gr_vs_ar/pages/full_of_parameters_screen.dart';
import 'package:gr_vs_ar/router/auto_route_router.dart';
import 'package:gr_vs_ar/router/router_type.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.routerType = RouterType.autoRoute});

  final RouterType routerType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home screen - using ${routerType.name}'),
            ElevatedButton(
              onPressed: () => _navigateToFullOfParametersScreen(context),
              child: Text('Go to full of parameters screen'),
            ),
            if (routerType == RouterType.goRouter) ...[
              ElevatedButton(
                onPressed: () => context.go('/a'),
                child: const Text('Go to indexed navigation example'),
              ),
              ElevatedButton(
                onPressed: () => context.pushNamed('stack-demo-intro'),
                child: const Text('go() vs push() – stack demo'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _navigateToFullOfParametersScreen(BuildContext context) {
    switch (routerType) {
      case RouterType.goRouter:
        // GoRouter navigation code here

        context.pushNamed(
          'fullOfParameters',
          extra: FullOfParametersScreenArgs(
            userName: 'John Doe',
            simpleCallback: () => print('Simple callback called'),
            asyncCallback: (value) async {
              await Future.delayed(Duration(seconds: 1));
              return 'Async callback result for value $value';
            },
            nonSerializable: NonSerializableClass('Go Router rulez'),
          ),
        );
      case RouterType.autoRoute:
        context.router.push(
          FullOfParametersRoute(
            args: FullOfParametersScreenArgs(
              userName: 'John Doe',
              simpleCallback: () => print('Simple callback called'),
              asyncCallback: (value) async {
                await Future.delayed(Duration(seconds: 1));
                return 'Async callback result for value $value';
              },
              nonSerializable: NonSerializableClass('Auto Route rulez'),
            ),
          ),
        );
        break;
    }
  }
}
