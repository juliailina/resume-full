import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/section_widget.dart';
import 'package:resume/widgets/social_cv_widget.dart';
import 'package:resume/widgets/custom_textbox.dart';

class MyStorySection extends StatelessWidget {
  const MyStorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: CustomColors.backgroundColor,
      title: CustomTextStrings.storyTitle,
      titleColor: CustomColors.orange,
      description: CustomTextStrings.storyDescription,
      topWidget: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.largeAvatarRadius,
            child: Image.asset(
              Constants.largeAvatarImage,
            ),
          ),
          const SizedBox(
            height: Constants.largeSpacer,
          ),
        ],
      ),
      bottomWidget: Column(
        children: const [
          SocialCVWidget(),
          SizedBox(
            height: Constants.largeSpacer,
          ),
          CustomTextbox(
            text: CustomTextStrings.footer,
          ),
        ],
      ),
    );
  }
}
