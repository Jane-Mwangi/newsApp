class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  NewsArticle({required this.title,
    required this.description,
    required this.urlToImage,
    required this.url});

//responsible for creating the new instances object
  factory NewsArticle.fromJSON(Map<String, dynamic> json){
    return NewsArticle(title: json["tittle"],
        description: json["description"],
        urlToImage: json["urlToImage"],
        url: json["url"]);
  }
}
