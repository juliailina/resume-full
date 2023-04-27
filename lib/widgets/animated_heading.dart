import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class AnimatedHeading extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AnimatedHeading({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * Constants.screenWidthFactor,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textStyle: style,
            textAlign: TextAlign.center,
            speed: const Duration(
              milliseconds: Constants.animatedTextDuration,
            ),
            cursor: Constants.animatedTextCursor,
          ),
        ],
        isRepeatingAnimation: false,
      ),
    );
  }
}
