import 'package:flutter/material.dart';

import '/src/features/pages.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(SignupPage.route);
        },
        style: const ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
            backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)),
        child: const Center(
            child: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white, fontSize: 22),
        )),
      ),
    );
  }
}
