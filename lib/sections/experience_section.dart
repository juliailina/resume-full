import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/custom_expansion_tile.dart';
import 'package:resume/widgets/section_widget.dart';
import 'package:resume/text_strings.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SectionWidget(
      backgroundColor: CustomColors.backgroundColor,
      title: CustomTextStrings.experienceTitle,
      titleColor: CustomColors.blue,
      bottomWidget: SizedBox(
        width: size.width * Constants.screenWidthFactor,
        child: Column(
          children: const [
            CustomExpansionTile(
              title: CustomTextStrings.experienceTitleBasetis,
              description: CustomTextStrings.basetisProjectRiverTitle +
                  Constants.lineBreakDouble +
                  CustomTextStrings.basetisProjectRiverDescription +
                  Constants.lineBreakTriple +
                  CustomTextStrings.basetisProjectMerceTitle +
                  Constants.lineBreakDouble +
                  CustomTextStrings.basetisProjectMerceDescription,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.experienceTitleStartup,
              description: CustomTextStrings.experienceDescriptionStartup,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.experienceTitleSaba,
              description: CustomTextStrings.experienceDescriptionSaba,
            ),
          ],
        ),
      ),
    );
  }
}
