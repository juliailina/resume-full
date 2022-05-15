import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/download_button.dart';
import '../elements/social_icon.dart';
import '../elements/textbox_widget.dart';

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 75,
            child: Image.asset('assets/images/avatar.png'),
          ),
          const SizedBox(height: 40),
          const Text(
            'Yulia Ilina',
            textAlign: TextAlign.center,
            style: kHeadingStyle,
          ),
          const SizedBox(height: 30),
          AnimatedHeading(
            text: 'Flutter developer based in Barcelona',
            style: kSubheadingStyle.copyWith(color: kOrangeColor),
          ),
          const SizedBox(height: 40),
          TextBox(
            text:
                'Currently combining programming studies with mobile flutter projects. Looking for a remote/hybrid Junior developer position in a team of flutter developers, whom I can learn from and be useful to. I\'m ready to deep dive into work in development, improve my skills and gain experience.\n\nPassionate about digital, tech, travelling, discovering cultures (I\'m a spanish resident and british college alumni) & languages: I used to work in 5 languages in my hotel management and digital marketing past. Want to constantly improve personally and professionally and make a positive contribution to the community.',
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialIcon(
                  press: htmlOpenGitHub,
                  icon: 'github',
                ),
                SocialIcon(
                  press: htmlOpenLinkedIn,
                  icon: 'linkedin',
                ),
                SocialIcon(
                  press: htmlOpenTelegram,
                  icon: 'telegram',
                ),
              ],
            ),
          ),
          const DownloadButton(),
        ],
      ),
    );
  }
}
