import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:miniblog/models/blog.dart';

class ArticleRepository {
  Future<List<Blog>> fetchBlogs() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");
    final response = await http.get(url);
    final List jsonData = json.decode(response.body);
    return jsonData.map((json) => Blog.fromJson(json)).toList();
  }
}
