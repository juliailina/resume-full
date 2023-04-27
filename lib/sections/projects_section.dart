import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/ui_models/social_button_type_enum.dart';
import 'package:resume/widgets/section_widget.dart';
import 'package:resume/widgets/social_button.dart';
import 'package:resume/text_strings.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SectionWidget(
      backgroundColor: CustomColors.backgroundColor,
      title: CustomTextStrings.projectsTitle,
      titleColor: CustomColors.orange,
      bottomWidget: Column(
        children: [
          ProjectWidget(
            projectText: CustomTextStrings.projectsDescriptionWebsite,
            shots: [
              Image.asset(
                Constants.webCVImage,
                width: size.width * Constants.webImageWidthFactor,
              ),
            ],
            buttons: const [
              SocialButton(
                socialButtonType: SocialButtonType.gitHubProject,
              ),
            ],
          ),
          // TODO: uncomment when the app is launched, add river.gif to assets
          // ProjectWidget(
          //   projectText: CustomTextStrings.projectsDescriptionRiver,
          //   shots: [
          //     Image.asset(
          //       Constants.appRiverImage,
          //       width: size.height * Constants.appImageHeightFactor,
          //     ),
          //   ],
          // ),
          ProjectWidget(
            projectText: CustomTextStrings.projectsDescriptionMerce,
            shots: [
              Image.asset(
                Constants.appMerceImage,
                width: size.height * Constants.appImageHeightFactor,
              ),
            ],
          ),
          ProjectWidget(
            projectText: CustomTextStrings.projectsDescriptionDestresso,
            shots: [
              Image.asset(
                Constants.appDestressoImage,
                width: size.height * Constants.appImageHeightFactor,
              ),
            ],
            // TODO: uncomment and add links when the project is uploaded
            // buttons: const [
            //   SocialButton(
            //     socialButtonType: SocialButtonType.googlePlay,
            //   ),
            //   SizedBox(
            //      width: Constants.smallSpacerWidth,
            //   ),
            //   SocialButton(
            //     socialButtonType: SocialButtonType.appStore,
            //   ),
            // ],
          ),
          ProjectWidget(
            projectText: CustomTextStrings.projectsDescriptionMockups,
            shots: [
              Image.asset(
                Constants.appMockupsImage,
                width: size.height * Constants.appImageHeightFactor,
              ),
            ],
            buttons: const [
              SocialButton(
                socialButtonType: SocialButtonType.gitHubProject,
              )
            ],
          ),
        ],
      ),
    );
  }
}
