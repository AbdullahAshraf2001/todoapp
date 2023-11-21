import 'package:flutter/material.dart';
import 'package:todoapp/ui/screens/home/home_screen.dart';
import 'package:todoapp/ui/screens/splash/splash_screen.dart';
import 'package:todoapp/ui/utilites/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

