import 'package:http/http.dart' as http;
import 'package:news_app/models/newModels.dart';

//Class to make Network Calls
class RemoteServices {
  //setup http client to handle multiple request
  var client = http.Client();

  // Function to make Network Calls from json placeholder "post" request
  Future<News?> getNews() async {
    //setup http client
    var uri = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=0b77311fbbdc4605a599dc487655f65c');
    var response = await client.get(uri);

    //Check for response
    if (response.statusCode == 200) {
      var json = response.body;
      print(':::::::::::::::::::::::::::${response.statusCode}');
      print(':::::::::::::::::::::::::::${response.body}');
      return newsFromJson(json);
    } else {
      print('${response.statusCode}');
    }
    return null;
  }
}


//0b77311fbbdc4605a599dc487655f65c

