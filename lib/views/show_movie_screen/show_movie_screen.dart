import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:you_movies/utils/constants/colors.dart';
import 'package:you_movies/views/show_movie_screen/widgets/play_button.dart';

class ShowMovieScreen extends StatelessWidget {
  final String title;
  final String thumbnail;
  final String description;

  const ShowMovieScreen({
    super.key,
    required this.title,
    required this.thumbnail,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Text(
          'YouMovies',
          style: GoogleFonts.montserrat(
            color: kRed,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail Image
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                thumbnail,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Placeholder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // Movie Title, Description, and Play Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  PlayButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
