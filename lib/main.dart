import 'package:flutter/material.dart';
import 'package:telegram/pages/main/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram Copy',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.white,
          secondary: Colors.amber,
          onSecondary: Colors.amber,
          error: Colors.amber,
          onError: Colors.amber,
          surface: Color(0xFF192230),
          onSurface: Colors.white,
        ),
        primaryColor: Color(0xFF0000FF),
      ),
      debugShowCheckedModeBanner: false,
      home: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: const MainPage(),
      ),
    );
  }
}
