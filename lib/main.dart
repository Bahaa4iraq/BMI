import 'package:flutter/material.dart';
import 'package:skin_care/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: Colors.white70,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
              headline2: TextStyle(
                  color: Colors.white70,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          scaffoldBackgroundColor: const Color.fromARGB(220, 255, 255, 255),
          colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: const Color(0xfff07914),
              background: const Color(0xff241612),
              onPrimary: const Color(0xff37150e))),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
