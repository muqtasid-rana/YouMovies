import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:you_movies/utils/constants/app_sizes.dart';
import 'package:you_movies/utils/routes/route_names.dart';
import 'package:you_movies/utils/routes/routes.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YouMovies',
        initialRoute: RouteNames.homescreen,
        onGenerateRoute: Routes.generateRoutes);
  }
}
