import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:solmate/src/features/account/profile/create_profile_page.dart';
import 'package:solmate/src/widgets/buttons/primary_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  static MaterialPageRoute<void> get route =>
      MaterialPageRoute(builder: (context) => const SignupPage());
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up Now",
                  style: TextStyle(
                      fontSize: 32, height: 2, fontWeight: FontWeight.bold),
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    _formLabel("Name"),
                    TextFormField(
                      decoration: _fieldDecoration("Enter Your Name"),
                    ),
                    _formLabel("Phone Number"),
                    TextFormField(
                      decoration: _fieldDecoration("Enter Phone Number"),
                    ),
                    _formLabel("Email Address"),
                    TextFormField(
                      decoration: _fieldDecoration("Enter Email Address"),
                    ),
                    _formLabel("Password"),
                    TextFormField(
                      decoration: _fieldDecoration("Enter Your Password"),
                    ),
                    _formLabel("Confirm Password"),
                    TextFormField(
                      decoration: _fieldDecoration("Enter Password again"),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (val) {},
                            checkColor: Colors.deepPurple,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "I agree with ",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                              children: [
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                    text: 'Terms & Conditions',
                                    style: const TextStyle(
                                        color: Colors.deepPurple))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    PrimaryButton(
                      buttonText: 'Sign Up',
                      onPressed: () {
                        Navigator.of(context).push(CreateProfilePage.route);
                      },
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: 'Sign In',
                                style:
                                    const TextStyle(color: Colors.deepPurple))
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _formLabel(String labelText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8),
      child: Text(
        labelText,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }

  InputDecoration _fieldDecoration(String placeHolder) {
    return InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        labelText: placeHolder,
        floatingLabelBehavior: FloatingLabelBehavior.never);
  }
}
