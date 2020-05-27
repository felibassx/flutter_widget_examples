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
      routes: {
        'home': (BuildContext context) => HomePage(),
        'safearea': (BuildContext context) => SafeAreaExamplePage(),
        'expanded': (BuildContext context) => ExpandedWidget(),
      },
    );
  }
}