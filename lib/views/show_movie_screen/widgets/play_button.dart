import 'package:flutter/material.dart';
import 'package:you_movies/utils/constants/app_sizes.dart';
import 'package:you_movies/utils/constants/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.sp(230),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: kRed,
          padding: EdgeInsets.symmetric(
              vertical: AppSizes.sp(20), horizontal: AppSizes.sp(20)),
        ),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            Text(
              "Play Now",
              style: TextStyle(
                color: Colors.black,
                fontSize: AppSizes.sp(18),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
