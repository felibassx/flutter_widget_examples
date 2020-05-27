import 'package:flutter/material.dart';
import 'package:widgets_collection/pages/expanded_page.dart';
import 'package:widgets_collection/pages/home_page.dart';
import 'package:widgets_collection/pages/safearea_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(15, 95, 122, 1.0)
        ),

      ),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'safearea': (BuildContext context) => SafeAreaExamplePage(),
        'expanded': (BuildContext context) => ExpandedWidget(),
      },
    );
  }
}