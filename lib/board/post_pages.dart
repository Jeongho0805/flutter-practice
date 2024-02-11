import 'package:contact/board/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: futurePosts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Post>? posts = snapshot.data;
          return ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(posts![index].title),
                subtitle: Text(posts[index].content),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // 기본적으로 로딩 Spinner를 표시합니다.
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('http://localhost:3000/boards'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> decodedBody = json.decode(response.body);
      List<dynamic> boardList = decodedBody['data'];
      return boardList.map((board) => Post.fromJson(board)).toList();
    } else {
      throw Exception('Failed to load posts from API');
    }
  }
}