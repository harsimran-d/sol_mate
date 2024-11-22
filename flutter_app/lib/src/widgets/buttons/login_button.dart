import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: const ButtonStyle(
            side: WidgetStatePropertyAll(BorderSide(color: Colors.red)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            )),
        child: const Center(
            child: Text(
          'Login',
          style: TextStyle(color: Colors.red, fontSize: 22),
        )),
      ),
    );
  }
}
