// ignore_for_file: strict_raw_type

import 'dart:async';
import 'dart:developer';
import 'package:eventing/app/di/injector.dart';
import 'package:eventing/src/data/models/event/event_model.dart';
import 'package:eventing/src/data/models/file_system/file_system_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

const _tag = 'AppBlocObserver';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)', name: _tag);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)', name: _tag);
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack, name: _tag);
  };

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();

    await Hive.initFlutter();
    Hive.registerAdapter<FileSystemModel>(FileSystemImplAdapter());
    Hive.registerAdapter<EventModel>(EventImplAdapter());

    final locale = PlatformDispatcher.instance.locale;
    Intl.systemLocale = locale.toString();

    runApp(await builder());
  }, (error, stackTrace) => log('Unhandled exception: $error'));
}
