import 'package:flutter/material.dart';
import 'package:scaffold_page/pages/lesson_nine.dart';
import 'package:scaffold_page/pages/lesson_ten.dart';
import 'package:scaffold_page/pages/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                  color: Colors.white
              ),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)
          )
      ),
      home: const ListPage(),
      routes: {
        LessonNine.id: (context) => const LessonNine(),
        LessonTen.id: (context) => const LessonTen(),
        ListPage.id: (context) => const ListPage(),
      },
    );
  }
}

