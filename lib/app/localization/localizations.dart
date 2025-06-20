import 'package:eventing/app/localization/app_localizations.dart';
import 'package:flutter/material.dart';

extension AppLocalizationsExt on BuildContext {
  AppLocalizations? get localization => AppLocalizations.of(this);
}
