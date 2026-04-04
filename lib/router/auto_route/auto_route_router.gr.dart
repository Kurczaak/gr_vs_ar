// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_route_router.dart';

/// generated route for
/// [DeeplinkProductScreen]
class DeeplinkProductRoute extends PageRouteInfo<DeeplinkProductRouteArgs> {
  DeeplinkProductRoute({
    Key? key,
    required String id,
    String? color,
    List<PageRouteInfo>? children,
  }) : super(
         DeeplinkProductRoute.name,
         args: DeeplinkProductRouteArgs(key: key, id: id, color: color),
         rawPathParams: {'id': id},
         rawQueryParams: {'color': color},
         initialChildren: children,
       );

  static const String name = 'DeeplinkProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final queryParams = data.queryParams;
      final args = data.argsAs<DeeplinkProductRouteArgs>(
        orElse: () => DeeplinkProductRouteArgs(
          id: pathParams.getString('id'),
          color: queryParams.optString('color'),
        ),
      );
      return DeeplinkProductScreen(
        key: args.key,
        id: args.id,
        color: args.color,
      );
    },
  );
}

class DeeplinkProductRouteArgs {
  const DeeplinkProductRouteArgs({this.key, required this.id, this.color});

  final Key? key;

  final String id;

  final String? color;

  @override
  String toString() {
    return 'DeeplinkProductRouteArgs{key: $key, id: $id, color: $color}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DeeplinkProductRouteArgs) return false;
    return key == other.key && id == other.id && color == other.color;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode ^ color.hashCode;
}

/// generated route for
/// [DeeplinkUserScreen]
class DeeplinkUserRoute extends PageRouteInfo<DeeplinkUserRouteArgs> {
  DeeplinkUserRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
         DeeplinkUserRoute.name,
         args: DeeplinkUserRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'DeeplinkUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DeeplinkUserRouteArgs>(
        orElse: () => DeeplinkUserRouteArgs(id: pathParams.getString('id')),
      );
      return DeeplinkUserScreen(key: args.key, id: args.id);
    },
  );
}

class DeeplinkUserRouteArgs {
  const DeeplinkUserRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'DeeplinkUserRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DeeplinkUserRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
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
