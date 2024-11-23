import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  static MaterialPageRoute<void> get route =>
      MaterialPageRoute(builder: (context) => const SignupPage());
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Sign Up"),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
