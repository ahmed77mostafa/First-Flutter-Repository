class TeslaModel{
  List<Map<String,dynamic>> articles;

  TeslaModel({required this.articles});

  factory TeslaModel.fromJson(Map<String,dynamic>json){
    List<Map<String,dynamic>> teslas = [];

    teslas = json["articles"].map((article){
      return{
        "Title": article["title"],
        "Description": article["description"],
        "Image": article["urlToImage"]
      };
    }).toList();

    return TeslaModel(articles: teslas);
  }
}