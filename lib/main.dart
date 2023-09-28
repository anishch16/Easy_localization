import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_demo/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}
