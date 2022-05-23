import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/textbox_widget.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: kBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedHeading(
            text: 'IT work experience',
            style: kHeadingStyle.copyWith(color: kBlueColor),
          ),
          const SizedBox(height: 40),
          TextBox(
            text:
                'Flutter Intern | Startup Dev Team (NDA), Barcelona | Jan 2022 - Feb 2022\nBuilding custom interface elements, transferring Figma designs into code, using Git commands\n\nDigital Marketing Intern | Saba Group, Barcelona | Nov 2019 - Apr 2020\nMember of marketing department w/ agile principles & scrum methodology (daily standups, sprints), responsible for website info updates, email campaigns, translation for the app, Google My Business',
          ),
        ],
      ),
    );
  }
}
