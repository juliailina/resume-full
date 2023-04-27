import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/ui_models/social_button_type_enum.dart';
import 'package:resume/widgets/social_button.dart';
import 'package:resume/widgets/download_button.dart';

class SocialCVWidget extends StatelessWidget {
  const SocialCVWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            Constants.largeSpacer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialButton(
                socialButtonType: SocialButtonType.gitHub,
              ),
              SocialButton(
                socialButtonType: SocialButtonType.linkedIn,
              ),
              SocialButton(
                socialButtonType: SocialButtonType.telegram,
              ),
            ],
          ),
        ),
        const DownloadButton(),
      ],
    );
  }
}
