import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidgetExample extends StatefulWidget {
  const AnimatedTextWidgetExample({super.key});

  @override
  State<AnimatedTextWidgetExample> createState() =>
      _AnimatedTextWidgetExampleState();
}

class _AnimatedTextWidgetExampleState extends State<AnimatedTextWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              displayFullTextOnTap: true,
              isRepeatingAnimation: false,
              repeatForever: false,
              pause: const Duration(milliseconds: 4000),
              animatedTexts: [
                TyperAnimatedText(
                  'Shivam Jaiswal! ',
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 28,
                  ),
                  speed: const Duration(milliseconds: 30),
                )
              ],
            ),
            AnimatedTextKit(
                animatedTexts: [FlickerAnimatedText('You are a nigga!!')])
          ],
        ),
      ),
    );
  }
}
