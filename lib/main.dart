import 'package:calculator_with_provider/src/provider/NumberInputProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculator_with_provider/src/ui/screens/home_screen.dart';
import 'package:calculator_with_provider/src/utils/Palette.dart';
import 'package:calculator_with_provider/src/utils/CustomTheme.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (_) => NumberInputProvider(),
      builder: (context, _) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Palette.primary[200]),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: CustomTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
