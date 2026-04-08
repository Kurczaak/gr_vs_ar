// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_route_router.dart';

/// generated route for
/// [ArDestinationScreen]
class ArDestinationRoute extends PageRouteInfo<void> {
  const ArDestinationRoute({List<PageRouteInfo>? children})
    : super(ArDestinationRoute.name, initialChildren: children);

  static const String name = 'ArDestinationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArDestinationScreen();
    },
  );
}

/// generated route for
/// [ArStackDemoIntroScreen]
class ArStackDemoIntroRoute extends PageRouteInfo<void> {
  const ArStackDemoIntroRoute({List<PageRouteInfo>? children})
    : super(ArStackDemoIntroRoute.name, initialChildren: children);

  static const String name = 'ArStackDemoIntroRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArStackDemoIntroScreen();
    },
  );
}

/// generated route for
/// [ArStackDemoScreen]
class ArStackDemoRoute extends PageRouteInfo<void> {
  const ArStackDemoRoute({List<PageRouteInfo>? children})
    : super(ArStackDemoRoute.name, initialChildren: children);

  static const String name = 'ArStackDemoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArStackDemoScreen();
    },
  );
}

/// generated route for
/// [ArStepScreen]
class ArStepRoute extends PageRouteInfo<ArStepRouteArgs> {
  ArStepRoute({
    required int step,
    required ArStackDemoStrategy strategy,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ArStepRoute.name,
         args: ArStepRouteArgs(step: step, strategy: strategy, key: key),
         initialChildren: children,
       );

  static const String name = 'ArStepRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArStepRouteArgs>();
      return ArStepScreen(
        step: args.step,
        strategy: args.strategy,
        key: args.key,
      );
    },
  );
}

class ArStepRouteArgs {
  const ArStepRouteArgs({required this.step, required this.strategy, this.key});

  final int step;

  final ArStackDemoStrategy strategy;

  final Key? key;

  @override
  String toString() {
    return 'ArStepRouteArgs{step: $step, strategy: $strategy, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ArStepRouteArgs) return false;
    return step == other.step && strategy == other.strategy && key == other.key;
  }

  @override
  int get hashCode => step.hashCode ^ strategy.hashCode ^ key.hashCode;
}

/// generated route for
/// [FullOfParametersScreen]
class FullOfParametersRoute extends PageRouteInfo<FullOfParametersRouteArgs> {
  FullOfParametersRoute({
    Key? key,
    required FullOfParametersScreenArgs args,
    List<PageRouteInfo>? children,
  }) : super(
         FullOfParametersRoute.name,
         args: FullOfParametersRouteArgs(key: key, args: args),
         initialChildren: children,
       );

  static const String name = 'FullOfParametersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FullOfParametersRouteArgs>();
      return FullOfParametersScreen(key: args.key, args: args.args);
    },
  );
}

class FullOfParametersRouteArgs {
  const FullOfParametersRouteArgs({this.key, required this.args});

  final Key? key;

  final FullOfParametersScreenArgs args;

  @override
  String toString() {
    return 'FullOfParametersRouteArgs{key: $key, args: $args}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FullOfParametersRouteArgs) return false;
    return key == other.key && args == other.args;
  }

  @override
  int get hashCode => key.hashCode ^ args.hashCode;
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    RouterType routerType = RouterType.autoRoute,
    List<PageRouteInfo>? children,
  }) : super(
         HomeRoute.name,
         args: HomeRouteArgs(key: key, routerType: routerType),
         initialChildren: children,
       );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomeScreen(key: args.key, routerType: args.routerType);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.routerType = RouterType.autoRoute});

  final Key? key;

  final RouterType routerType;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, routerType: $routerType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key && routerType == other.routerType;
  }

  @override
  int get hashCode => key.hashCode ^ routerType.hashCode;
}
