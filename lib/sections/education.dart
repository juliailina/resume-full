import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/textbox_widget.dart';

class Education extends StatelessWidget {
  const Education({
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
            text: 'Education',
            style: kHeadingStyle.copyWith(color: kGreenColor),
          ),
          const SizedBox(height: 40),
          TextBox(
            text:
                '- CS50\'s Introduction to Computer Science | Harvard University | currently enrolled, study in free time\nFlutter Course for Beginners | freeCodeCamp | Mar 2022\n- Command Line Basics | Hexlet | Jan 2022\n- Introduction to Git | Hexlet | Jan 2022\n- The Complete Flutter Development Bootcamp with Dart | London App Brewery | Jan 2022\n- UX/UI: Digital Product Design with Figma | Bang Bang Education | Aug 2021\n- Kotlin Basics | JetBrains | Mar 2021\n\nExecutive Master in Digital Marketing & E-Commerce | Universitat Politècnica de Catalunya | 2019 - 2020\nBachelor of Tourism and Hospitality Management | Universidad de La Laguna, Tenerife | 2013 - 2017 + Certifications in Amadeus introduction, SAP introduction, Revenue Management basic level\nSixth Form College (ICT, Maths, Business, Psychology) | Wingate School, Tenerife | 2011 - 2013',
          ),
        ],
      ),
    );
  }
}
