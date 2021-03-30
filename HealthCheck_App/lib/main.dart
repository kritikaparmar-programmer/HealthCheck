import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:HealthCheck_App/Screens/category.dart';
import 'package:HealthCheck_App/Screens/settings.dart';
import 'package:HealthCheck_App/Screens/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      routes: {
        '/settings': (context) => Settings(),
        '/about': (context) => About(),
      },
      title: 'Health Check',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: Category(),
    );
  }
}
