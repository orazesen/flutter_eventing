import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:eventing/app/di/injector.config.dart';

final GetIt i = GetIt.instance;

@injectableInit
void configureDependencies() => i.init();
