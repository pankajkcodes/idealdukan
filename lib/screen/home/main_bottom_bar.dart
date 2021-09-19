
import 'package:flutter/material.dart';

import 'package:idealdukan/utils/app_colors.dart';

import 'home_screen.dart';

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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Favourite',
      style: optionStyle,
    ),
    Text(
      'Index 3: Person',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // FOR SIGN OUT
      floatingActionButton: FloatingActionButton( child: const Icon(Icons.logout),
          backgroundColor: Colors.green,onPressed: () async {
        // await _auth.signOut();
        // Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder: (context) => const MobileOtpAuth()));
      }),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: AppColors.baseBlack10Color,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.baseBlackColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
