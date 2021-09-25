import 'package:flutter/material.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // FOR SIGN OUT
        FloatingActionButton(
            child: const Icon(Icons.logout),
            backgroundColor: Colors.green,
            onPressed: () async {
              // await _auth.signOut();
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => const MobileOtpAuth()));
            }),
      ],
    );
  }
}
