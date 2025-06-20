import 'package:auto_route/auto_route.dart';
import 'package:eventing/app/di/injector.dart';
import 'package:eventing/app/router/app_router.gr.dart';
import 'package:eventing/src/presentation/common_cubits/file_system/file_system_cubit.dart';
import 'package:eventing/src/presentation/pages/events/cubit/events_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part './widgets/bottom_nav_bar_part.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<PageRouteInfo> get _routes => [
    const EventsRoute(),
    const FavoritesRoute(),
  ];

  final _fileSystemCubit = i<FileSystemCubit>();
  final _eventsCubit = i<EventsCubit>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _fileSystemCubit),
        BlocProvider(create: (context) => _eventsCubit),
      ],
      child: AutoTabsScaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        routes: _routes,
        homeIndex: 1,
        bottomNavigationBuilder: (_, router) {
          return _BottomNavBarPart(router);
        },
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
