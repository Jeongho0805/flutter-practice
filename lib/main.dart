import 'package:contact/home_page.dart';
import 'package:flutter/material.dart';

/**
 * https://www.youtube.com/watch?v=mMgr47QBZWA
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow[200],
      ),
    );
  }
}