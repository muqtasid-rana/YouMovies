import 'package:you_movies/services/apis/secret/api_key.dart';

final baseUrl = "https://www.googleapis.com/youtube/v3/search";
final englishMovies =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=english+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";
final hindiMovies =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=hindi+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";
final sciFi =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=sci+fi+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";

final thriller =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=thriller+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";

final comedy =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=comedy+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";

final crime =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=crime+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";

final popular =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=25&q=popular+movies+full+movie&videoDuration=long&order=viewCount&key=$API_KEY";
