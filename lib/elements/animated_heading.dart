import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedHeading extends StatelessWidget {
  const AnimatedHeading({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * .7,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textStyle: style,
            textAlign: TextAlign.center,
            speed: const Duration(milliseconds: 150),
            cursor: '_',
          ),
        ],
        isRepeatingAnimation: false,
      ),
    );
  }
}
