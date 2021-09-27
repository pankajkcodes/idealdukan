import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

// FOR TOOLBAR CODE
AppBar profileAppBarWidget() {
  return AppBar(
    elevation: 0.70,
    centerTitle: true,
    backgroundColor: AppColors.baseWhiteColor,
    title: const Text(
      "Account",
      style: TextStyle(
        color: AppColors.baseBlackColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.mode_edit_sharp),
        color: AppColors.baseBlackColor,
      ),
      // IconButton(
      //   onPressed: () {},
      //   icon: const Icon(Icons.light_mode),
      //   color: AppColors.baseBlackColor,
      // )
    ],
    shadowColor: AppColors.baseGrey10Color,
  );
}
