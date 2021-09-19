import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                  hintText: "Enter Mobile Number",
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
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text(
                  "LOG IN",
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
    ));
  }
}
