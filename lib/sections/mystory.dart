import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/download_button.dart';
import '../elements/social_icon.dart';
import '../elements/textbox_widget.dart';

class MyStory extends StatelessWidget {
  const MyStory({
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
            text: 'My story',
            style: kHeadingStyle.copyWith(color: kOrangeColor),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: size.width * .7,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 120,
            child: Image.asset('assets/images/mystory.png'),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: size.width * .7,
            child: const Text(
              'I’ve always had a passion for the digital world. In my childhood I used to love ICT classes that we (luckily) had since primary school, where we learned algorithms and coded in TurboPascal and made simple HTML+CSS web projects. When I was a teenager my family moved to Tenerife, Spain, where I went to a british college and chose ICT as one of my majors. We built databases, made simple websites and even created “apps” in Macromedia Flash 8.\n\nHowever, after finishing college, the logical career choice in Canary Islands with my ease with languages and love for working with people was to get a degree and a job in tourism and hospitality management. While working in hotels, I still felt attracted to digital and was wondering how I can transition into a career in IT.\n\nSo I moved to Barcelona and pursued a master’s degree in digital marketing, where I learnt more about the mobile industry, met developers on networking events and realised that I want to reconnect with programming again, but on a professional level. While I was studying, I worked for the marketing department in Saba, and at that time they were launching a mobile app for parking. Seeing this process from the inside, reading through the app design and functionality documents, I found myself very interested in mobile apps.\n\nWhen the lockdown happened due to the pandemic, I started digging deeper into mobile development in my free time. I came across JetBrains Academy and completed their Kotlin introduction course. It felt so intuitive and interesting that I realised: with more studying and practice I can switch my career to become a developer myself.\n\nAnd then I discovered Flutter+Dart and fell in love :-) I was pleasantly surprised with the flutter community, how friendly it is and how quickly it’s growing. With Google support and such powerful yet user-friendly multi platform technology, I believe it is a very promising niche. With flutter I feel capable of working on real complex projects and deepening my programming skills further.',
              style: kBodyTextStyle,
            ),
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
          const SizedBox(height: 40),
          TextBox(text: '© 2022 All rights reserved.')
        ],
      ),
    );
  }
}
