import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:idealdukan/screen/auth/sign_up.dart';
import 'package:idealdukan/screen/home/main_bottom_bar.dart';

//FOR CHANGING SCREEN MOBILE NUMBER TO OTP
enum MobileVerificationState { showMobileNumberState, showMobileOtpState }

// THIS KEY FOR VALIDATING THE FORM
final _formKey = GlobalKey<FormState>();
// FOR CHANGING SCREENS KEY
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

class OtpAuthentication extends StatefulWidget {
  const OtpAuthentication({Key? key}) : super(key: key);

  @override
  State<OtpAuthentication> createState() => _OtpAuthenticationState();
}

class _OtpAuthenticationState extends State<OtpAuthentication> {
//   FOR SHOW CURRENT SCREEN STATE
  MobileVerificationState currentState =
      MobileVerificationState.showMobileNumberState;

//   TAKING TEXT FIELD VALUE
  final phoneController = TextEditingController(text: "+91");
  final otpController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: showLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVerificationState.showMobileNumberState
                  ? getMobileNumberWidget(context)
                  : getMobileOtpWidget(context),
          padding: const EdgeInsets.all(16),
        ));
  }

  // THIS METHOD FOR MOBILE OTP SENDING AND AUTHENTICATING
  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainBottomBar()));
      }
    } on FirebaseAuthException {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState!
          // ignore: deprecated_member_use
          .showSnackBar(const SnackBar(content: Text("Wrong OTP")));
    }
  }

  // THIS WIDGET FOR MOBILE NUMBER ENTERING
  getMobileNumberWidget(context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                  hintText: "  Enter Phone Number",
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
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.

                    setState(() {
                      showLoading = true;
                    });

                    await _auth.verifyPhoneNumber(
                      phoneNumber: phoneController.text,
                      verificationCompleted: (phoneAuthCredential) async {
                        setState(() {
                          showLoading = false;
                        });
                        //signInWithPhoneAuthCredential(phoneAuthCredential);
                      },
                      verificationFailed: (verificationFailed) async {
                        setState(() {
                          showLoading = false;
                        });
                        // ignore: deprecated_member_use
                        _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                            content: Text("verificationFailed.message")));
                      },
                      codeSent: (verificationId, resendingToken) async {
                        setState(() {
                          showLoading = false;
                          currentState =
                              MobileVerificationState.showMobileOtpState;
                          this.verificationId = verificationId;
                        });
                      },
                      codeAutoRetrievalTimeout: (verificationId) async {},
                    );
                  }
                },
                child: const Text(
                  "SEND OTP",
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpPage()));
              },
              child: const Text("Don't have an account ? SignUp"))
        ],
      ),
    );
  }

  // THIS WIDGET FOR MOBILE OTP ENTERING
  getMobileOtpWidget(context) {
    return Form(
      key: _formKey,
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
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    PhoneAuthCredential phoneAuthCredential =
                        PhoneAuthProvider.credential(
                            verificationId: verificationId,
                            smsCode: otpController.text);

                    signInWithPhoneAuthCredential(phoneAuthCredential);
                  }
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
