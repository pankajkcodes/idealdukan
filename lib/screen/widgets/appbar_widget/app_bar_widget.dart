import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

// FOR TOOLBAR CODE
AppBar buildAppBarWidget() {
  return AppBar(
    //FOR UPPER TAB
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
  
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
        color: AppColors.baseBlackColor,
      ),
    ],
    title: Column(
      children: const [
        Text("Ideal Dukan",
            style: TextStyle(
                color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
      ],
    
    ),
  );
}
