import 'package:flutter/material.dart';
import 'package:you_movies/model/movies_model.dart';
import 'package:you_movies/utils/constants/colors.dart';
import 'package:you_movies/utils/constants/paddings.dart';
import 'package:you_movies/utils/constants/text_sizes.dart';
import 'package:you_movies/utils/routes/route_names.dart';
import 'package:you_movies/view_models/movies_view_model.dart';
import 'package:you_movies/views/home_screen/widgets/moviebox.dart';
import 'package:you_movies/widgets/custom_appbar.dart';
import 'package:you_movies/utils/constants/app_sizes.dart'; // Assuming you've imported this

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MoviesViewModel viewModel = MoviesViewModel();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        // This makes the entire body scrollable
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Popular Movies Section
              Text("Top Trending", style: AppTextStyles.heading()),
              _buildMovieSection(
                  viewModel.fetchPopularMovies(), "Top Trending"),

              // English Movies Section
              Text("English Movies", style: AppTextStyles.heading()),
              _buildMovieSection(
                  viewModel.fetchEnglishMovies(), "English Movies"),

              // Hindi Movies Section
              Text("Hindi Movies", style: AppTextStyles.heading()),
              _buildMovieSection(viewModel.fetchHindiMovies(), "Hindi Movies"),

              // Crime Movies Section
              Text("Crime Movies", style: AppTextStyles.heading()),
              _buildMovieSection(viewModel.fetchCrimeMovies(), "Crime Movies"),

              // Comedy Movies Section
              Text("Comedy Movies", style: AppTextStyles.heading()),
              _buildMovieSection(
                  viewModel.fetchComedyMovies(), "Comedy Movies"),

              // Thriller Movies Section
              Text("Thriller Movies", style: AppTextStyles.heading()),
              _buildMovieSection(
                  viewModel.fetchThrillerMovies(), "Thriller Movies"),

              // Sci-Fi Movies Section
              Text("Sci-Fi Movies", style: AppTextStyles.heading()),
              _buildMovieSection(viewModel.fetchSciFiMovies(), "Sci-Fi Movies"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMovieSection(
      Future<List<MoviesModel>> moviesFuture, String sectionTitle) {
    return Padding(
      padding: AppPaddings.vertical2,
      child: FutureBuilder<List<MoviesModel>>(
        future: moviesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              height: 40,
              child: const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              )),
            );
          }

          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(
              child: Text(
                "Failed to load movies",
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          final movies = snapshot.data!;

          double listViewHeight = AppSizes.hp(40);

          return SizedBox(
            height: listViewHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.showmovie,
                          arguments: {
                            'title': movies[index].title,
                            'thumbnail': movies[index].thumbnailUrl,
                            'description': movies[index].description
                          });
                    },
                    child: Moviebox(movie: movies[index]));
              },
            ),
          );
        },
      ),
    );
  }
}
