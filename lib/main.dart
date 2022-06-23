import 'package:flutter/material.dart';
import 'package:netflix/UI/main_page/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyText1:  TextStyle(
            color: Colors.white,
          ),
          bodyText2:  TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const ScreenMain(),
    );
  }
}
