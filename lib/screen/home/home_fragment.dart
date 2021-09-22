import 'package:flutter/material.dart';
import 'package:idealdukan/styles/home_screen_style.dart';
import 'package:idealdukan/utils/app_colors.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  // FOR TOOLBAR CODE
  AppBar buildAppBar() {
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
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.light_mode),
          color: AppColors.baseBlackColor,
        )
      ],
      title: Column(
        children: const [
          Text(
            "Ideal Dukan",
            style: HomeScreenStyles.appBarUpperTitleStyle,
          ),
          Text(
            "Shopping",
            style: HomeScreenStyles.appBarBottomTitleStyle,
          )
        ],
        //FOR ADVERTISEMENT CODE
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Center(child: Text("Home")),
    );
  }
}
