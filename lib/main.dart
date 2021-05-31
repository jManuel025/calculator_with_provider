import 'package:calculator_with_provider/src/ui/screens/home_screen.dart';
import 'package:calculator_with_provider/src/utils/CustomTheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: CustomTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
