import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDraweWidget extends StatelessWidget {
  const HomeDraweWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/236x/02/fd/5c/02fd5cc15841730936c0c5c555dae3a9.jpg"),
              ),
              accountName: Text("Ideal Dukan"),
              accountEmail: Text("support@idealdukan.com"),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.black),
              title: Text(
                "Items",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.shopping_cart, color: Colors.black),
              title: Text(
                "Orders",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info_circle, color: Colors.black),
              title: Text(
                "About",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.cursor_rays, color: Colors.black),
              title: Text(
                "Privacy",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined, color: Colors.black),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
