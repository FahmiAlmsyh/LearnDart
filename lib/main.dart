import 'package:flutter/material.dart';
import 'package:rooting/first_page.dart';
import 'package:rooting/last_page.dart';
import 'package:rooting/main_page.dart';
import 'package:rooting/move_with_data.dart';
import 'package:rooting/replace_page.dart';
import 'package:rooting/return_data_screen.dart';
import 'package:rooting/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 247, 186, 0))),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/ind': (context) => const FirstPage(),
        '/sec': (context) => const SecondPage(),
        '/mwd': (context) =>
            MoveWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/rds': (context) => ReturnDataScreen(),
        '/rp': (context) => const ReplacePage(),
        '/ls': (context) => const LastPage(),
      },
    );
  }
}
