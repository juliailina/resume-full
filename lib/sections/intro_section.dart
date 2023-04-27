import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/section_widget.dart';
import 'package:resume/widgets/social_cv_widget.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: CustomColors.backgroundColor,
      title: CustomTextStrings.introTitle,
      titleStyle: CustomTextStyles.subheading,
      titleColor: CustomColors.orange,
      description: CustomTextStrings.introDescription,
      topWidget: Column(
        children: [
          CircleAvatar(
            backgroundColor: CustomColors.transparent,
            radius: Constants.smallAvatarRadius,
            child: Image.asset(
              Constants.smallAvatarImage,
            ),
          ),
          const SizedBox(
            height: Constants.largeSpacer,
          ),
          const Text(
            CustomTextStrings.name,
            textAlign: TextAlign.center,
            style: CustomTextStyles.heading,
          ),
          const SizedBox(
            height: Constants.mediumSpacer,
          ),
        ],
      ),
      bottomWidget: const SocialCVWidget(),
    );
  }
}
