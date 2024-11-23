import 'package:flutter/material.dart';
import 'package:solmate/src/widgets/buttons/buttons.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          text: 'Sol',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                                text: 'mate',
                                style: TextStyle(color: Colors.red))
                          ]),
                    ),
                  ),
                ),
                const SignupButton(),
                const SizedBox(
                  height: 8,
                ),
                const SigninButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
