import 'package:flutter/material.dart';
import 'package:you_movies/utils/routes/route_names.dart';
import 'package:you_movies/views/home_screen/home_screen.dart';
import 'package:you_movies/views/search_screen/search_screen.dart';
import 'package:you_movies/views/show_movie_screen/show_movie_screen.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homescreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.searchscreen:
        return MaterialPageRoute(builder: (context) => SearchScreen());
      case RouteNames.showmovie:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => ShowMovieScreen(
            title: args['title'],
            thumbnail: args['thumbnail'],
            description: args['description'],
          ),
        );
      // case RouteNames.settingscreen:
      //   return MaterialPageRoute(builder: (context) => ContactUsScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
