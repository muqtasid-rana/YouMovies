import 'package:flutter/material.dart';
import 'package:you_movies/model/movies_model.dart';
import 'package:you_movies/utils/constants/app_sizes.dart';
import 'package:you_movies/utils/constants/paddings.dart';
import 'package:you_movies/utils/constants/text_sizes.dart';

class Moviebox extends StatelessWidget {
  final MoviesModel movie;

  const Moviebox({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppSizes.hp(22),
          width: AppSizes.wp(80),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              movie.thumbnailUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: AppPaddings.vertical2,
          child: SizedBox(
            width: AppSizes.wp(80),
            child: Text(
              movie.title,
              style: AppTextStyles.subheading(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
