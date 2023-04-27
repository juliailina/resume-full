import 'package:flutter/material.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/section_widget.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionWidget(
      backgroundColor: CustomColors.foregroundColor,
      title: CustomTextStrings.skillsTitle,
      titleColor: CustomColors.yellow,
      description: CustomTextStrings.skillsDescription,
    );
  }
}
