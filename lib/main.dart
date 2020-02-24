import 'package:af_monitoring/locator.dart';
import 'package:af_monitoring/ui/views/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autonomous Farming Monitoring',
      home: HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}
