import 'package:flutter/material.dart';

import '/src/features/pages.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {
          Navigator.of(context).push(SigninPage.route);
        },
        style: const ButtonStyle(
            side: WidgetStatePropertyAll(BorderSide(color: Colors.red)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            )),
        child: const Center(
            child: Text(
          'Sign In',
          style: TextStyle(color: Colors.red, fontSize: 22),
        )),
      ),
    );
  }
}
