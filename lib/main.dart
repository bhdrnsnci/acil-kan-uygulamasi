import 'package:acilkan/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(UrgentBloodApp());
}

class UrgentBloodApp extends StatelessWidget {
  String appTitle = "Acil Kan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        home: MainScreen()
    );
  }
}