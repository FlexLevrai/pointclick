import 'package:flutter/material.dart';
import 'package:pointclick/ui/pages/auth_page.dart';
import 'package:pointclick/ui/pages/choice_page.dart';
import 'package:pointclick/ui/pages/home_page.dart';
import 'package:pointclick/ui/pages/menu_page.dart';
import 'package:pointclick/ui/pages/register_page.dart';
import 'package:pointclick/ui/pages/startup_page.dart';

class Routes {
  static String startup = "/startup";
  static String menu = "/menu";
  static String choice = "/choice";
  static String auth = "/auth";
  static String register = "/register";
  static String home = "/home";
}

Map<String, Widget Function(BuildContext)> navigationRoutes = <String, WidgetBuilder> {
  Routes.startup : (BuildContext context) => const StartupPage(),
  Routes.menu : (BuildContext context) => const MenuPage(),
  Routes.choice : (BuildContext context) => const ChoicePage(),
  Routes.auth : (BuildContext context) => const AuthPage(),
  Routes.register : (BuildContext context) => const RegisterPage(),
  Routes.home : (BuildContext context) => const HomePage(),
};