import 'package:flutter/material.dart';
import 'package:idealdukan/screen/fragments/cart_fragment.dart';
import 'package:idealdukan/screen/fragments/cat_fragment.dart';
import 'package:idealdukan/screen/fragments/profile_fragment.dart';
import 'package:idealdukan/screen/fragments/home_fragment.dart';
import 'package:idealdukan/styles/home_screen_style.dart';

import 'package:idealdukan/utils/app_colors.dart';

/// This is the stateful widget that the main application instantiates.
class MainBottomBar extends StatefulWidget {
  const MainBottomBar({Key? key}) : super(key: key);

  @override
  State<MainBottomBar> createState() => _MainScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainScreenState extends State<MainBottomBar> {
  // final _auth = FirebaseAuth.instance;

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    CategoryFragment(),
    CartFrgamnet(),
    ProfileFragment()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: true,
        unselectedItemColor: AppColors.baseBlack10Color,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.basePrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

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
        onPressed: () {
          
        },
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
