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
          children: [
            AnimatedTextKit(
              displayFullTextOnTap: true,
            
              isRepeatingAnimation: false,
              animatedTexts: [
                TyperAnimatedText(
                  'Shivam Jaiswal!  ',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 28,
                  ),
                  speed: Duration(milliseconds: 100),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
