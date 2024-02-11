class Post {
  final String title;
  final String content;

  Post({required this.title, required this.content});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }
}