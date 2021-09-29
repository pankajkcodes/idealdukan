import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:idealdukan/utils/app_colors.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        ],
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(bottom: 10),
          color: Colors.white60,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        "https://img1.hscicdn.com/image/upload/f_auto,t_gn_f_345/lsci/db/PICTURES/CMS/319900/319946.png"),
                  ),
                ),
                Text(
                  "MS Dhoni",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lives In India",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          color: Colors.white,
          child: Column(
            children: [
              ListTileWidget(
                leadingText: 'Full Name',
                trailingText: 'Ms Dhoni',
              ),
              const Divider(),
              ListTileWidget(
                leadingText: "Phone Number",
                trailingText: "+917865473823",
              ),
              const Divider(),
              ListTileWidget(
                leadingText: "Address",
                trailingText: "India",
              ),
              const Divider(),
              ListTileWidget(
                leadingText: "Payment",
                trailingText: "6011\t****\t****\t1117",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              WishListTileWidget(
                leadingText: 'WishList',
                trailingText: '7',
              ),
              WishListTileWidget(
                leadingText: 'My Order',
                trailingText: '4',
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: MaterialButton(
            color: AppColors.btnDangerColor,
            height: 45,
            elevation: 0,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            onPressed: () {
              // await _auth.signOut();
              //           Navigator.pushReplacement(context,
              //               MaterialPageRoute(builder: (context) => const MobileOtpAuth()));
            },
            child: const Text(
              "Log Out",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

// CODE FOR WISH LIST TILE WIDGET
// ignore: must_be_immutable
class WishListTileWidget extends StatelessWidget {
  late String leadingText;
  late String trailingText;

  WishListTileWidget({
    Key? key,
    required this.leadingText,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      tileColor: AppColors.baseWhiteColor,
      leading: Text(
        leadingText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        spacing: 5,
        children: [
          Text(
            trailingText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          ),
        ],
      ),
    );
  }
}

// CODE FOR LISTTILE WIDGET
// ignore: must_be_immutable
class ListTileWidget extends StatelessWidget {
  late String leadingText;
  late String trailingText;

  ListTileWidget({
    Key? key,
    required this.leadingText,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingText,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        trailingText,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  //

}
