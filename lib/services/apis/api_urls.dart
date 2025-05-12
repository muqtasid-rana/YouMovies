import 'package:flutter_dotenv/flutter_dotenv.dart';

final String apiKey = dotenv.env['API_KEY'] ?? '';

final String baseUrl = "https://www.googleapis.com/youtube/v3/search";

final String englishMovies =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=english+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String hindiMovies =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=hindi+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String sciFi =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=sci+fi+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String thriller =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=thriller+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String comedy =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=comedy+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String crime =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=crime+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";

final String popular =
    "$baseUrl?part=snippet&type=video&maxResults=25&q=popular+movies+full+movie&videoDuration=long&order=viewCount&key=$apiKey";
