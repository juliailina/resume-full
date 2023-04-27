import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/styles.dart';
import 'package:resume/widgets/animated_heading.dart';
import 'package:resume/widgets/custom_textbox.dart';

class SectionWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final TextStyle? titleStyle;
  final Color titleColor;
  final String? description;
  final Widget? topWidget;
  final Widget? bottomWidget;

  const SectionWidget({
    Key? key,
    required this.backgroundColor,
    required this.title,
    this.titleStyle,
    required this.titleColor,
    this.description,
    this.topWidget,
    this.bottomWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Constants.xXLargeSpacer,
      ),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          topWidget ?? Container(),
          AnimatedHeading(
            text: title,
            style: titleStyle?.copyWith(color: titleColor) ??
                CustomTextStyles.heading.copyWith(
                  color: titleColor,
                ),
          ),
          const SizedBox(
            height: Constants.largeSpacer,
          ),
          CustomTextbox(
            text: description ?? '',
          ),
          bottomWidget ?? Container(),
        ],
      ),
    );
  }
}
