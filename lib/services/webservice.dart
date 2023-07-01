//responsible for making network request and
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsappmvvm/models/newsArticle.dart';

class WebService {
  Future<List<NewsArticle>> fetchTopHeadlines() async{
    String url =
        "https://newsdata.io/api/1/news?apikey=pub_25487bd0770d8c715f23470f21462d72e4a3f&q=cryptocurrency";

    final response =await http.get(url as Uri); 

    if (response.statusCode == 200){
      //decode the json of the response

final result =jsonDecode(response.body);

  Iterable list = result["results"];
  return list.map((results) => NewsArticle.fromJSON(results)).toList();


    }else{
      throw Exception('failed to get top news');
    }
  }
}
