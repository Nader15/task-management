import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Routes/routes.dart';
import 'Utils/Translation/translation.dart';
import 'Utils/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      title: 'Task Management App',
      theme: ThemeData(
        dividerTheme:  DividerThemeData(thickness: 1, color: AppColors.GREY_COLOR),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(width: 1, color: AppColors.MAIN_COLOR),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.MAIN_COLOR),
        appBarTheme: const AppBarTheme(foregroundColor: AppColors.WHITE_COLOR),
        canvasColor: Colors.transparent,
        // fontFamily: "Bahij TheSansArabic",
      ),
      initialRoute: AppRoutes.loginScreen,
      getPages: AppRoutes.routes,
    );
  }
}
