import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';
import 'package:resume/ui_models/social_button_type_enum.dart';

class SocialButton extends StatefulWidget {
  final SocialButtonType socialButtonType;

  const SocialButton({
    Key? key,
    required this.socialButtonType,
  }) : super(key: key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHovering = false;

  Color _setButtonColor() {
    if (isHovering) {
      return CustomColors.white;
    }
    return CustomColors.beige;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.xSmallSpacer,
      ),
      child: InkWell(
        onHover: (hovering) {
          setState(() => isHovering = hovering);
        },
        onTap: mapSocialButtonTypesToLinkOpeners(widget.socialButtonType),
        child: Image.asset(
          mapSocialButtonTypesToIconImages(widget.socialButtonType),
          color: _setButtonColor(),
          height: mapSocialButtonTypesToIconHeights(widget.socialButtonType),
        ),
      ),
    );
  }
}
