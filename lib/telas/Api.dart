import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyCCGv_2KUC1T9cErYmJPqTSWmerKtnMC7U";
const ID_CANAL = "UCjXfkj5iapKHJrhYfAF9ZGg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "/posts"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q$pesquisa"));

    if (response.statusCode == 200) {
      print("resultado: " + response.body);
    }
  }
}
