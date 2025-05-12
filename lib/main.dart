import 'package:flutter/material.dart';
import 'package:you_movies/utils/constants/app_sizes.dart';
import 'package:you_movies/widgets/bottom_navbar.dart';

void main() {
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
        home: CustomNavBar());
  }
}
