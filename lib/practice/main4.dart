import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> fetchAlbum() async {
  final response = await http.get(Uri.parse('http://localhost:8080/flutter'));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load album');
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<String> data;

  @override
  void initState() {
    super.initState();
    data = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<String>(
            future: data,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                // 데이터가 정상적으로 로드되면, 여기에서 표시합니다.
                return Text(snapshot.data!); // '!' 연산자는 null이 아님을 보증합니다.
              } else {
                return Text('No data');
              }
            },
          ),
        ),
      ),
    );
  }
}