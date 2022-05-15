import 'package:flutter/material.dart';
import 'package:resume/elements/social_icon.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/project_widget.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: kBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedHeading(
            text: 'My projects',
            style: kHeadingStyle.copyWith(color: kOrangeColor),
          ),
          const SizedBox(height: 40),
          ProjectWidget(
            projectText:
                'This CV website is fully made with Flutter. It consists of sections (custom made classes with containers) and elements such as animated headings, buttons, icons etc. It depends on several packages from pub.dev and is available on my GitHub page.',
            shots: [
              Image.asset(
                'assets/images/cvwebsite.png',
                width: size.width * .5,
              ),
            ],
            buttons: const [
              SocialIcon(
                press: htmlOpenGitHub,
                icon: 'githubproject',
                iconSize: 23,
                padding: 1,
              ),
            ],
          ),
          const SizedBox(height: 50),
          ProjectWidget(
            projectText:
                'My first app soon to be published on Google Play and App Store is Destresso. An app that I created to help my well-being on a daily basis. It contains various screens, each with different functionality. For instance, I created a pomodoro timer, animation for breathing, player for meditations and other functions. The source code is not open on GitHub, but I can show it to my Employer or colleagues on demand.',
            shots: [
              Image.asset(
                'assets/images/destresso.gif',
                width: size.height * .3,
              ),
            ],
            // buttons: const [
            //   SocialIcon(
            //     press: htmlOpenGooglePlay,
            //     icon: 'googleplay',
            //     iconSize: 18,
            //     padding: 1,
            //   ),
            //   SizedBox(width: 20),
            //   SocialIcon(
            //     press: htmlOpenAppStore,
            //     icon: 'appstore',
            //     iconSize: 18,
            //     padding: 1,
            //   ),
            // ],
          ),
          const SizedBox(height: 50),
          ProjectWidget(
            projectText:
                'There are various mockup apps that I developed while taking different Flutter courses, like: a weather app (w/ weather API), a simple chat app (w/ Firebase), to-do list (w/ Provider state management), BMI calculator, Bitcoin ticker (w/ coin API) and more.',
            shots: [
              Image.asset(
                'assets/images/mockups.gif',
                width: size.height * .3,
              ),
            ],
            buttons: const [
              SocialIcon(
                press: htmlOpenGitHub,
                icon: 'githubproject',
                iconSize: 23,
                padding: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
