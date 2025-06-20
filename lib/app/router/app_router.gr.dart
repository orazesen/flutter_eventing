// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:eventing/src/domain/entities/file_system/file_system.dart'
    as _i7;
import 'package:eventing/src/presentation/pages/events/events_page.dart' as _i1;
import 'package:eventing/src/presentation/pages/favorite_events_page/favorite_events_page.dart'
    as _i2;
import 'package:eventing/src/presentation/pages/favorites/favorites_page.dart'
    as _i3;
import 'package:eventing/src/presentation/pages/main/main_page.dart' as _i4;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.EventsPage]
class EventsRoute extends _i5.PageRouteInfo<void> {
  const EventsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.EventsPage();
    },
  );
}

/// generated route for
/// [_i2.FavoriteEventsPage]
class FavoriteEventsRoute extends _i5.PageRouteInfo<FavoriteEventsRouteArgs> {
  FavoriteEventsRoute({
    _i6.Key? key,
    required _i7.FileSystem file,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          FavoriteEventsRoute.name,
          args: FavoriteEventsRouteArgs(
            key: key,
            file: file,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteEventsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FavoriteEventsRouteArgs>();
      return _i2.FavoriteEventsPage(
        key: args.key,
        file: args.file,
      );
    },
  );
}

class FavoriteEventsRouteArgs {
  const FavoriteEventsRouteArgs({
    this.key,
    required this.file,
  });

  final _i6.Key? key;

  final _i7.FileSystem file;

  @override
  String toString() {
    return 'FavoriteEventsRouteArgs{key: $key, file: $file}';
  }
}

/// generated route for
/// [_i3.FavoritesPage]
class FavoritesRoute extends _i5.PageRouteInfo<void> {
  const FavoritesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainPage();
    },
  );
}
