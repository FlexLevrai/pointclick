import 'package:flutter/material.dart';
import 'package:pointclick/constants/core_constants.dart';
import 'package:pointclick/constants/custom_theme.dart';
import 'package:pointclick/constants/navigation_routes.dart';
import 'package:pointclick/providers/startup_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => StartupProvider())
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: CustomTheme.lightTheme,
      routes: navigationRoutes,
      initialRoute: Routes.menu,
    );
  }
}
