import 'package:flutter/material.dart';
import 'post_pages.dart';

/**
 * https://www.youtube.com/watch?v=mMgr47QBZWA
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: PostsPage(),
      ),
    );
  }
}