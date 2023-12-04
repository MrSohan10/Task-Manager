import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/splash_screen.dart';

class TaskManager extends StatelessWidget {
  static GlobalKey <NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  const TaskManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      home: const SplashScreen(),
      theme: ThemeData(
          primaryColor: Colors.green,
          primarySwatch: Colors.green,
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green))),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8),
          ))),
    );
  }
}
