import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/newModels.dart';

//Class to make Network Calls
class FetchNewsServices {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "bloomberg",
    "business-insider",
    "cnn",
    "engadget",
    "espn",
    "fox-news",
    "fox-sports",
    "google-news",
    "hacker-news",
    "ign",
    "mashable",
    "mtv-news",
    "national-geographic",
    "nbc-news",
    "reuters",
    "techcrunch",
    "techradar",
    "the-sport-bible",
    "the-verge",
    "the-times-of-india",
    "the-wall-street-journal",
    "time",
    "usa-today",
    "vice-news",
    "wired"
  ];
  //setup http client to handle multiple request from different sources

  // Function to make Network Calls from json placeholder "post" request
  static Future<NewsArticle?> fetchNews() async {
    //get random source id
    final random = Random();
    //select one sourceId at a time
    var sourceId = sourcesId[random.nextInt(sourcesId.length)];

    try {
      //setup http client
      Uri uri = Uri.parse(
        //'https://newsapi.org/v2/top-headlines?sources=$sourceId-news&apiKey=0b77311fbbdc4605a599dc487655f65c',
        // 'https://newsapi.org/v2/top-headlines/sources?apiKey=0b77311fbbdc4605a599dc487655f65c',
        // 'https://newsapi.org/v2/top-headlines?country=us&apiKey=0b77311fbbdc4605a599dc487655f65c',
        'https://newsapi.org/v2/top-headlines?sources=time&apiKey=caea254bf2f94f869e831ec24284ece1',
      );
      //
      var response = await http.get(uri);
      print(':::::::::::::::::::::::::::$sourceId');
      print('status code:::::::::::::::::::::::::::${response.statusCode}');
      print(':::::::::::::::::::::::::::${response.body}');
      //Check for response
      if (response.statusCode == 200) {
        Map bodyData = jsonDecode(response.body);

        List articles = bodyData["articles"];
        print('article:::::::::::::::::::::::::::$articles');
        // print('status code:::::::::::::::::::::::::::${response.statusCode}');
        // print('body:::::::::::::::::::::::::::${response.body.length}');
        //fetching individual article from thier sources randomly
        var myArticle = articles[random.nextInt(articles.length)];
        return NewsArticle.fromAPItoAPP(myArticle);
      } else {
        print(':::::::::::::::::::::::::::${response.statusCode}');
        print(':::::::::::::::::::::::::::${response.body}');
      }
    } on SocketException {
      throw "No Internet Connection";
    } catch (e) {
      throw "Unknown Error";
    }

    /// return null;
  }
}
