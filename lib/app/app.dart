import 'package:auto_route/auto_route.dart';
import 'package:eventing/app/localization/app_localizations.dart';
import 'package:eventing/app/observers/eventing_route_observer.dart';
import 'package:eventing/app/router/app_router.dart';
import 'package:eventing/src/presentation/behaviors/eventing_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp.router(
          showPerformanceOverlay: false,
          debugShowCheckedModeBanner: false,
          scrollBehavior: EventingScrollBehavior(),
          key: UniqueKey(),
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [EventingRouteObserver()],
          ),
          routeInformationParser: _router.defaultRouteParser(),
          supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU')],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
