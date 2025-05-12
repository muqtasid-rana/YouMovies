import 'package:flutter/material.dart';
import 'app_sizes.dart';

class AppPaddings {
  // Vertical paddings
  static EdgeInsets vertical1 = EdgeInsets.symmetric(vertical: AppSizes.hp(1));
  static EdgeInsets vertical2 = EdgeInsets.symmetric(vertical: AppSizes.hp(2));
  static EdgeInsets vertical3 = EdgeInsets.symmetric(vertical: AppSizes.hp(3));

  // Horizontal paddings
  static EdgeInsets horizontal1 =
      EdgeInsets.symmetric(horizontal: AppSizes.wp(1));
  static EdgeInsets horizontal2 =
      EdgeInsets.symmetric(horizontal: AppSizes.wp(2));
  static EdgeInsets horizontal3 =
      EdgeInsets.symmetric(horizontal: AppSizes.wp(3));

  // All-side paddings
  static EdgeInsets all1 = EdgeInsets.all(AppSizes.hp(1));
  static EdgeInsets all2 = EdgeInsets.all(AppSizes.hp(2));
  static EdgeInsets all3 = EdgeInsets.all(AppSizes.hp(3));

  // Custom combinations
  static EdgeInsets horizontal2Vertical1 = EdgeInsets.symmetric(
    horizontal: AppSizes.wp(2),
    vertical: AppSizes.hp(1),
  );
}
