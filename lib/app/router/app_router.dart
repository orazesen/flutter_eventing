import 'package:auto_route/auto_route.dart';
import 'package:eventing/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(
          path: 'events/',
          page: EmptyShellRoute('EventsTab').page,
          initial: true,
          children: [AutoRoute(path: '', page: EventsRoute.page)],
        ),
        AutoRoute(
          path: 'favorites/',
          page: EmptyShellRoute('FavoritesTab').page,
          children: [
            AutoRoute(path: '', page: FavoritesRoute.page),
            AutoRoute(path: 'favorite', page: FavoriteEventsRoute.page),
          ],
        ),
      ],
    ),
  ];
}
