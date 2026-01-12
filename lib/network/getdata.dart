import 'package:dio/dio.dart';
import 'package:news_app/model/articals.dart';

class Getdata {
  final Dio dio = Dio();
  Future<List<ArticalsModle>> getnewsUSA(String catagory) async {
    var url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=bbc26ae174f84c32a4fb274139b51b92$catagory';
    var respinse = await dio.get(url);
    Map<String, dynamic> jsondata = respinse.data;
    List<dynamic> articles = jsondata['articles'];

    return articles.map((json) => ArticalsModle.fromjson(json)).toList();
  }
}
