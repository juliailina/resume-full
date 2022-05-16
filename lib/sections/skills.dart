import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/textbox_widget.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: kForegroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedHeading(
            text: 'My skills',
            style: kHeadingStyle.copyWith(color: kYellowColor),
          ),
          const SizedBox(height: 40),
          TextBox(
            text:
                'So far I have learnt about: Flutter & Dart basics, State Management, Animations, Navigation, Packages, Custom Painter, Firebase, APIs, OOP principles, SOLID, DRY-code, Command Line Basics, Git, Kotlin Basics, UX/UI principles in Digital Product Design using Figma and more. Constantly adding to the list.\n\nAreas of future improvement: Dart Async, State Management (BLoC, Redux, Cubit etc.), SQL, Swift Basics, deepen software architecture knowledge (clean code principles, OOP design patterns), Testing and any other skills required for the job.\n\nSoft skills: good communication, problem-solving, self-learning and collaboration skills. High level of empathy and helpfulness. I consider myself a creative and open-minded person who easily adapts to new environments and technologies.\n\nLanguages: fluent levels of English (C1), Spanish (C1) and Russian (native). Good understanding of Ukrainian (lack spoken and written practice). Limited working proficiency in German (B1) and elementary in Czech (A2).',
          ),
        ],
      ),
    );
  }
}
