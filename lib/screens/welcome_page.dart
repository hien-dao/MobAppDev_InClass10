import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to the Fun Signup App!'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Ready to get rich?',
                  textStyle: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupPage()),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}