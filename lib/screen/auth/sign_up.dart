import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
//   FOR SHOW CURRENT SCREEN STATE
  // MobileVerificationState currentState =
  //     MobileVerificationState.showMobileNumberState;

//   TAKING TEXT FIELD VALUE
  final phoneController = TextEditingController(text: "+91");
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: TextFormField(
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Not Empty';
                }
                return null;
              },
              obscureText: false,
              decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: "Enter Phone Number",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Not Empty';
                }
                return null;
              },
              obscureText: false,
              decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: "Enter Full Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.black,
                height: 45,
                elevation: 0,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('Processing Data')),
                  //   );
                  // }
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                  Navigator.pop(context);
              },
              child: const Text("Already have an account ? SignIn"))
        ],
      ),
    ));
 
  }

  
  // THIS WIDGET FOR SIGNUP FORM
  signFormWidget(){
        Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: TextFormField(
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Not Empty';
                }
                return null;
              },
              obscureText: false,
              decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: "Enter Phone Number",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Not Empty';
                }
                return null;
              },
              obscureText: false,
              decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: "Enter Full Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.black,
                height: 45,
                elevation: 0,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('Processing Data')),
                  //   );
                  // }
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text("Already have an account ? SignIn"))
        ],
      ),
  );

  }


   // THIS WIDGET FOR MOBILE OTP ENTERING
  getMobileOtpWidget(context) {
    return Form(
      // key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: TextFormField(
              controller: otpController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Not Empty';
                }
                return null;
              },
              obscureText: false,
              decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: "Enter OTP",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.black,
                height: 45,
                elevation: 0,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                onPressed: () async {
                  // if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   PhoneAuthCredential phoneAuthCredential =
                  //       PhoneAuthProvider.credential(
                  //           verificationId: verificationId,
                  //           smsCode: otpController.text);

                  //   signInWithPhoneAuthCredential(phoneAuthCredential);
                  // }
                },
                child: const Text(
                  "VERIFY",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
