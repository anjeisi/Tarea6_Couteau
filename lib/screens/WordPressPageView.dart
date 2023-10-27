//Anjesi Ivelisse 2021-1815
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class WordPressPageView extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<WordPressPageView> {
  List<dynamic> newsData = [];

  @override
  void initState() {
    super.initState();
    fetchNewsData();
  }

  Future<void> fetchNewsData() async {
    final response = await http.get(Uri.parse("https://www.katyperry.com/wp-json/wp/v2/posts"));

    if (response.statusCode == 200) {
      setState(() {
        newsData = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katy Perry's Posts"),
      ),
      body: ListView.builder(
        itemCount: newsData.length + 1, // Add 1 for the logo
        itemBuilder: (context, index) {
          if (index == 0) {
            // Show the logo as the first item
            return Image.asset(
              'prism.jpg', height: 100,
            );
          } else {
            return PostItem(newsData[index - 1]);
          }
        },
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final Map<String, dynamic> post;

  PostItem(this.post);

  @override
  Widget build(BuildContext context) {
    String title = post['title']['rendered'];
    String content = post['content']['rendered'];

    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          _stripHtmlTags(content),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  String _stripHtmlTags(String htmlString) {
    return htmlString.replaceAll(RegExp(r"<[^>]*>"), '');
  }
}