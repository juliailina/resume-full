import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/custom_expansion_tile.dart';
import 'package:resume/widgets/section_widget.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SectionWidget(
      backgroundColor: CustomColors.foregroundColor,
      title: CustomTextStrings.educationTitle,
      titleColor: CustomColors.green,
      bottomWidget: SizedBox(
        width: size.width * Constants.screenWidthFactor,
        child: Column(
          children: const [
            CustomExpansionTile(
              title: CustomTextStrings.educationCoursesTitle,
              description: CustomTextStrings.educationCoursesDescription,
              expandedColor: CustomColors.backgroundColor,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.educationMasterTitle,
              description: CustomTextStrings.educationMasterDescription,
              expandedColor: CustomColors.backgroundColor,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.educationBachelorTitle,
              description: CustomTextStrings.educationBachelorDescription,
              expandedColor: CustomColors.backgroundColor,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.educationCollegeTitle,
              description: CustomTextStrings.educationCollegeDescription,
              expandedColor: CustomColors.backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
