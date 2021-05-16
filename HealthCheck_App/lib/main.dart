import 'Screens/DiseaseDetection/cancer_detection.dart';
import 'Screens/category.dart';
import 'Screens/DiseaseSelection/user_disease_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/settings.dart';
import 'Screens/about.dart';

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
        '/cancer': (context) => Cancer(),
        '/userSelect': (context) => UserDiseaseSelect(),
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
