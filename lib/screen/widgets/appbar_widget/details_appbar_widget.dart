import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

// FOR TOOLBAR CODE
AppBar detailsAppBarWidget() {
  return AppBar(
      //FOR UPPER TAB
      backgroundColor: Colors.black12,
      elevation: 0.0,
      centerTitle: true,
  
      title: const Text("Rebook",
          style: TextStyle(
              color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
          color: Colors.red,
        ),
      ]);
}
