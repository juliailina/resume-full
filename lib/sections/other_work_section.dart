import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/custom_expansion_tile.dart';
import 'package:resume/widgets/section_widget.dart';

class OtherWorkSection extends StatelessWidget {
  const OtherWorkSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SectionWidget(
      backgroundColor: CustomColors.foregroundColor,
      title: CustomTextStrings.otherTitle,
      titleColor: CustomColors.purple,
      bottomWidget: SizedBox(
        width: size.width * Constants.screenWidthFactor,
        child: Column(
          children: const [
            CustomExpansionTile(
              title: CustomTextStrings.otherTitleAdministrator,
              description: CustomTextStrings.otherDescriptionAdministrator,
              expandedColor: CustomColors.backgroundColor,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.otherTitleFrontOffice,
              description: CustomTextStrings.otherDescriptionFrontOffice,
              expandedColor: CustomColors.backgroundColor,
            ),
            CustomExpansionTile(
              title: CustomTextStrings.otherTitleRealEstate,
              description: CustomTextStrings.otherDescriptionRealEstate,
              expandedColor: CustomColors.backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
