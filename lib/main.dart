import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeongho',
      home: Grade() ,

    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('Hoya'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//
          children: const <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cat.jpeg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
              thickness: 1.0,
              endIndent: 30.0,
            ),
            Text('Name',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Jeongho',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Age / 29',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Jobs / Developer',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Height / 180',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
